# WatiClient::MediaApi

All URIs are relative to *https://live-mt-server.wati.io/300356/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**v1_get_media_get**](MediaApi.md#v1_get_media_get) | **GET** /v1/getMedia | Get media by file name |


## v1_get_media_get

> v1_get_media_get(file_name)

Get media by file name

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

api_instance = WatiClient::MediaApi.new
file_name = 'file_name_example' # String | File Name

begin
  # Get media by file name
  api_instance.v1_get_media_get(file_name)
rescue WatiClient::ApiError => e
  puts "Error when calling MediaApi->v1_get_media_get: #{e}"
end
```

#### Using the v1_get_media_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> v1_get_media_get_with_http_info(file_name)

```ruby
begin
  # Get media by file name
  data, status_code, headers = api_instance.v1_get_media_get_with_http_info(file_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue WatiClient::ApiError => e
  puts "Error when calling MediaApi->v1_get_media_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_name** | **String** | File Name |  |

### Return type

nil (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

