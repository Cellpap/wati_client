# WatiClient::InboxApi

All URIs are relative to *https://app-server.wati.io/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**v1_assign_operator_post**](InboxApi.md#v1_assign_operator_post) | **POST** /v1/assignOperator | Assign User |


## v1_assign_operator_post

> v1_assign_operator_post(email, whatsapp_number)

Assign User

### Examples

```ruby
require 'time'
require 'wati_client'
# setup authorization
WatiClient.configure do |config|
  # Configure API key authorization: Bearer
  config.api_key['Bearer'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Bearer'] = 'Bearer'
end

api_instance = WatiClient::InboxApi.new
email = 'email_example' # String | User Email
whatsapp_number = 'whatsapp_number_example' # String | WhatsApp Number with country code. Example, 85264318721

begin
  # Assign User
  api_instance.v1_assign_operator_post(email, whatsapp_number)
rescue WatiClient::ApiError => e
  puts "Error when calling InboxApi->v1_assign_operator_post: #{e}"
end
```

#### Using the v1_assign_operator_post_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> v1_assign_operator_post_with_http_info(email, whatsapp_number)

```ruby
begin
  # Assign User
  data, status_code, headers = api_instance.v1_assign_operator_post_with_http_info(email, whatsapp_number)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue WatiClient::ApiError => e
  puts "Error when calling InboxApi->v1_assign_operator_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | User Email |  |
| **whatsapp_number** | **String** | WhatsApp Number with country code. Example, 85264318721 |  |

### Return type

nil (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

