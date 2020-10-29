# CyberSource::ReversalApi

All URIs are relative to *https://apitest.cybersource.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**auth_reversal**](ReversalApi.md#auth_reversal) | **POST** /pts/v2/payments/{id}/reversals | Process an Authorization Reversal
[**mit_reversal**](ReversalApi.md#mit_reversal) | **POST** /pts/v2/reversals/ | Timeout Reversal


# **auth_reversal**
> PtsV2PaymentsReversalsPost201Response auth_reversal(id, auth_reversal_request)

Process an Authorization Reversal

Include the payment ID in the POST request to reverse the payment amount.

### Example
```ruby
# load the gem
require 'cybersource_rest_client'

api_instance = CyberSource::ReversalApi.new

id = "id_example" # String | The payment ID returned from a previous payment request.

auth_reversal_request = CyberSource::AuthReversalRequest.new # AuthReversalRequest | 


begin
  #Process an Authorization Reversal
  result = api_instance.auth_reversal(id, auth_reversal_request)
  p result
rescue CyberSource::ApiError => e
  puts "Exception when calling ReversalApi->auth_reversal: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The payment ID returned from a previous payment request. | 
 **auth_reversal_request** | [**AuthReversalRequest**](AuthReversalRequest.md)|  | 

### Return type

[**PtsV2PaymentsReversalsPost201Response**](PtsV2PaymentsReversalsPost201Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json;charset=utf-8
 - **Accept**: application/hal+json;charset=utf-8



# **mit_reversal**
> PtsV2PaymentsReversalsPost201Response mit_reversal(mit_reversal_request)

Timeout Reversal

This is to reverse a previous payment that merchant does not receive a reply(Mostly due to Timeout). To use this feature/API, make sure to pass unique value to field - clientReferenceInformation -> transactionId in [/pts/v2/payments](https://developer.cybersource.com/api-reference-assets/index.html#payments_payments) API call and use same transactionId in this API request payload to reverse the payment.

### Example
```ruby
# load the gem
require 'cybersource_rest_client'

api_instance = CyberSource::ReversalApi.new

mit_reversal_request = CyberSource::MitReversalRequest.new # MitReversalRequest | 


begin
  #Timeout Reversal
  result = api_instance.mit_reversal(mit_reversal_request)
  p result
rescue CyberSource::ApiError => e
  puts "Exception when calling ReversalApi->mit_reversal: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mit_reversal_request** | [**MitReversalRequest**](MitReversalRequest.md)|  | 

### Return type

[**PtsV2PaymentsReversalsPost201Response**](PtsV2PaymentsReversalsPost201Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json;charset=utf-8
 - **Accept**: application/hal+json;charset=utf-8



