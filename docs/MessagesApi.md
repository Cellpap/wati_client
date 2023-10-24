# WatiClient::MessagesApi

All URIs are relative to *https://app-server.wati.io/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**v1_get_message_templates_get**](MessagesApi.md#v1_get_message_templates_get) | **GET** /v1/getMessageTemplates | Get Message Templates |
| [**v1_get_messages_whatsapp_number_get**](MessagesApi.md#v1_get_messages_whatsapp_number_get) | **GET** /v1/getMessages/{whatsappNumber} | Get Messages by whatsapp number |
| [**v1_send_interactive_buttons_message_post**](MessagesApi.md#v1_send_interactive_buttons_message_post) | **POST** /v1/sendInteractiveButtonsMessage | Send Interactive Buttons Message |
| [**v1_send_interactive_list_message_post**](MessagesApi.md#v1_send_interactive_list_message_post) | **POST** /v1/sendInteractiveListMessage | Send Interactive List Message |
| [**v1_send_session_file_whatsapp_number_post**](MessagesApi.md#v1_send_session_file_whatsapp_number_post) | **POST** /v1/sendSessionFile/{whatsappNumber} | Send File to opened session |
| [**v1_send_session_message_whatsapp_number_post**](MessagesApi.md#v1_send_session_message_whatsapp_number_post) | **POST** /v1/sendSessionMessage/{whatsappNumber} | Send Message to opened session |
| [**v1_send_template_message_csv_post**](MessagesApi.md#v1_send_template_message_csv_post) | **POST** /v1/sendTemplateMessageCSV | Send template messages(CSV) |
| [**v1_send_template_message_post**](MessagesApi.md#v1_send_template_message_post) | **POST** /v1/sendTemplateMessage | Send template message |
| [**v1_send_template_messages_post**](MessagesApi.md#v1_send_template_messages_post) | **POST** /v1/sendTemplateMessages | Send template messages |
| [**v2_send_template_message_post**](MessagesApi.md#v2_send_template_message_post) | **POST** /v2/sendTemplateMessage | Send template message (Beta) |
| [**v2_send_template_messages_post**](MessagesApi.md#v2_send_template_messages_post) | **POST** /v2/sendTemplateMessages | Send template messages (Beta) |


## v1_get_message_templates_get

> v1_get_message_templates_get(opts)

Get Message Templates

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

api_instance = WatiClient::MessagesApi.new
opts = {
  page_size: 56, # Integer | Page Size
  page_number: 56 # Integer | Page Number
}

begin
  # Get Message Templates
  api_instance.v1_get_message_templates_get(opts)
rescue WatiClient::ApiError => e
  puts "Error when calling MessagesApi->v1_get_message_templates_get: #{e}"
end
```

#### Using the v1_get_message_templates_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> v1_get_message_templates_get_with_http_info(opts)

```ruby
begin
  # Get Message Templates
  data, status_code, headers = api_instance.v1_get_message_templates_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue WatiClient::ApiError => e
  puts "Error when calling MessagesApi->v1_get_message_templates_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page_size** | **Integer** | Page Size | [optional] |
| **page_number** | **Integer** | Page Number | [optional] |

### Return type

nil (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## v1_get_messages_whatsapp_number_get

> v1_get_messages_whatsapp_number_get(whatsapp_number, opts)

Get Messages by whatsapp number

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

api_instance = WatiClient::MessagesApi.new
whatsapp_number = 'whatsapp_number_example' # String | WhatsApp Number with country code. Example, 85264318721
opts = {
  page_size: 56, # Integer | Page Size
  page_number: 56 # Integer | Page Number
}

begin
  # Get Messages by whatsapp number
  api_instance.v1_get_messages_whatsapp_number_get(whatsapp_number, opts)
rescue WatiClient::ApiError => e
  puts "Error when calling MessagesApi->v1_get_messages_whatsapp_number_get: #{e}"
end
```

#### Using the v1_get_messages_whatsapp_number_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> v1_get_messages_whatsapp_number_get_with_http_info(whatsapp_number, opts)

```ruby
begin
  # Get Messages by whatsapp number
  data, status_code, headers = api_instance.v1_get_messages_whatsapp_number_get_with_http_info(whatsapp_number, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue WatiClient::ApiError => e
  puts "Error when calling MessagesApi->v1_get_messages_whatsapp_number_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **whatsapp_number** | **String** | WhatsApp Number with country code. Example, 85264318721 |  |
| **page_size** | **Integer** | Page Size | [optional] |
| **page_number** | **Integer** | Page Number | [optional] |

### Return type

nil (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## v1_send_interactive_buttons_message_post

> v1_send_interactive_buttons_message_post(whatsapp_number, opts)

Send Interactive Buttons Message

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

api_instance = WatiClient::MessagesApi.new
whatsapp_number = 'whatsapp_number_example' # String | WhatsApp Number with country code. Example, 85264318721
opts = {
  buttons_message: WatiClient::ButtonsMessage.new # ButtonsMessage | <u>    <b>InteractiveButtonsMessage</b>  </u>  <br />  <br />  <b>Header:</b>  <br />                  {<br />                    \"type\": \"<b>Text</b> or <b>Video</b> or <b>Image</b> or <b>Document</b>\",<br />                    \"text\":\"header text for type <b>Text</b>\",<br />                    \"media\": {<br />                          \"url\":\"https://...\", // (media obj should be not empty for non <b>Text</b> types)<br />                          \"fileName\": \"MyDoc.pdf\"} // (this field is only <b>Document</b> type) <br />                  }<br /><b>Buttons:</b><br /> allowed count: <b>1-3</b><br /><b>Allowed characters length after mapping:</b><br />                  header text: <b>60</b><br />                  body text: <b>1024</b><br />                  footer text: <b>60</b><br />                  button's text: <b>20</b><br />
}

begin
  # Send Interactive Buttons Message
  api_instance.v1_send_interactive_buttons_message_post(whatsapp_number, opts)
rescue WatiClient::ApiError => e
  puts "Error when calling MessagesApi->v1_send_interactive_buttons_message_post: #{e}"
end
```

#### Using the v1_send_interactive_buttons_message_post_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> v1_send_interactive_buttons_message_post_with_http_info(whatsapp_number, opts)

```ruby
begin
  # Send Interactive Buttons Message
  data, status_code, headers = api_instance.v1_send_interactive_buttons_message_post_with_http_info(whatsapp_number, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue WatiClient::ApiError => e
  puts "Error when calling MessagesApi->v1_send_interactive_buttons_message_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **whatsapp_number** | **String** | WhatsApp Number with country code. Example, 85264318721 |  |
| **buttons_message** | [**ButtonsMessage**](ButtonsMessage.md) | &lt;u&gt;    &lt;b&gt;InteractiveButtonsMessage&lt;/b&gt;  &lt;/u&gt;  &lt;br /&gt;  &lt;br /&gt;  &lt;b&gt;Header:&lt;/b&gt;  &lt;br /&gt;                  {&lt;br /&gt;                    \&quot;type\&quot;: \&quot;&lt;b&gt;Text&lt;/b&gt; or &lt;b&gt;Video&lt;/b&gt; or &lt;b&gt;Image&lt;/b&gt; or &lt;b&gt;Document&lt;/b&gt;\&quot;,&lt;br /&gt;                    \&quot;text\&quot;:\&quot;header text for type &lt;b&gt;Text&lt;/b&gt;\&quot;,&lt;br /&gt;                    \&quot;media\&quot;: {&lt;br /&gt;                          \&quot;url\&quot;:\&quot;https://...\&quot;, // (media obj should be not empty for non &lt;b&gt;Text&lt;/b&gt; types)&lt;br /&gt;                          \&quot;fileName\&quot;: \&quot;MyDoc.pdf\&quot;} // (this field is only &lt;b&gt;Document&lt;/b&gt; type) &lt;br /&gt;                  }&lt;br /&gt;&lt;b&gt;Buttons:&lt;/b&gt;&lt;br /&gt; allowed count: &lt;b&gt;1-3&lt;/b&gt;&lt;br /&gt;&lt;b&gt;Allowed characters length after mapping:&lt;/b&gt;&lt;br /&gt;                  header text: &lt;b&gt;60&lt;/b&gt;&lt;br /&gt;                  body text: &lt;b&gt;1024&lt;/b&gt;&lt;br /&gt;                  footer text: &lt;b&gt;60&lt;/b&gt;&lt;br /&gt;                  button&#39;s text: &lt;b&gt;20&lt;/b&gt;&lt;br /&gt; | [optional] |

### Return type

nil (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
- **Accept**: Not defined


## v1_send_interactive_list_message_post

> v1_send_interactive_list_message_post(whatsapp_number, opts)

Send Interactive List Message

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

api_instance = WatiClient::MessagesApi.new
whatsapp_number = 'whatsapp_number_example' # String | WhatsApp Number with country code. Example, 85264318721
opts = {
  list_message: WatiClient::ListMessage.new # ListMessage | <u>    <b>InteractiveListMessage</b>  </u>  <br />  <br />  <b>Rows:</b>  <br /> allowed count: <b>1-10</b><br /><b>Allowed characters length after mapping:</b><br />                  header text: <b>60</b><br />                  body text: <b>1024</b><br />                  footer text: <b>60</b><br />                  section title: <b>24</b><br />                  row title: <b>24</b><br />                  row description: <b>72</b><br />
}

begin
  # Send Interactive List Message
  api_instance.v1_send_interactive_list_message_post(whatsapp_number, opts)
rescue WatiClient::ApiError => e
  puts "Error when calling MessagesApi->v1_send_interactive_list_message_post: #{e}"
end
```

#### Using the v1_send_interactive_list_message_post_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> v1_send_interactive_list_message_post_with_http_info(whatsapp_number, opts)

```ruby
begin
  # Send Interactive List Message
  data, status_code, headers = api_instance.v1_send_interactive_list_message_post_with_http_info(whatsapp_number, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue WatiClient::ApiError => e
  puts "Error when calling MessagesApi->v1_send_interactive_list_message_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **whatsapp_number** | **String** | WhatsApp Number with country code. Example, 85264318721 |  |
| **list_message** | [**ListMessage**](ListMessage.md) | &lt;u&gt;    &lt;b&gt;InteractiveListMessage&lt;/b&gt;  &lt;/u&gt;  &lt;br /&gt;  &lt;br /&gt;  &lt;b&gt;Rows:&lt;/b&gt;  &lt;br /&gt; allowed count: &lt;b&gt;1-10&lt;/b&gt;&lt;br /&gt;&lt;b&gt;Allowed characters length after mapping:&lt;/b&gt;&lt;br /&gt;                  header text: &lt;b&gt;60&lt;/b&gt;&lt;br /&gt;                  body text: &lt;b&gt;1024&lt;/b&gt;&lt;br /&gt;                  footer text: &lt;b&gt;60&lt;/b&gt;&lt;br /&gt;                  section title: &lt;b&gt;24&lt;/b&gt;&lt;br /&gt;                  row title: &lt;b&gt;24&lt;/b&gt;&lt;br /&gt;                  row description: &lt;b&gt;72&lt;/b&gt;&lt;br /&gt; | [optional] |

### Return type

nil (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
- **Accept**: Not defined


## v1_send_session_file_whatsapp_number_post

> v1_send_session_file_whatsapp_number_post(whatsapp_number, file, opts)

Send File to opened session

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

api_instance = WatiClient::MessagesApi.new
whatsapp_number = 'whatsapp_number_example' # String | WhatsApp Number with country code. Example, 85264318721
file = File.new('/path/to/some/file') # File | 
opts = {
  caption: 'caption_example' # String | (optional)
}

begin
  # Send File to opened session
  api_instance.v1_send_session_file_whatsapp_number_post(whatsapp_number, file, opts)
rescue WatiClient::ApiError => e
  puts "Error when calling MessagesApi->v1_send_session_file_whatsapp_number_post: #{e}"
end
```

#### Using the v1_send_session_file_whatsapp_number_post_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> v1_send_session_file_whatsapp_number_post_with_http_info(whatsapp_number, file, opts)

```ruby
begin
  # Send File to opened session
  data, status_code, headers = api_instance.v1_send_session_file_whatsapp_number_post_with_http_info(whatsapp_number, file, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue WatiClient::ApiError => e
  puts "Error when calling MessagesApi->v1_send_session_file_whatsapp_number_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **whatsapp_number** | **String** | WhatsApp Number with country code. Example, 85264318721 |  |
| **file** | **File** |  |  |
| **caption** | **String** | (optional) | [optional] |

### Return type

nil (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: Not defined


## v1_send_session_message_whatsapp_number_post

> v1_send_session_message_whatsapp_number_post(whatsapp_number, message_text)

Send Message to opened session

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

api_instance = WatiClient::MessagesApi.new
whatsapp_number = 'whatsapp_number_example' # String | WhatsApp Number with country code. Example, 85264318721
message_text = 'message_text_example' # String | Message to send

begin
  # Send Message to opened session
  api_instance.v1_send_session_message_whatsapp_number_post(whatsapp_number, message_text)
rescue WatiClient::ApiError => e
  puts "Error when calling MessagesApi->v1_send_session_message_whatsapp_number_post: #{e}"
end
```

#### Using the v1_send_session_message_whatsapp_number_post_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> v1_send_session_message_whatsapp_number_post_with_http_info(whatsapp_number, message_text)

```ruby
begin
  # Send Message to opened session
  data, status_code, headers = api_instance.v1_send_session_message_whatsapp_number_post_with_http_info(whatsapp_number, message_text)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue WatiClient::ApiError => e
  puts "Error when calling MessagesApi->v1_send_session_message_whatsapp_number_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **whatsapp_number** | **String** | WhatsApp Number with country code. Example, 85264318721 |  |
| **message_text** | **String** | Message to send |  |

### Return type

nil (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## v1_send_template_message_csv_post

> v1_send_template_message_csv_post(template_name, broadcast_name, whatsapp_numbers_csv)

Send template messages(CSV)

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

api_instance = WatiClient::MessagesApi.new
template_name = 'template_name_example' # String | Defined in the Template Message under Broadcast
broadcast_name = 'broadcast_name_example' # String | Broadcast Name
whatsapp_numbers_csv = File.new('/path/to/some/file') # File | 

begin
  # Send template messages(CSV)
  api_instance.v1_send_template_message_csv_post(template_name, broadcast_name, whatsapp_numbers_csv)
rescue WatiClient::ApiError => e
  puts "Error when calling MessagesApi->v1_send_template_message_csv_post: #{e}"
end
```

#### Using the v1_send_template_message_csv_post_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> v1_send_template_message_csv_post_with_http_info(template_name, broadcast_name, whatsapp_numbers_csv)

```ruby
begin
  # Send template messages(CSV)
  data, status_code, headers = api_instance.v1_send_template_message_csv_post_with_http_info(template_name, broadcast_name, whatsapp_numbers_csv)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue WatiClient::ApiError => e
  puts "Error when calling MessagesApi->v1_send_template_message_csv_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template_name** | **String** | Defined in the Template Message under Broadcast |  |
| **broadcast_name** | **String** | Broadcast Name |  |
| **whatsapp_numbers_csv** | **File** |  |  |

### Return type

nil (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: Not defined


## v1_send_template_message_post

> v1_send_template_message_post(whatsapp_number, opts)

Send template message

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

api_instance = WatiClient::MessagesApi.new
whatsapp_number = 'whatsapp_number_example' # String | WhatsApp Number with country code. Example, 85264318721
opts = {
  wa_send_template_request_model: WatiClient::WASendTemplateRequestModel.new({template_name: 'template_name_example', broadcast_name: 'broadcast_name_example', parameters: [WatiClient::ParametersModel.new({name: 'name_example', value: 'value_example'})]}) # WASendTemplateRequestModel | WhatsAppSendTemplateRequest request
}

begin
  # Send template message
  api_instance.v1_send_template_message_post(whatsapp_number, opts)
rescue WatiClient::ApiError => e
  puts "Error when calling MessagesApi->v1_send_template_message_post: #{e}"
end
```

#### Using the v1_send_template_message_post_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> v1_send_template_message_post_with_http_info(whatsapp_number, opts)

```ruby
begin
  # Send template message
  data, status_code, headers = api_instance.v1_send_template_message_post_with_http_info(whatsapp_number, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue WatiClient::ApiError => e
  puts "Error when calling MessagesApi->v1_send_template_message_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **whatsapp_number** | **String** | WhatsApp Number with country code. Example, 85264318721 |  |
| **wa_send_template_request_model** | [**WASendTemplateRequestModel**](WASendTemplateRequestModel.md) | WhatsAppSendTemplateRequest request | [optional] |

### Return type

nil (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
- **Accept**: Not defined


## v1_send_template_messages_post

> v1_send_template_messages_post(opts)

Send template messages

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

api_instance = WatiClient::MessagesApi.new
opts = {
  send_templates_request_model: WatiClient::SendTemplatesRequestModel.new({template_name: 'template_name_example', broadcast_name: 'broadcast_name_example', receivers: [WatiClient::TemplateReceiver.new({whatsapp_number: 'whatsapp_number_example', custom_params: [WatiClient::CustomParam.new]})]}) # SendTemplatesRequestModel | SendTemplatesRequestModel request
}

begin
  # Send template messages
  api_instance.v1_send_template_messages_post(opts)
rescue WatiClient::ApiError => e
  puts "Error when calling MessagesApi->v1_send_template_messages_post: #{e}"
end
```

#### Using the v1_send_template_messages_post_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> v1_send_template_messages_post_with_http_info(opts)

```ruby
begin
  # Send template messages
  data, status_code, headers = api_instance.v1_send_template_messages_post_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue WatiClient::ApiError => e
  puts "Error when calling MessagesApi->v1_send_template_messages_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **send_templates_request_model** | [**SendTemplatesRequestModel**](SendTemplatesRequestModel.md) | SendTemplatesRequestModel request | [optional] |

### Return type

nil (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
- **Accept**: Not defined


## v2_send_template_message_post

> v2_send_template_message_post(whatsapp_number, opts)

Send template message (Beta)

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

api_instance = WatiClient::MessagesApi.new
whatsapp_number = 'whatsapp_number_example' # String | WhatsApp Number with country code. Example, 85264318721
opts = {
  wa_send_template_request_model: WatiClient::WASendTemplateRequestModel.new({template_name: 'template_name_example', broadcast_name: 'broadcast_name_example', parameters: [WatiClient::ParametersModel.new({name: 'name_example', value: 'value_example'})]}) # WASendTemplateRequestModel | WhatsAppSendTemplateRequest request
}

begin
  # Send template message (Beta)
  api_instance.v2_send_template_message_post(whatsapp_number, opts)
rescue WatiClient::ApiError => e
  puts "Error when calling MessagesApi->v2_send_template_message_post: #{e}"
end
```

#### Using the v2_send_template_message_post_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> v2_send_template_message_post_with_http_info(whatsapp_number, opts)

```ruby
begin
  # Send template message (Beta)
  data, status_code, headers = api_instance.v2_send_template_message_post_with_http_info(whatsapp_number, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue WatiClient::ApiError => e
  puts "Error when calling MessagesApi->v2_send_template_message_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **whatsapp_number** | **String** | WhatsApp Number with country code. Example, 85264318721 |  |
| **wa_send_template_request_model** | [**WASendTemplateRequestModel**](WASendTemplateRequestModel.md) | WhatsAppSendTemplateRequest request | [optional] |

### Return type

nil (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
- **Accept**: Not defined


## v2_send_template_messages_post

> v2_send_template_messages_post(opts)

Send template messages (Beta)

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

api_instance = WatiClient::MessagesApi.new
opts = {
  send_templates_request_model: WatiClient::SendTemplatesRequestModel.new({template_name: 'template_name_example', broadcast_name: 'broadcast_name_example', receivers: [WatiClient::TemplateReceiver.new({whatsapp_number: 'whatsapp_number_example', custom_params: [WatiClient::CustomParam.new]})]}) # SendTemplatesRequestModel | SendTemplatesRequestModel request
}

begin
  # Send template messages (Beta)
  api_instance.v2_send_template_messages_post(opts)
rescue WatiClient::ApiError => e
  puts "Error when calling MessagesApi->v2_send_template_messages_post: #{e}"
end
```

#### Using the v2_send_template_messages_post_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> v2_send_template_messages_post_with_http_info(opts)

```ruby
begin
  # Send template messages (Beta)
  data, status_code, headers = api_instance.v2_send_template_messages_post_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue WatiClient::ApiError => e
  puts "Error when calling MessagesApi->v2_send_template_messages_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **send_templates_request_model** | [**SendTemplatesRequestModel**](SendTemplatesRequestModel.md) | SendTemplatesRequestModel request | [optional] |

### Return type

nil (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
- **Accept**: Not defined

