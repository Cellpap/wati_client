# WatiClient::PaymentsApi

All URIs are relative to *https://app-server.wati.io/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**v1_order_details_post**](PaymentsApi.md#v1_order_details_post) | **POST** /v1/order_details | Send WhatsApp Pay order detail message to customer (Private Beta) |
| [**v1_order_details_reference_id_get**](PaymentsApi.md#v1_order_details_reference_id_get) | **GET** /v1/order_details/{referenceId} | Get WhatsApp Pay order details of particular order (Private Beta) |
| [**v1_order_status_post**](PaymentsApi.md#v1_order_status_post) | **POST** /v1/order_status | Update WhatsApp Pay order status of an order (Private Beta) |
| [**v1_payment_status_reference_id_get**](PaymentsApi.md#v1_payment_status_reference_id_get) | **GET** /v1/payment_status/{referenceId} | Get payment status information of particular order (Private Beta) |


## v1_order_details_post

> Object v1_order_details_post

Send WhatsApp Pay order detail message to customer (Private Beta)

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

api_instance = WatiClient::PaymentsApi.new

begin
  # Send WhatsApp Pay order detail message to customer (Private Beta)
  result = api_instance.v1_order_details_post
  p result
rescue WatiClient::ApiError => e
  puts "Error when calling PaymentsApi->v1_order_details_post: #{e}"
end
```

#### Using the v1_order_details_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> v1_order_details_post_with_http_info

```ruby
begin
  # Send WhatsApp Pay order detail message to customer (Private Beta)
  data, status_code, headers = api_instance.v1_order_details_post_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue WatiClient::ApiError => e
  puts "Error when calling PaymentsApi->v1_order_details_post_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**Object**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_order_details_reference_id_get

> Object v1_order_details_reference_id_get(reference_id)

Get WhatsApp Pay order details of particular order (Private Beta)

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

api_instance = WatiClient::PaymentsApi.new
reference_id = 'reference_id_example' # String | 

begin
  # Get WhatsApp Pay order details of particular order (Private Beta)
  result = api_instance.v1_order_details_reference_id_get(reference_id)
  p result
rescue WatiClient::ApiError => e
  puts "Error when calling PaymentsApi->v1_order_details_reference_id_get: #{e}"
end
```

#### Using the v1_order_details_reference_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> v1_order_details_reference_id_get_with_http_info(reference_id)

```ruby
begin
  # Get WhatsApp Pay order details of particular order (Private Beta)
  data, status_code, headers = api_instance.v1_order_details_reference_id_get_with_http_info(reference_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue WatiClient::ApiError => e
  puts "Error when calling PaymentsApi->v1_order_details_reference_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reference_id** | **String** |  |  |

### Return type

**Object**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_order_status_post

> Object v1_order_status_post

Update WhatsApp Pay order status of an order (Private Beta)

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

api_instance = WatiClient::PaymentsApi.new

begin
  # Update WhatsApp Pay order status of an order (Private Beta)
  result = api_instance.v1_order_status_post
  p result
rescue WatiClient::ApiError => e
  puts "Error when calling PaymentsApi->v1_order_status_post: #{e}"
end
```

#### Using the v1_order_status_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> v1_order_status_post_with_http_info

```ruby
begin
  # Update WhatsApp Pay order status of an order (Private Beta)
  data, status_code, headers = api_instance.v1_order_status_post_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue WatiClient::ApiError => e
  puts "Error when calling PaymentsApi->v1_order_status_post_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**Object**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_payment_status_reference_id_get

> Object v1_payment_status_reference_id_get(reference_id)

Get payment status information of particular order (Private Beta)

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

api_instance = WatiClient::PaymentsApi.new
reference_id = 'reference_id_example' # String | 

begin
  # Get payment status information of particular order (Private Beta)
  result = api_instance.v1_payment_status_reference_id_get(reference_id)
  p result
rescue WatiClient::ApiError => e
  puts "Error when calling PaymentsApi->v1_payment_status_reference_id_get: #{e}"
end
```

#### Using the v1_payment_status_reference_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> v1_payment_status_reference_id_get_with_http_info(reference_id)

```ruby
begin
  # Get payment status information of particular order (Private Beta)
  data, status_code, headers = api_instance.v1_payment_status_reference_id_get_with_http_info(reference_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue WatiClient::ApiError => e
  puts "Error when calling PaymentsApi->v1_payment_status_reference_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reference_id** | **String** |  |  |

### Return type

**Object**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

