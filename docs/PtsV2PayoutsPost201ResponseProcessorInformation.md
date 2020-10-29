# CyberSource::PtsV2PayoutsPost201ResponseProcessorInformation

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**approval_code** | **String** | Issuer-generated approval code for the transaction. | [optional] 
**response_code** | **String** | Transaction status from the processor. | [optional] 
**transaction_id** | **String** | Network transaction identifier (TID). This value can be used to identify a specific transaction when you are discussing the transaction with your processor.  | [optional] 
**system_trace_audit_number** | **String** | This field is returned only for **American Express Direct** and **CyberSource through VisaNet**. Returned by authorization and incremental authorization services.  #### American Express Direct  System trace audit number (STAN). This value identifies the transaction and is useful when investigating a chargeback dispute.  #### CyberSource through VisaNet  System trace number that must be printed on the customer’s receipt.  | [optional] 
**response_code_source** | **String** | Used by Visa only and contains the response source/reason code that identifies the source of the response decision.  | [optional] 


