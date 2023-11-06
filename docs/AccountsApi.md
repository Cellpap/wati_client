# WatiClient::AccountsApi

All URIs are relative to *https://live-mt-server.wati.io/300356/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**v1_rotate_token_post**](AccountsApi.md#v1_rotate_token_post) | **POST** /v1/rotateToken | Rotate Token |


## v1_rotate_token_post

> v1_rotate_token_post(token)

Rotate Token

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

api_instance = WatiClient::AccountsApi.new
token = 'token_example' # String | Token to block

begin
  # Rotate Token
  api_instance.v1_rotate_token_post(token)
rescue WatiClient::ApiError => e
  puts "Error when calling AccountsApi->v1_rotate_token_post: #{e}"
end
```

#### Using the v1_rotate_token_post_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> v1_rotate_token_post_with_http_info(token)

```ruby
begin
  # Rotate Token
  data, status_code, headers = api_instance.v1_rotate_token_post_with_http_info(token)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue WatiClient::ApiError => e
  puts "Error when calling AccountsApi->v1_rotate_token_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **token** | **String** | Token to block |  |

### Return type

nil (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

