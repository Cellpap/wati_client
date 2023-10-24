=begin
#WhatsApp chat API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.0.1

=end

# Common files
require 'wati_client/api_client'
require 'wati_client/api_error'
require 'wati_client/version'
require 'wati_client/configuration'

# Models
require 'wati_client/models/buttons_message'
require 'wati_client/models/buttons_message_buttons'
require 'wati_client/models/buttons_message_header'
require 'wati_client/models/buttons_message_header_media'
require 'wati_client/models/custom_param'
require 'wati_client/models/list_message'
require 'wati_client/models/list_message_section'
require 'wati_client/models/list_message_section_row'
require 'wati_client/models/new_contact_model'
require 'wati_client/models/parameters_model'
require 'wati_client/models/send_templates_request_model'
require 'wati_client/models/source_type'
require 'wati_client/models/template_receiver'
require 'wati_client/models/update_custom_params_model'
require 'wati_client/models/wa_send_template_request_model'

# APIs
require 'wati_client/api/accounts_api'
require 'wati_client/api/contacts_api'
require 'wati_client/api/inbox_api'
require 'wati_client/api/media_api'
require 'wati_client/api/messages_api'
require 'wati_client/api/payments_api'

module WatiClient
  class << self
    # Customize default settings for the SDK using block.
    #   WatiClient.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
