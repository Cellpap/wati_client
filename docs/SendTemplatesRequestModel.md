# WatiClient::SendTemplatesRequestModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template_name** | **String** |  |  |
| **broadcast_name** | **String** |  |  |
| **receivers** | [**Array&lt;TemplateReceiver&gt;**](TemplateReceiver.md) |  |  |

## Example

```ruby
require 'wati_client'

instance = WatiClient::SendTemplatesRequestModel.new(
  template_name: null,
  broadcast_name: null,
  receivers: null
)
```

