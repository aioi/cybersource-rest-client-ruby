# CyberSource::Riskv1decisionsBuyerInformation

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**hashed_password** | **String** | The description for this field is not available.  | [optional] 
**date_of_birth** | **String** | Recipient’s date of birth. **Format**: &#x60;YYYYMMDD&#x60;.  This field is a pass-through, which means that CyberSource ensures that the value is eight numeric characters but otherwise does not verify the value or modify it in any way before sending it to the processor. If the field is not required for the transaction, CyberSource does not forward it to the processor.  For more details, see \&quot;Recipients,\&quot; page 224.  | [optional] 
**personal_identification** | [**Array&lt;Ptsv2paymentsBuyerInformationPersonalIdentification&gt;**](Ptsv2paymentsBuyerInformationPersonalIdentification.md) |  | [optional] 


