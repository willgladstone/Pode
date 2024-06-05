ConvertFrom-StringData -StringData @'
adModuleWindowsOnlyExceptionMessage = Il modulo Active Directory è disponibile solo su Windows.
adModuleNotInstalledExceptionMessage = Il modulo Active Directory non è installato.
secretManagementModuleNotInstalledExceptionMessage = Il modulo Microsoft.PowerShell.SecretManagement non è installato.
secretVaultAlreadyRegisteredAutoImportExceptionMessage = Una cassaforte segreta con il nome '{0}' è già stata registrata durante l'importazione automatica delle cassaforti segrete.
failedToOpenRunspacePoolExceptionMessage = Impossibile aprire RunspacePool: {0}
cronExpressionInvalidExceptionMessage = L'espressione Cron dovrebbe essere composta solo da 5 parti: {0}
invalidAliasFoundExceptionMessage = Alias {0} non valido trovato: {1}
invalidAtomCharacterExceptionMessage = Carattere atomo non valido: {0}
minValueGreaterThanMaxExceptionMessage = Il valore minimo per {0} non deve essere maggiore del valore massimo.
minValueInvalidExceptionMessage = Il valore minimo '{0}' per {1} non è valido, dovrebbe essere maggiore o uguale a {2}
maxValueInvalidExceptionMessage = Il valore massimo '{0}' per {1} non è valido, dovrebbe essere minore o uguale a {2}
valueOutOfRangeExceptionMessage = Il valore '{0}' per {1} non è valido, dovrebbe essere compreso tra {2} e {3}
daysInMonthExceededExceptionMessage = {0} ha solo {1} giorni, ma è stato fornito {2}.
nextTriggerCalculationErrorExceptionMessage = Sembra che ci sia stato un errore nel tentativo di calcolare la prossima data e ora del trigger: {0}
incompatiblePodeDllExceptionMessage = È caricata una versione incompatibile esistente di Pode.DLL {0}. È richiesta la versione {1}. Apri una nuova sessione Powershell/pwsh e riprova.
endpointNotExistExceptionMessage = Endpoint con protocollo '{0}' e indirizzo '{1}' o indirizzo locale '{2}' non esiste.
endpointNameNotExistExceptionMessage = Endpoint con nome '{0}' non esiste.
failedToConnectToUrlExceptionMessage = Impossibile connettersi all'URL: {0}
failedToParseAddressExceptionMessage = Impossibile analizzare '{0}' come indirizzo IP/Host:Port valido
invalidIpAddressExceptionMessage = L'indirizzo IP fornito non è valido: {0}
invalidPortExceptionMessage = La porta non può essere negativa: {0}
pathNotExistExceptionMessage = Il percorso non esiste: {0}
noSecretForHmac256ExceptionMessage = Nessun segreto fornito per l'hash HMAC256.
noSecretForHmac384ExceptionMessage = Nessun segreto fornito per l'hash HMAC384.
noSecretForHmac512ExceptionMessage = Nessun segreto fornito per l'hash HMAC512.
noSecretForJwtSignatureExceptionMessage = Nessun segreto fornito per la firma JWT.
noSecretExpectedForNoSignatureExceptionMessage = Non era previsto alcun segreto per nessuna firma.
unsupportedJwtAlgorithmExceptionMessage = L'algoritmo JWT non è attualmente supportato: {0}
invalidBase64JwtExceptionMessage = Valore codificato Base64 non valido trovato in JWT
invalidJsonJwtExceptionMessage = Valore JSON non valido trovato in JWT
unsupportedFunctionInServerlessContextExceptionMessage = La funzione {0} non è supportata in un contesto senza server.
invalidPathWildcardOrDirectoryExceptionMessage = Il percorso fornito non può essere un carattere jolly o una directory: {0}
invalidExceptionTypeExceptionMessage = L'eccezione è di un tipo non valido, dovrebbe essere WebException o HttpRequestException, ma è stato ottenuto: {0}
pathToLoadNotFoundExceptionMessage = Percorso per caricare {0} non trovato: {1}
singleValueForIntervalExceptionMessage = Puoi fornire solo un singolo valore {0} quando si utilizzano gli intervalli.
scriptErrorExceptionMessage = Errore '{0}' nello script {1} {2} (riga {3}) carattere {4} eseguendo {5} su {6} oggetto '{7}' Classe: {8} Classe di base: {9}
noScriptBlockSuppliedExceptionMessage = Nessun ScriptBlock fornito.
iisAspnetcoreTokenMissingExceptionMessage = IIS ASPNETCORE_TOKEN è mancante.
propertiesParameterWithoutNameExceptionMessage = I parametri Properties non possono essere utilizzati se la proprietà non ha un nome.
multiTypePropertiesRequireOpenApi31ExceptionMessage = Le proprietà multi-tipo richiedono OpenApi versione 3.1 o superiore.
openApiVersionPropertyMandatoryExceptionMessage = La proprietà della versione OpenApi è obbligatoria.
webhooksFeatureNotSupportedInOpenApi30ExceptionMessage = La funzionalità Webhooks non è supportata in OpenAPI v3.0.x
authenticationMethodDoesNotExistExceptionMessage = Il metodo di autenticazione non esiste: {0}
unsupportedObjectExceptionMessage = Oggetto non supportato
validationOfAnyOfSchemaNotSupportedExceptionMessage = La validazione di uno schema che include 'anyof' non è supportata.
validationOfOneOfSchemaNotSupportedExceptionMessage = La validazione di uno schema che include 'oneof' non è supportata.
cannotCreatePropertyWithoutTypeExceptionMessage = Impossibile creare la proprietà perché non è definito alcun tipo.
headerMustHaveNameInEncodingContextExceptionMessage = L'intestazione deve avere un nome quando viene utilizzata in un contesto di codifica.
descriptionRequiredExceptionMessage = È necessaria una descrizione.
openApiDocumentNotCompliantExceptionMessage = Il documento OpenAPI non è conforme.
noComponentInDefinitionExceptionMessage = Nessun componente del tipo {0} chiamato {1} è disponibile nella definizione {2}.
methodPathAlreadyDefinedExceptionMessage = [{0}] {1}: Già definito.
methodPathAlreadyDefinedForUrlExceptionMessage = [{0}] {1}: Già definito per {2}
invalidMiddlewareTypeExceptionMessage = Uno dei Middleware forniti è di un tipo non valido. Previsto ScriptBlock o Hashtable, ma ottenuto: {0}
hashtableMiddlewareNoLogicExceptionMessage = Un Middleware di tipo Hashtable fornito non ha una logica definita.
invalidLogicTypeInHashtableMiddlewareExceptionMessage = Un Middleware di tipo Hashtable fornito ha un tipo di logica non valido. Previsto ScriptBlock, ma ottenuto: {0}
scopedVariableAlreadyDefinedExceptionMessage = Variabile con ambito già definita: {0}
valueForUsingVariableNotFoundExceptionMessage = Impossibile trovare il valore per '$using:{0}'.
unlockSecretRequiredExceptionMessage = È necessaria una proprietà 'UnlockSecret' quando si utilizza Microsoft.PowerShell.SecretStore
unlockSecretButNoScriptBlockExceptionMessage = Segreto di sblocco fornito per tipo di cassaforte segreta personalizzata, ma nessun ScriptBlock di sblocco fornito.
noUnlockScriptBlockForVaultExceptionMessage = Nessun ScriptBlock di sblocco fornito per sbloccare la cassaforte '{0}'
noSetScriptBlockForVaultExceptionMessage = Nessun ScriptBlock fornito per aggiornare/creare segreti nella cassaforte '{0}'
noRemoveScriptBlockForVaultExceptionMessage = Nessun ScriptBlock fornito per rimuovere segreti dalla cassaforte '{0}'
invalidSecretValueTypeExceptionMessage = Il valore segreto è di un tipo non valido. Tipi previsti: String, SecureString, HashTable, Byte[] o PSCredential. Ma ottenuto: {0}
limitValueCannotBeZeroOrLessExceptionMessage = Il valore limite non può essere 0 o inferiore per {0}
secondsValueCannotBeZeroOrLessExceptionMessage = Il valore dei secondi non può essere 0 o inferiore per {0}
failedToCreateOpenSslCertExceptionMessage = Impossibile creare il certificato openssl: {0}
certificateThumbprintsNameSupportedOnWindowsExceptionMessage = Impronte digitali/nome del certificato supportati solo su Windows.
noCertificateFoundExceptionMessage = Nessun certificato trovato in {0}\{1} per '{2}'
runspacePoolFailedToLoadExceptionMessage = Impossibile caricare RunspacePool per {0}.
noServiceHandlersDefinedExceptionMessage = Non sono stati definiti gestori di servizio.
noSessionToSetOnResponseExceptionMessage = Non c'è nessuna sessione disponibile da impostare sulla risposta.
noSessionToCalculateDataHashExceptionMessage = Nessuna sessione disponibile per calcolare l'hash dei dati.
moduleOrVersionNotFoundExceptionMessage = Modulo o versione non trovati su {0}: {1}@{2}
noSmtpHandlersDefinedExceptionMessage = Non sono stati definiti gestori SMTP.
taskTimedOutExceptionMessage = Il compito è scaduto dopo {0}ms.
verbAlreadyDefinedExceptionMessage = [Verbo] {0}: Già definito
verbAlreadyDefinedForUrlExceptionMessage = [Verbo] {0}: Già definito per {1}
pathOrScriptBlockRequiredExceptionMessage = È necessario un percorso o un ScriptBlock per ottenere i valori di accesso personalizzati.
accessMethodAlreadyDefinedExceptionMessage = Metodo di accesso già definito: {0}
accessMethodNotExistForMergingExceptionMessage = Il metodo di accesso non esiste per l'unione: {0}
routeAlreadyContainsCustomAccessExceptionMessage = Il percorso '[{0}] {1}' contiene già un accesso personalizzato con nome '{2}'
accessMethodNotExistExceptionMessage = Il metodo di accesso non esiste: {0}
pathItemsFeatureNotSupportedInOpenApi30ExceptionMessage = La funzionalità PathItems non è supportata in OpenAPI v3.0.x
nonEmptyScriptBlockRequiredForCustomAuthExceptionMessage = È richiesto uno ScriptBlock non vuoto per lo schema di autenticazione personalizzato.
oauth2InnerSchemeInvalidExceptionMessage = OAuth2 InnerScheme può essere solo uno tra Basic o Form, ma è stato ottenuto: {0}
sessionsRequiredForOAuth2WithPKCEExceptionMessage = Sono necessarie sessioni per utilizzare OAuth2 con PKCE
oauth2ClientSecretRequiredExceptionMessage = OAuth2 richiede un Client Secret quando non si utilizza PKCE.
authMethodAlreadyDefinedExceptionMessage = Metodo di autenticazione già definito: {0}
invalidSchemeForAuthValidatorExceptionMessage = Lo schema '{0}' fornito per il validatore di autenticazione '{1}' richiede uno ScriptBlock valido.
sessionsRequiredForSessionPersistentAuthExceptionMessage = Sono necessarie sessioni per utilizzare l'autenticazione persistente della sessione.
oauth2RequiresAuthorizeUrlExceptionMessage = OAuth2 richiede che venga fornita un'URL di autorizzazione
authMethodNotExistForMergingExceptionMessage = Il metodo di autenticazione non esiste per la fusione: {0}
mergeDefaultAuthNotInListExceptionMessage = L'autenticazione MergeDefault '{0}' non è nella lista di autenticazione fornita.
defaultAuthNotInListExceptionMessage = L'autenticazione predefinita '{0}' non è nella lista di autenticazione fornita.
scriptBlockRequiredForMergingUsersExceptionMessage = È richiesto uno ScriptBlock per unire più utenti autenticati in un unico oggetto quando Valid è All.
noDomainServerNameForWindowsAdAuthExceptionMessage = Non è stato fornito alcun nome di server di dominio per l'autenticazione AD di Windows
sessionsNotConfiguredExceptionMessage = Le sessioni non sono state configurate.
windowsLocalAuthSupportIsForWindowsOnlyExceptionMessage = Il supporto per l'autenticazione locale di Windows è solo per Windows.
iisAuthSupportIsForWindowsOnlyExceptionMessage = Il supporto per l'autenticazione IIS è solo per Windows.
noAlgorithmInJwtHeaderExceptionMessage = Nessun algoritmo fornito nell'header JWT.
invalidJwtSuppliedExceptionMessage = JWT fornito non valido.
invalidJwtHeaderAlgorithmSuppliedExceptionMessage = Algoritmo dell'header JWT fornito non valido.
noJwtSignatureForAlgorithmExceptionMessage = Nessuna firma JWT fornita per {0}.
expectedNoJwtSignatureSuppliedExceptionMessage = Si prevedeva che non fosse fornita alcuna firma JWT.
invalidJwtSignatureSuppliedExceptionMessage = Firma JWT fornita non valida.
jwtExpiredExceptionMessage = JWT è scaduto.
jwtNotYetValidExceptionMessage = JWT non è ancora valido per l'uso.
snapinsSupportedOnWindowsPowershellOnlyExceptionMessage = Gli Snapin sono supportati solo su Windows PowerShell.
userFileDoesNotExistExceptionMessage = Il file utente non esiste: {0}
schemeRequiresValidScriptBlockExceptionMessage = Lo schema fornito per il validatore di autenticazione '{0}' richiede uno ScriptBlock valido.
oauth2ProviderDoesNotSupportCodeResponseTypeExceptionMessage = Il provider OAuth2 non supporta il tipo di risposta 'code'.
oauth2ProviderDoesNotSupportPasswordGrantTypeExceptionMessage = Il provider OAuth2 non supporta il tipo di concessione 'password' richiesto dall'utilizzo di un InnerScheme.
eventAlreadyRegisteredExceptionMessage = Evento {0} già registrato: {1}
noEventRegisteredExceptionMessage = Nessun evento {0} registrato: {1}
sessionsRequiredForFlashMessagesExceptionMessage = Le sessioni sono necessarie per utilizzare i messaggi Flash.
eventViewerLoggingSupportedOnWindowsOnlyExceptionMessage = La registrazione nel Visualizzatore eventi è supportata solo su Windows.
nonEmptyScriptBlockRequiredForCustomLoggingExceptionMessage = È richiesto uno ScriptBlock non vuoto per il metodo di registrazione personalizzato.
requestLoggingAlreadyEnabledExceptionMessage = La registrazione delle richieste è già abilitata.
outputMethodRequiresValidScriptBlockForRequestLoggingExceptionMessage = Il metodo di output fornito per la registrazione delle richieste richiede uno ScriptBlock valido.
errorLoggingAlreadyEnabledExceptionMessage = La registrazione degli errori è già abilitata.
nonEmptyScriptBlockRequiredForLoggingMethodExceptionMessage = È richiesto uno ScriptBlock non vuoto per il metodo di registrazione.
csrfMiddlewareNotInitializedExceptionMessage = Il Middleware CSRF non è stato inizializzato.
sessionsRequiredForCsrfExceptionMessage = Le sessioni sono necessarie per utilizzare CSRF a meno che non si vogliano usare i cookie.
middlewareNoLogicSuppliedExceptionMessage = [Middleware]: Nessuna logica fornita nello ScriptBlock.
parameterHasNoNameExceptionMessage = Il parametro non ha un nome. Assegna un nome a questo componente usando il parametro 'Name'.
reusableComponentPathItemsNotAvailableInOpenApi30ExceptionMessage = La funzione del componente riutilizzabile 'pathItems' non è disponibile in OpenAPI v3.0.
noPropertiesMutuallyExclusiveExceptionMessage = Il parametro 'NoProperties' è mutuamente esclusivo con 'Properties', 'MinProperties' e 'MaxProperties'.
discriminatorMappingRequiresDiscriminatorPropertyExceptionMessage = Il parametro 'DiscriminatorMapping' può essere utilizzato solo quando è presente 'DiscriminatorProperty'.
discriminatorIncompatibleWithAllOfExceptionMessage = Il parametro 'Discriminator' è incompatibile con 'allOf'.
typeCanOnlyBeAssociatedWithObjectExceptionMessage = Il tipo {0} può essere associato solo a un oggetto.
showPodeGuiOnlyAvailableOnWindowsExceptionMessage = Show-PodeGui è attualmente disponibile solo per Windows PowerShell e PowerShell 7+ su Windows.
nameRequiredForEndpointIfRedirectToSuppliedExceptionMessage = È richiesto un nome per l'endpoint se viene fornito il parametro RedirectTo.
clientCertificatesOnlySupportedOnHttpsEndpointsExceptionMessage = I certificati client sono supportati solo sugli endpoint HTTPS.
explicitTlsModeOnlySupportedOnSmtpsTcpsEndpointsExceptionMessage = La modalità TLS esplicita è supportata solo sugli endpoint SMTPS e TCPS.
acknowledgeMessageOnlySupportedOnSmtpTcpEndpointsExceptionMessage = Il messaggio di conferma è supportato solo sugli endpoint SMTP e TCP.
crlfMessageEndCheckOnlySupportedOnTcpEndpointsExceptionMessage = Il controllo di fine messaggio CRLF è supportato solo sugli endpoint TCP.
mustBeRunningWithAdminPrivilegesExceptionMessage = Deve essere eseguito con privilegi di amministratore per ascoltare gli indirizzi non locali.
certificateSuppliedForNonHttpsWssEndpointExceptionMessage = Certificato fornito per un endpoint non HTTPS/WSS.
websocketsNotConfiguredForSignalMessagesExceptionMessage = I WebSockets non sono configurati per inviare messaggi di segnale.
noPathSuppliedForRouteExceptionMessage = Nessun percorso fornito per la rotta.
accessRequiresAuthenticationOnRoutesExceptionMessage = L'accesso richiede l'autenticazione sulle rotte.
accessMethodDoesNotExistExceptionMessage = Il metodo di accesso non esiste: {0}.
routeParameterNeedsValidScriptblockExceptionMessage = Il parametro della rotta richiede uno ScriptBlock valido e non vuoto.
noCommandsSuppliedToConvertToRoutesExceptionMessage = Nessun comando fornito per convertirlo in rotte.
nonEmptyScriptBlockRequiredForPageRouteExceptionMessage = È richiesto uno ScriptBlock non vuoto per creare una rotta di pagina.
sseOnlyConfiguredOnEventStreamAcceptHeaderExceptionMessage = SSE può essere configurato solo su richieste con un valore di intestazione Accept di text/event-stream.
sseConnectionNameRequiredExceptionMessage = È richiesto un nome di connessione SSE, sia da -Name che da $WebEvent.Sse.Name.
sseFailedToBroadcastExceptionMessage = SSE non è riuscito a trasmettere a causa del livello di trasmissione SSE definito per {0}: {1}.
podeNotInitializedExceptionMessage = Pode non è stato inizializzato.
invalidTaskTypeExceptionMessage = Il tipo di attività non è valido, previsto [System.Threading.Tasks.Task] o [hashtable].
cannotLockValueTypeExceptionMessage = Non è possibile bloccare un [ValueTypes].
cannotLockNullObjectExceptionMessage = Non è possibile bloccare un oggetto nullo.
failedToAcquireLockExceptionMessage = Impossibile acquisire un blocco sull'oggetto.
cannotUnlockValueTypeExceptionMessage = Non è possibile sbloccare un [ValueTypes].
cannotUnlockNullObjectExceptionMessage = Non è possibile sbloccare un oggetto nullo.
sessionMiddlewareAlreadyInitializedExceptionMessage = Il Middleware della sessione è già stato inizializzato.
customSessionStorageMethodNotImplementedExceptionMessage = L'archiviazione delle sessioni personalizzata non implementa il metodo richiesto '{0}()'.
secretRequiredForCustomSessionStorageExceptionMessage = È necessario un segreto quando si utilizza l'archiviazione delle sessioni personalizzata.
noSessionAvailableToSaveExceptionMessage = Nessuna sessione disponibile per il salvataggio.
cannotSupplyIntervalWhenEveryIsNoneExceptionMessage = Impossibile fornire un intervallo quando il parametro 'Every' è impostato su None.
cannotSupplyIntervalForQuarterExceptionMessage = Impossibile fornire un valore di intervallo per ogni trimestre.
cannotSupplyIntervalForYearExceptionMessage = Impossibile fornire un valore di intervallo per ogni anno.
secretVaultAlreadyRegisteredExceptionMessage = Un Vault dei Segreti con il nome '{0}' è già stato registrato{1}.
secretVaultUnlockExpiryDateInPastExceptionMessage = La data di scadenza per sbloccare il Vault dei Segreti è nel passato (UTC): {0}
secretAlreadyMountedExceptionMessage = Un Segreto con il nome '{0}' è già stato montato.
credentialsPassedWildcardForHeadersLiteralExceptionMessage = Quando vengono passate le Credenziali, il carattere jolly * per le Intestazioni sarà considerato come una stringa letterale e non come un carattere jolly.
wildcardHeadersIncompatibleWithAutoHeadersExceptionMessage = Il carattere jolly * per le Intestazioni è incompatibile con l'opzione AutoHeaders.
wildcardMethodsIncompatibleWithAutoMethodsExceptionMessage = Il carattere jolly * per i Metodi è incompatibile con l'opzione AutoMethods.
invalidAccessControlMaxAgeDurationExceptionMessage = Durata non valida fornita per Access-Control-Max-Age: {0}. Deve essere maggiore di 0.
noNameForWebSocketDisconnectExceptionMessage = Nessun nome fornito per disconnettere il WebSocket.
noNameForWebSocketRemoveExceptionMessage = Nessun nome fornito per rimuovere il WebSocket.
noNameForWebSocketSendMessageExceptionMessage = Nessun nome fornito per inviare un messaggio al WebSocket.
noSecretNamedMountedExceptionMessage = Nessun Segreto con il nome '{0}' è stato montato.
noNameForWebSocketResetExceptionMessage = Nessun nome fornito per reimpostare il WebSocket.
schemaValidationRequiresPowerShell610ExceptionMessage = La convalida dello schema richiede PowerShell versione 6.1.0 o superiore.
routeParameterCannotBeNullExceptionMessage = Il parametro 'Route' non può essere null.
encodingAttributeOnlyAppliesToMultipartExceptionMessage = L'attributo di codifica si applica solo ai corpi delle richieste multipart e application/x-www-form-urlencoded.
testPodeOAComponentSchemaNeedToBeEnabledExceptionMessage = 'Test-PodeOAComponentSchema' deve essere abilitato utilizzando 'Enable-PodeOpenApi -EnableSchemaValidation'
openApiComponentSchemaDoesNotExistExceptionMessage = Lo schema del componente OpenApi {0} non esiste.
openApiParameterRequiresNameExceptionMessage = Il parametro OpenApi richiede un nome specificato.
openApiLicenseObjectRequiresNameExceptionMessage = L'oggetto OpenAPI 'license' richiede la proprietà 'name'. Utilizzare il parametro -LicenseName.
parametersValueOrExternalValueMandatoryExceptionMessage = I parametri 'Value' o 'ExternalValue' sono obbligatori.
parametersMutuallyExclusiveExceptionMessage = I parametri '{0}' e '{1}' sono mutuamente esclusivi.
maximumConcurrentWebSocketThreadsInvalidExceptionMessage = Il numero massimo di thread WebSocket simultanei deve essere >=1, ma è stato ottenuto: {0}
maximumConcurrentWebSocketThreadsLessThanMinimumExceptionMessage = Il numero massimo di thread WebSocket simultanei non può essere inferiore al minimo di {0}, ma è stato ottenuto: {1}
alreadyConnectedToWebSocketExceptionMessage = Già connesso al WebSocket con il nome '{0}'
failedToConnectToWebSocketExceptionMessage = Connessione al WebSocket non riuscita: {0}
verbNoLogicPassedExceptionMessage = [Verbo] {0}: Nessuna logica passata
scriptPathDoesNotExistExceptionMessage = Il percorso dello script non esiste: {0}
failedToImportModuleExceptionMessage = Importazione del modulo non riuscita: {0}
modulePathDoesNotExistExceptionMessage = Il percorso del modulo non esiste: {0}
defaultValueNotBooleanOrEnumExceptionMessage = Il valore predefinito non è un booleano e non fa parte dell'enum.
propertiesTypeObjectAssociationExceptionMessage = Solo le proprietà di tipo Oggetto possono essere associate a {0}.
invalidContentTypeForSchemaExceptionMessage = 'content-type' non valido trovato per lo schema: {0}
openApiRequestStyleInvalidForParameterExceptionMessage = Lo stile della richiesta OpenApi non può essere {0} per un parametro {1}.
pathParameterRequiresRequiredSwitchExceptionMessage = Se la posizione del parametro è 'Path', il parametro switch 'Required' è obbligatorio.
operationIdMustBeUniqueForArrayExceptionMessage = OperationID: {0} deve essere univoco e non può essere applicato a una matrice.
operationIdMustBeUniqueExceptionMessage = OperationID: {0} deve essere univoco.
noOpenApiUrlSuppliedExceptionMessage = Nessun URL OpenAPI fornito per {0}.
noTitleSuppliedForPageExceptionMessage = Nessun titolo fornito per la pagina {0}.
noRoutePathSuppliedForPageExceptionMessage = Nessun percorso di rotta fornito per la pagina {0}.
swaggerEditorDoesNotSupportOpenApi31ExceptionMessage = Questa versione di Swagger-Editor non supporta OpenAPI 3.1
rapidPdfDoesNotSupportOpenApi31ExceptionMessage = Lo strumento di documentazione RapidPdf non supporta OpenAPI 3.1
definitionTagNotDefinedExceptionMessage = Tag di definizione {0} non definito.
scopedVariableNotFoundExceptionMessage = Variabile di ambito non trovata: {0}
noSecretVaultRegisteredExceptionMessage = Nessun Vault dei Segreti con il nome '{0}' è stato registrato.
invalidStrictTransportSecurityDurationExceptionMessage = Durata Strict-Transport-Security non valida fornita: {0}. Deve essere maggiore di 0.
durationMustBeZeroOrGreaterExceptionMessage = La durata deve essere 0 o superiore, ma è stato ottenuto: {0}s
taskAlreadyDefinedExceptionMessage = [Attività] {0}: Attività già definita.
maximumConcurrentTasksInvalidExceptionMessage = Il numero massimo di attività simultanee deve essere >=1, ma è stato ottenuto: {0}
maximumConcurrentTasksLessThanMinimumExceptionMessage = Il numero massimo di attività simultanee non può essere inferiore al minimo di {0}, ma è stato ottenuto: {1}
taskDoesNotExistExceptionMessage = L'attività '{0}' non esiste.
cacheStorageNotFoundForRetrieveExceptionMessage = Memoria cache con nome '{0}' non trovata durante il tentativo di recuperare l'elemento memorizzato nella cache '{1}'.
cacheStorageNotFoundForSetExceptionMessage = Memoria cache con nome '{0}' non trovata durante il tentativo di impostare l'elemento memorizzato nella cache '{1}'.
cacheStorageNotFoundForExistsExceptionMessage = Memoria cache con nome '{0}' non trovata durante il tentativo di verificare se l'elemento memorizzato nella cache '{1}' esiste.
cacheStorageNotFoundForRemoveExceptionMessage = Memoria cache con nome '{0}' non trovata durante il tentativo di rimuovere l'elemento memorizzato nella cache '{1}'.
cacheStorageNotFoundForClearExceptionMessage = Memoria cache con nome '{0}' non trovata durante il tentativo di cancellare la cache.
cacheStorageAlreadyExistsExceptionMessage = Memoria cache con nome '{0}' esiste già.
pathToIconForGuiDoesNotExistExceptionMessage = Il percorso dell'icona per la GUI non esiste: {0}
invalidHostnameSuppliedExceptionMessage = Nome host fornito non valido: {0}
endpointAlreadyDefinedExceptionMessage = Un endpoint denominato '{0}' è già stato definito.
certificateExpiredExceptionMessage = Il certificato '{0}' è scaduto: {1}
endpointNotDefinedForRedirectingExceptionMessage = Non è stato definito un endpoint denominato '{0}' per il reindirizzamento.
fileWatcherAlreadyDefinedExceptionMessage = Un File Watcher con il nome '{0}' è già stato definito.
handlerAlreadyDefinedExceptionMessage = [{0}] {1}: Handler già definito.
maxDaysInvalidExceptionMessage = MaxDays deve essere 0 o superiore, ma è stato ottenuto: {0}
maxSizeInvalidExceptionMessage = MaxSize deve essere 0 o superiore, ma è stato ottenuto: {0}
loggingMethodAlreadyDefinedExceptionMessage = Metodo di registrazione già definito: {0}
loggingMethodRequiresValidScriptBlockExceptionMessage = Il metodo di output fornito per il metodo di registrazione '{0}' richiede un ScriptBlock valido.
csrfCookieRequiresSecretExceptionMessage = Quando si usano i cookie per CSRF, è necessario un Segreto. Puoi fornire un Segreto o impostare il segreto globale del Cookie - (Set-PodeCookieSecret '<value>' -Global)
bodyParserAlreadyDefinedForContentTypeExceptionMessage = Un body-parser è già definito per il tipo di contenuto {0}.
middlewareAlreadyDefinedExceptionMessage = [Middleware] {0}: Middleware già definito.
parameterNotSuppliedInRequestExceptionMessage = Un parametro chiamato '{0}' non è stato fornito nella richiesta o non ci sono dati disponibili.
noDataForFileUploadedExceptionMessage = Nessun dato per il file '{0}' è stato caricato nella richiesta.
viewsFolderNameAlreadyExistsExceptionMessage = Il nome della cartella Views esiste già: {0}
viewsPathDoesNotExistExceptionMessage = Il percorso delle Views non esiste: {0}
timerAlreadyDefinedExceptionMessage = [Timer] {0}: Timer già definito.
timerParameterMustBeGreaterThanZeroExceptionMessage = [Timer] {0}: {1} deve essere maggiore di 0.
timerDoesNotExistExceptionMessage = Timer '{0}' non esiste.
mutexAlreadyExistsExceptionMessage = Un mutex con il seguente nome esiste già: {0}
noMutexFoundExceptionMessage = Nessun mutex trovato chiamato '{0}'
failedToAcquireMutexOwnershipExceptionMessage = Impossibile acquisire la proprietà del mutex. Nome del mutex: {0}
semaphoreAlreadyExistsExceptionMessage = Un semaforo con il seguente nome esiste già: {0}
failedToAcquireSemaphoreOwnershipExceptionMessage = Impossibile acquisire la proprietà del semaforo. Nome del semaforo: {0}
scheduleAlreadyDefinedExceptionMessage = [Pianificazione] {0}: Pianificazione già definita.
scheduleCannotHaveNegativeLimitExceptionMessage = [Pianificazione] {0}: Non può avere un limite negativo.
scheduleEndTimeMustBeInFutureExceptionMessage = [Pianificazione] {0}: Il valore di EndTime deve essere nel futuro.
scheduleStartTimeAfterEndTimeExceptionMessage = [Pianificazione] {0}: Non può avere un 'StartTime' dopo 'EndTime'
maximumConcurrentSchedulesInvalidExceptionMessage = I programmi concorrenti massimi devono essere >=1 ma ottenuto: {0}
maximumConcurrentSchedulesLessThanMinimumExceptionMessage = I programmi concorrenti massimi non possono essere inferiori al minimo di {0} ma ottenuto: {1}
scheduleDoesNotExistExceptionMessage = Il programma '{0}' non esiste.
suppliedDateBeforeScheduleStartTimeExceptionMessage = La data fornita è precedente all'ora di inizio del programma a {0}
suppliedDateAfterScheduleEndTimeExceptionMessage = La data fornita è successiva all'ora di fine del programma a {0}
noSemaphoreFoundExceptionMessage = Nessun semaforo trovato chiamato '{0}'
'@