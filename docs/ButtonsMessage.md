# WatiClient::ButtonsMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **header** | [**ButtonsMessageHeader**](ButtonsMessageHeader.md) |  | [optional] |
| **body** | **String** |  | [optional] |
| **footer** | **String** |  | [optional] |
| **buttons** | [**Array&lt;ButtonsMessageButtons&gt;**](ButtonsMessageButtons.md) |  | [optional] |

## Example

```ruby
require 'wati_client'

instance = WatiClient::ButtonsMessage.new(
  header: null,
  body: null,
  footer: null,
  buttons: null
)
```

