function New-PodeSession
{
    param (
        [scriptblock]
        $ScriptBlock,

        [int]
        $Port = 0,

        [string]
        $IP = $null,

        [int]
        $Interval = 0,

        [string]
        $ServerRoot,

        [ValidateSet('HTTP', 'HTTPS', 'SCRIPT', 'SERVICE', 'SMTP', 'TCP')]
        [string]
        $ServerType,

        [switch]
        $DisableLogging,

        [switch]
        $FileMonitor
    )

    # basic session object
    $session = New-Object -TypeName psobject |
        Add-Member -MemberType NoteProperty -Name ScriptBlock -Value $ScriptBlock -PassThru |
        Add-Member -MemberType NoteProperty -Name Routes -Value $null -PassThru |
        Add-Member -MemberType NoteProperty -Name Handlers -Value $null -PassThru |
        Add-Member -MemberType NoteProperty -Name Port -Value $Port -PassThru |
        Add-Member -MemberType NoteProperty -Name Interval -Value $Interval -PassThru |
        Add-Member -MemberType NoteProperty -Name IP -Value @{} -PassThru |
        Add-Member -MemberType NoteProperty -Name ViewEngine -Value $null -PassThru |
        Add-Member -MemberType NoteProperty -Name Web -Value @{} -PassThru |
        Add-Member -MemberType NoteProperty -Name Smtp -Value @{} -PassThru |
        Add-Member -MemberType NoteProperty -Name Tcp -Value @{} -PassThru |
        Add-Member -MemberType NoteProperty -Name Timers -Value @{} -PassThru |
        Add-Member -MemberType NoteProperty -Name RunspacePool -Value $null -PassThru |
        Add-Member -MemberType NoteProperty -Name Runspaces -Value $null -PassThru |
        Add-Member -MemberType NoteProperty -Name CancelToken -Value $null -PassThru |
        Add-Member -MemberType NoteProperty -Name DisableLogging -Value $DisableLogging -PassThru |
        Add-Member -MemberType NoteProperty -Name Loggers -Value @{} -PassThru |
        Add-Member -MemberType NoteProperty -Name RequestsToLog -Value $null -PassThru |
        Add-Member -MemberType NoteProperty -Name ServerRoot -Value $ServerRoot -PassThru |
        Add-Member -MemberType NoteProperty -Name ServerType -Value $ServerType -PassThru |
        Add-Member -MemberType NoteProperty -Name SharedState -Value @{} -PassThru |
        Add-Member -MemberType NoteProperty -Name Lockable -Value $null -PassThru |
        Add-Member -MemberType NoteProperty -Name FileMonitor -Value $FileMonitor -PassThru

    # set the IP address details
    $session.IP = @{
        'Address' = (Get-IPAddress $IP);
        'Name' = 'localhost'
    }

    if (!(Test-IPAddressLocal -IP $session.IP.Address)) {
        $session.IP.Name = $session.IP.Address
    }

    # session engine for rendering views
    $session.ViewEngine = @{
        'Extension' = 'html';
        'Script' = $null;
    }

    # routes for pages and api
    $session.Routes = @{
        'delete' = @{};
        'get' = @{};
        'head' = @{};
        'merge' = @{};
        'options' = @{};
        'patch' = @{};
        'post' = @{};
        'put' = @{};
        'trace' = @{};
    }

    # handlers for tcp
    $session.Handlers = @{
        'tcp' = $null;
        'smtp' = $null;
    }

    # create new cancellation token
    $session.CancelToken = New-Object System.Threading.CancellationTokenSource

    # setup system state shared variable
    $session.SharedState['__system__'] = @{}

    # requests that should be logged
    $session.RequestsToLog = New-Object System.Collections.ArrayList

    # session state
    $session.Lockable = [hashtable]::Synchronized(@{})

    $state = [initialsessionstate]::CreateDefault()
    $state.ImportPSModule((Get-Module -Name Pode).Path)

    $_session = New-PodeStateSession $session

    $variables = @(
        (New-Object System.Management.Automation.Runspaces.SessionStateVariableEntry -ArgumentList 'PodeSession', $_session, $null),
        (New-Object System.Management.Automation.Runspaces.SessionStateVariableEntry -ArgumentList 'Console', $Host, $null)
    )

    $variables | ForEach-Object {
        $state.Variables.Add($_)
    }

    # runspace and pool
    $session.Runspaces = @()
    $session.RunspacePool = [runspacefactory]::CreateRunspacePool(1, 4, $state, $Host)
    $session.RunspacePool.Open()

    return $session
}

