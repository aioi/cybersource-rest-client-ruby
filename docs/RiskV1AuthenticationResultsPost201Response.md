# CyberSource::RiskV1AuthenticationResultsPost201Response

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_links** | [**PtsV2IncrementalAuthorizationPatch201ResponseLinks**](PtsV2IncrementalAuthorizationPatch201ResponseLinks.md) |  | [optional] 
**id** | **String** | An unique identification number to identify the submitted request. It is also appended to the endpoint of the resource.  On incremental authorizations, this value with be the same as the identification number returned in the original authorization response.  #### PIN debit Returned for all PIN debit services.  | [optional] 
**submit_time_utc** | **String** | Time of request in UTC. Format: &#x60;YYYY-MM-DDThh:mm:ssZ&#x60; **Example** &#x60;2016-08-11T22:47:57Z&#x60; equals August 11, 2016, at 22:47:57 (10:47:57 p.m.). The &#x60;T&#x60; separates the date and the time. The &#x60;Z&#x60; indicates UTC.  Returned by authorization service.  #### PIN debit Time when the PIN debit credit, PIN debit purchase or PIN debit reversal was requested.  Returned by PIN debit credit, PIN debit purchase or PIN debit reversal.  | [optional] 
**submit_time_local** | **String** | Time that the transaction was submitted in local time. | [optional] 
**status** | **String** | The status for payerAuthentication 201 enroll and validate calls. Possible values are: - &#x60;AUTHENTICATION_SUCCESSFUL&#x60; - &#x60;PENDING_AUTHENTICATION&#x60; - &#x60;INVALID_REQUEST&#x60; - &#x60;AUTHENTICATION_FAILED&#x60;  | [optional] 
**message** | **String** | The message describing the reason of the status. Value is: - The cardholder is enrolled in Payer Authentication. Please authenticate the cardholder before continuing with the transaction.  | [optional] 
**client_reference_information** | [**PtsV2IncrementalAuthorizationPatch201ResponseClientReferenceInformation**](PtsV2IncrementalAuthorizationPatch201ResponseClientReferenceInformation.md) |  | [optional] 
**consumer_authentication_information** | [**RiskV1AuthenticationResultsPost201ResponseConsumerAuthenticationInformation**](RiskV1AuthenticationResultsPost201ResponseConsumerAuthenticationInformation.md) |  | [optional] 
**error_information** | [**RiskV1AuthenticationsPost201ResponseErrorInformation**](RiskV1AuthenticationsPost201ResponseErrorInformation.md) |  | [optional] 

