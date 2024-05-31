ConvertFrom-StringData -StringData @'
adModuleWindowsOnlyExceptionMessage = El módulo de Active Directory solo está disponible en Windows.
adModuleNotInstalledExceptionMessage = El módulo de Active Directory no está instalado.
secretManagementModuleNotInstalledExceptionMessage = El módulo Microsoft.PowerShell.SecretManagement no está instalado.
secretVaultAlreadyRegisteredExceptionMessage = Ya se ha registrado un Bóveda Secreta con el nombre '{0}' al importar automáticamente Bóvedas Secretas.
failedToOpenRunspacePoolExceptionMessage = Error al abrir RunspacePool: {0}
cronExpressionInvalidExceptionMessage = La expresión Cron solo debe consistir en 5 partes: {0}
invalidAliasFoundExceptionMessage = Se encontró un alias {0} no válido: {1}
invalidAtomCharacterExceptionMessage = Carácter atómico no válido: {0}
minValueGreaterThanMaxExceptionMessage = El valor mínimo para {0} no debe ser mayor que el valor máximo.
minValueInvalidExceptionMessage = El valor mínimo '{0}' para {1} no es válido, debe ser mayor o igual a {2}
maxValueInvalidExceptionMessage = El valor máximo '{0}' para {1} no es válido, debe ser menor o igual a {2}
valueOutOfRangeExceptionMessage = El valor '{0}' para {1} no es válido, debe estar entre {2} y {3}
daysInMonthExceededExceptionMessage = {0} solo tiene {1} días, pero se suministró {2}.
nextTriggerCalculationErrorExceptionMessage = Parece que algo salió mal al intentar calcular la siguiente fecha y hora del disparador: {0}
incompatiblePodeDllExceptionMessage = Se ha cargado una versión incompatible existente de Pode.DLL {0}. Se requiere la versión {1}. Abra una nueva sesión de Powershell/pwsh e intente de nuevo.
endpointNotExistExceptionMessage = No existe un punto de conexión con el protocolo '{0}' y la dirección '{1}' o la dirección local '{2}'.
endpointNameNotExistExceptionMessage = No existe un punto de conexión con el nombre '{0}'.
failedToConnectToUrlExceptionMessage = Error al conectar con la URL: {0}
failedToParseAddressExceptionMessage = Error al analizar '{0}' como una dirección IP/Host:Puerto válida
invalidIpAddressExceptionMessage = La dirección IP suministrada no es válida: {0}
invalidPortExceptionMessage = El puerto no puede ser negativo: {0}
pathNotExistExceptionMessage = La ruta no existe: {0}
noSecretForHmac256ExceptionMessage = No se suministró ningún secreto para el hash HMAC256.
noSecretForHmac384ExceptionMessage = No se suministró ningún secreto para el hash HMAC384.
noSecretForHmac512ExceptionMessage = No se suministró ningún secreto para el hash HMAC512.
noSecretForJwtSignatureExceptionMessage = No se suministró ningún secreto para la firma JWT.
noSecretExpectedForNoSignatureExceptionMessage = Se esperaba que no se suministrara ningún secreto para ninguna firma.
unsupportedJwtAlgorithmExceptionMessage = El algoritmo JWT actualmente no es compatible: {0}
invalidBase64JwtExceptionMessage = Valor Base64 no válido encontrado en JWT
invalidJsonJwtExceptionMessage = Valor JSON no válido encontrado en JWT
unsupportedFunctionInServerlessContextExceptionMessage = La función {0} no es compatible en un contexto sin servidor.
invalidPathWildcardOrDirectoryExceptionMessage = La ruta suministrada no puede ser un comodín o un directorio: {0}
invalidExceptionTypeExceptionMessage = La excepción es de un tipo no válido, debe ser WebException o HttpRequestException, pero se obtuvo: {0}
pathToLoadNotFoundExceptionMessage = No se encontró la ruta para cargar {0}: {1}
singleValueForIntervalExceptionMessage = Solo puede suministrar un único valor {0} cuando utiliza intervalos.
scriptErrorExceptionMessage = Error '{0}' en el script {1} {2} (línea {3}) carácter {4} al ejecutar {5} en el objeto {6} '{7}' Clase: {8} ClaseBase: {9}
noScriptBlockSuppliedExceptionMessage = No se suministró ningún ScriptBlock.
iisAspnetcoreTokenMissingExceptionMessage = Falta el token IIS ASPNETCORE_TOKEN.
invalidContentTypeForSchemaExceptionMessage = Tipo de contenido no válido encontrado para el esquema: {0}
propertiesParameterWithoutNameExceptionMessage = Los parámetros de propiedades no se pueden usar si la propiedad no tiene nombre.
multiTypePropertiesRequireOpenApi31ExceptionMessage = Las propiedades de tipo múltiple requieren OpenApi versión 3.1 o superior.
openApiVersionPropertyMandatoryExceptionMessage = La propiedad de versión OpenApi es obligatoria.
webhooksFeatureNotSupportedInOpenApi30ExceptionMessage = La función de Webhooks no es compatible con OpenAPI v3.0.x
authenticationMethodDoesNotExistExceptionMessage = El método de autenticación no existe: {0}
unsupportedObjectExceptionMessage = Objeto no compatible
validationOfAnyOfSchemaNotSupportedExceptionMessage = La validación de un esquema que incluye 'anyof' no es compatible.
validationOfOneOfSchemaNotSupportedExceptionMessage = La validación de un esquema que incluye 'oneof' no es compatible.
cannotCreatePropertyWithoutTypeExceptionMessage = No se puede crear la propiedad porque no se ha definido ningún tipo.
paramsNoAdditionalPropertiesExclusiveExceptionMessage = Los parámetros -NoAdditionalProperties y -AdditionalProperties son mutuamente excluyentes.
headerMustHaveNameInEncodingContextExceptionMessage = El encabezado debe tener un nombre cuando se usa en un contexto de codificación.
descriptionRequiredExceptionMessage = Se requiere una descripción.
openApiDocumentNotCompliantExceptionMessage = El documento OpenAPI no cumple con las normas.
noComponentInDefinitionExceptionMessage = No hay componente del tipo {0} llamado {1} disponible en la definición de {2}.
methodPathAlreadyDefinedExceptionMessage = [{0}] {1}: Ya está definido.
methodPathAlreadyDefinedForUrlExceptionMessage = [{0}] {1}: Ya está definido para {2}
invalidMiddlewareTypeExceptionMessage = Uno de los Middlewares suministrados es de un tipo no válido. Se esperaba ScriptBlock o Hashtable, pero se obtuvo: {0}
hashtableMiddlewareNoLogicExceptionMessage = Un Middleware Hashtable suministrado no tiene lógica definida.
invalidLogicTypeInHashtableMiddlewareExceptionMessage = Un Middleware Hashtable suministrado tiene un tipo de lógica no válido. Se esperaba ScriptBlock, pero se obtuvo: {0}
scopedVariableAlreadyDefinedExceptionMessage = La variable con alcance ya está definida: {0}
valueForUsingVariableNotFoundExceptionMessage = No se pudo encontrar el valor para `$using:{0}`.
unlockSecretRequiredExceptionMessage = Se requiere una propiedad 'UnlockSecret' al usar Microsoft.PowerShell.SecretStore
unlockSecretButNoScriptBlockExceptionMessage = Se suministró un secreto de desbloqueo para el tipo de bóveda secreta personalizada, pero no se suministró ningún ScriptBlock de desbloqueo.
noUnlockScriptBlockForVaultExceptionMessage = No se suministró ningún ScriptBlock de desbloqueo para desbloquear la bóveda '{0}'
noSetScriptBlockForVaultExceptionMessage = No se suministró ningún ScriptBlock de configuración para actualizar/crear secretos en la bóveda '{0}'
noRemoveScriptBlockForVaultExceptionMessage = No se suministró ningún ScriptBlock de eliminación para eliminar secretos de la bóveda '{0}'
invalidSecretValueTypeExceptionMessage = El valor del secreto es de un tipo no válido. Tipos esperados: String, SecureString, HashTable, Byte[], o PSCredential. Pero se obtuvo: {0}
limitValueCannotBeZeroOrLessExceptionMessage = El valor del límite no puede ser 0 o menor para {0}
secondsValueCannotBeZeroOrLessExceptionMessage = El valor en segundos no puede ser 0 o menor para {0}
failedToCreateOpenSslCertExceptionMessage = Error al crear el certificado openssl: {0}
certificateThumbprintsNameSupportedOnWindowsExceptionMessage = Las huellas digitales/nombres de certificados solo son compatibles con Windows.
noCertificateFoundExceptionMessage = No se encontró ningún certificado en {0}\{1} para '{2}'
runspacePoolFailedToLoadExceptionMessage = {0} RunspacePool no se pudo cargar.
noServiceHandlersDefinedExceptionMessage = No se han definido controladores de servicio.
noSessionToSetOnResponseExceptionMessage = No hay ninguna sesión disponible para configurar en la respuesta.
noSessionToCalculateDataHashExceptionMessage = No hay ninguna sesión disponible para calcular el hash de datos.
moduleOrVersionNotFoundExceptionMessage = No se encontró el módulo o la versión en {0}: {1}@{2}
noSmtpHandlersDefinedExceptionMessage = No se han definido controladores SMTP.
taskTimedOutExceptionMessage = La tarea ha agotado el tiempo después de {0}ms.
verbAlreadyDefinedExceptionMessage = [Verbo] {0}: Ya está definido
verbAlreadyDefinedForUrlExceptionMessage = [Verbo] {0}: Ya está definido para {1}
pathOrScriptBlockRequiredExceptionMessage = Se requiere una ruta o un ScriptBlock para obtener los valores de acceso personalizados.
accessMethodAlreadyDefinedExceptionMessage = Método de acceso ya definido: {0}
accessMethodNotExistForMergingExceptionMessage = El método de acceso no existe para fusionarse: {0}
routeAlreadyContainsCustomAccessExceptionMessage = La ruta '[{0}] {1}' ya contiene acceso personalizado con el nombre '{2}'
accessMethodNotExistExceptionMessage = El método de acceso no existe: {0}
pathItemsFeatureNotSupportedInOpenApi30ExceptionMessage = La función de elementos de ruta no es compatible con OpenAPI v3.0.x
nonEmptyScriptBlockRequiredForCustomAuthExceptionMessage = Se requiere un ScriptBlock no vacío para el esquema de autenticación personalizado.
oauth2InnerSchemeInvalidExceptionMessage = OAuth2 InnerScheme solo puede ser Basic o Form, pero se obtuvo: {0}
sessionsRequiredForOAuth2WithPKCEExceptionMessage = Se requieren sesiones para usar OAuth2 con PKCE.
oauth2ClientSecretRequiredExceptionMessage = OAuth2 requiere un Client Secret cuando no se usa PKCE.
authMethodAlreadyDefinedExceptionMessage = Método de autenticación ya definido: {0}
invalidSchemeForAuthValidatorExceptionMessage = El esquema '{0}' proporcionado para el validador de autenticación '{1}' requiere un ScriptBlock válido.
sessionsRequiredForSessionPersistentAuthExceptionMessage = Se requieren sesiones para usar la autenticación persistente de sesión.
oauth2RequiresAuthorizeUrlExceptionMessage = OAuth2 requiere que se proporcione una URL de autorización.
authMethodNotExistForMergingExceptionMessage = El método de autenticación no existe para la fusión: {0}
mergeDefaultAuthNotInListExceptionMessage = La autenticación MergeDefault '{0}' no está en la lista de autenticación proporcionada.
defaultAuthNotInListExceptionMessage = La autenticación predeterminada '{0}' no está en la lista de autenticación proporcionada.
scriptBlockRequiredForMergingUsersExceptionMessage = Se requiere un ScriptBlock para fusionar múltiples usuarios autenticados en un solo objeto cuando Valid es All.
noDomainServerNameForWindowsAdAuthExceptionMessage = No se ha proporcionado un nombre de servidor de dominio para la autenticación AD de Windows.
sessionsNotConfiguredExceptionMessage = Las sesiones no se han configurado.
windowsLocalAuthSupportIsForWindowsOnlyExceptionMessage = El soporte de autenticación local de Windows es solo para Windows.
iisAuthSupportIsForWindowsOnlyExceptionMessage = El soporte de autenticación IIS es solo para Windows.
noAlgorithmInJwtHeaderExceptionMessage = No se proporcionó un algoritmo en el encabezado JWT.
invalidJwtSuppliedExceptionMessage = JWT proporcionado no válido.
invalidJwtHeaderAlgorithmSuppliedExceptionMessage = Algoritmo del encabezado JWT proporcionado no válido.
noJwtSignatureForAlgorithmExceptionMessage = No se proporcionó una firma JWT para {0}.
expectedNoJwtSignatureSuppliedExceptionMessage = No se esperaba que se proporcionara una firma JWT.
invalidJwtSignatureSuppliedExceptionMessage = Firma JWT proporcionada no válida.
jwtExpiredExceptionMessage = El JWT ha expirado.
jwtNotYetValidExceptionMessage = El JWT aún no es válido.
snapinsSupportedOnWindowsPowershellOnlyExceptionMessage = Los Snapins solo son compatibles con Windows PowerShell.
userFileDoesNotExistExceptionMessage = El archivo de usuario no existe: {0}
schemeRequiresValidScriptBlockExceptionMessage = El esquema proporcionado para el validador de autenticación '{0}' requiere un ScriptBlock válido.
oauth2ProviderDoesNotSupportCodeResponseTypeExceptionMessage = El proveedor de OAuth2 no admite el tipo de respuesta 'code'.
oauth2ProviderDoesNotSupportPasswordGrantTypeExceptionMessage = El proveedor de OAuth2 no admite el tipo de concesión 'password' requerido al usar un InnerScheme.
eventAlreadyRegisteredExceptionMessage = Evento {0} ya registrado: {1}
noEventRegisteredExceptionMessage = No hay evento {0} registrado: {1}
'@