function New-PodeStateSession
{
    param (
        [Parameter(Mandatory=$true)]
        [ValidateNotNull()]
        $Session
    )

    return (New-Object -TypeName psobject |
        Add-Member -MemberType NoteProperty -Name Routes -Value $Session.Routes -PassThru |
        Add-Member -MemberType NoteProperty -Name Port -Value $Session.Port -PassThru |
        Add-Member -MemberType NoteProperty -Name IP -Value $Session.IP -PassThru |
        Add-Member -MemberType NoteProperty -Name ViewEngine -Value $Session.ViewEngine -PassThru |
        Add-Member -MemberType NoteProperty -Name Web -Value $Session.Web -PassThru |
        Add-Member -MemberType NoteProperty -Name Timers -Value $Session.Timers -PassThru |
        Add-Member -MemberType NoteProperty -Name CancelToken -Value $Session.CancelToken -PassThru |
        Add-Member -MemberType NoteProperty -Name DisableLogging -Value $Session.DisableLogging -PassThru |
        Add-Member -MemberType NoteProperty -Name Loggers -Value $Session.Loggers -PassThru |
        Add-Member -MemberType NoteProperty -Name RequestsToLog -Value $Session.RequestsToLog -PassThru |
        Add-Member -MemberType NoteProperty -Name ServerRoot -Value $Session.ServerRoot -PassThru |
        Add-Member -MemberType NoteProperty -Name SharedState -Value $Session.SharedState -PassThru |
        Add-Member -MemberType NoteProperty -Name Lockable -Value $Session.Lockable -PassThru)
}

function State
{
    param (
        [Parameter(Mandatory=$true)]
        [ValidateSet('set', 'get', 'remove')]
        [string]
        $Action,

        [Parameter(Mandatory=$true)]
        [ValidateNotNullOrEmpty()]
        [string]
        $Name,

        [Parameter()]
        [object]
        $Object
    )

    try {
        if ($PodeSession -eq $null -or $PodeSession.SharedState -eq $null) {
            return
        }

        switch ($Action.ToLowerInvariant())
        {
            'set' {
                $PodeSession.SharedState[$Name] = $Object
            }

            'get' {
                $Object = $PodeSession.SharedState[$Name]
            }

            'remove' {
                $Object = $PodeSession.SharedState[$Name]
                $PodeSession.SharedState.Remove($Name) | Out-Null
            }
        }

        return $Object
    }
    catch {
        $Error[0] | Out-Default
        throw $_.Exception
    }
}

function Start-FileMonitor
{
    if (!$PodeSession.FileMonitor) {
        return
    }

    # what folder and filter are we moitoring?
    $folder = $PodeSession.ServerRoot
    $filter = '*.*'

    # setup the file monitor
    $watcher = New-Object System.IO.FileSystemWatcher $folder, $filter -Property @{
        IncludeSubdirectories = $true;
        NotifyFilter = [System.IO.NotifyFilters]'FileName,LastWrite,CreationTime';
    }

    $watcher.EnableRaisingEvents = $true

    # setup the monitor timer - only restart server after changes + 1s of no changes
    $timer = New-Object System.Timers.Timer
    $timer.AutoReset = $false
    $timer.Interval = 2000

    # listen out of file changed events
    Register-ObjectEvent -InputObject $watcher -EventName 'Changed' -SourceIdentifier 'PodeFileMonitor' -Action { 
        $Event.MessageData.Timer.Stop()
        $Event.MessageData.Timer.Start()
    } -MessageData @{ 'Session' = $PodeSession; 'Timer' = $timer; } -SupportEvent

    # listen out for timer ticks to reset server
    Register-ObjectEvent -InputObject $timer -EventName 'Elapsed' -SourceIdentifier 'PodeFileMonitorTimer' -Action {
        Write-Host 'Restarting server: Files have Changed...' -NoNewline -ForegroundColor Cyan
        $Event.Sender.Stop()
        Restart-PodeServer -Session $Event.MessageData.Session
        Write-Host " Done" -ForegroundColor Green
    } -MessageData @{ 'Session' = $PodeSession; } -SupportEvent
}