# WatiClient::ContactsApi

All URIs are relative to *https://live-mt-server.wati.io/300356/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**v1_add_contact_whatsapp_number_post**](ContactsApi.md#v1_add_contact_whatsapp_number_post) | **POST** /v1/addContact/{whatsappNumber} | Add Contact |
| [**v1_get_contacts_get**](ContactsApi.md#v1_get_contacts_get) | **GET** /v1/getContacts | Get Contacts List |
| [**v1_update_contact_attributes_whatsapp_number_post**](ContactsApi.md#v1_update_contact_attributes_whatsapp_number_post) | **POST** /v1/updateContactAttributes/{whatsappNumber} | Update Contact Attributes |


## v1_add_contact_whatsapp_number_post

> v1_add_contact_whatsapp_number_post(whatsapp_number, opts)

Add Contact

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

api_instance = WatiClient::ContactsApi.new
whatsapp_number = 'whatsapp_number_example' # String | WhatsApp Number with country code. Example, 85264318721
opts = {
  new_contact_model: WatiClient::NewContactModel.new # NewContactModel | Contact Attributes
}

begin
  # Add Contact
  api_instance.v1_add_contact_whatsapp_number_post(whatsapp_number, opts)
rescue WatiClient::ApiError => e
  puts "Error when calling ContactsApi->v1_add_contact_whatsapp_number_post: #{e}"
end
```

#### Using the v1_add_contact_whatsapp_number_post_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> v1_add_contact_whatsapp_number_post_with_http_info(whatsapp_number, opts)

```ruby
begin
  # Add Contact
  data, status_code, headers = api_instance.v1_add_contact_whatsapp_number_post_with_http_info(whatsapp_number, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue WatiClient::ApiError => e
  puts "Error when calling ContactsApi->v1_add_contact_whatsapp_number_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **whatsapp_number** | **String** | WhatsApp Number with country code. Example, 85264318721 |  |
| **new_contact_model** | [**NewContactModel**](NewContactModel.md) | Contact Attributes | [optional] |

### Return type

nil (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
- **Accept**: Not defined


## v1_get_contacts_get

> v1_get_contacts_get(opts)

Get Contacts List

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

api_instance = WatiClient::ContactsApi.new
opts = {
  page_size: 56, # Integer | Page Size
  page_number: 56, # Integer | Page Number
  name: 'name_example', # String | Contact Name
  attribute: 'attribute_example', # String | Attribute (parameters format : [{name: \"name\", operator: \"contain\", value: \"test\"}] )<br />  Possible values for operator are contain, notContain, exist, notExist, ==, !=, valid, invalid
  created_date: 'created_date_example' # String | Created Date (YYYY-MM-DD or MM-DD-YYYY)
}

begin
  # Get Contacts List
  api_instance.v1_get_contacts_get(opts)
rescue WatiClient::ApiError => e
  puts "Error when calling ContactsApi->v1_get_contacts_get: #{e}"
end
```

#### Using the v1_get_contacts_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> v1_get_contacts_get_with_http_info(opts)

```ruby
begin
  # Get Contacts List
  data, status_code, headers = api_instance.v1_get_contacts_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue WatiClient::ApiError => e
  puts "Error when calling ContactsApi->v1_get_contacts_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page_size** | **Integer** | Page Size | [optional] |
| **page_number** | **Integer** | Page Number | [optional] |
| **name** | **String** | Contact Name | [optional] |
| **attribute** | **String** | Attribute (parameters format : [{name: \&quot;name\&quot;, operator: \&quot;contain\&quot;, value: \&quot;test\&quot;}] )&lt;br /&gt;  Possible values for operator are contain, notContain, exist, notExist, &#x3D;&#x3D;, !&#x3D;, valid, invalid | [optional] |
| **created_date** | **String** | Created Date (YYYY-MM-DD or MM-DD-YYYY) | [optional] |

### Return type

nil (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## v1_update_contact_attributes_whatsapp_number_post

> v1_update_contact_attributes_whatsapp_number_post(whatsapp_number, opts)

Update Contact Attributes

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

api_instance = WatiClient::ContactsApi.new
whatsapp_number = 'whatsapp_number_example' # String | WhatsApp Number with country code. Example, 85264318721
opts = {
  update_custom_params_model: WatiClient::UpdateCustomParamsModel.new # UpdateCustomParamsModel | Contact Attributes
}

begin
  # Update Contact Attributes
  api_instance.v1_update_contact_attributes_whatsapp_number_post(whatsapp_number, opts)
rescue WatiClient::ApiError => e
  puts "Error when calling ContactsApi->v1_update_contact_attributes_whatsapp_number_post: #{e}"
end
```

#### Using the v1_update_contact_attributes_whatsapp_number_post_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> v1_update_contact_attributes_whatsapp_number_post_with_http_info(whatsapp_number, opts)

```ruby
begin
  # Update Contact Attributes
  data, status_code, headers = api_instance.v1_update_contact_attributes_whatsapp_number_post_with_http_info(whatsapp_number, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue WatiClient::ApiError => e
  puts "Error when calling ContactsApi->v1_update_contact_attributes_whatsapp_number_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **whatsapp_number** | **String** | WhatsApp Number with country code. Example, 85264318721 |  |
| **update_custom_params_model** | [**UpdateCustomParamsModel**](UpdateCustomParamsModel.md) | Contact Attributes | [optional] |

### Return type

nil (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
- **Accept**: Not defined

