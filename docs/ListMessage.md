# WatiClient::ListMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **header** | **String** |  | [optional] |
| **body** | **String** |  | [optional] |
| **footer** | **String** |  | [optional] |
| **button_text** | **String** |  | [optional] |
| **sections** | [**Array&lt;ListMessageSection&gt;**](ListMessageSection.md) |  | [optional] |

## Example

```ruby
require 'wati_client'

instance = WatiClient::ListMessage.new(
  header: null,
  body: null,
  footer: null,
  button_text: null,
  sections: null
)
```

