=begin
#WhatsApp chat API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.0.1

=end

require 'cgi'

module WatiClient
  class MessagesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get Message Templates
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page_size Page Size
    # @option opts [Integer] :page_number Page Number
    # @return [nil]
    def v1_get_message_templates_get(opts = {})
      v1_get_message_templates_get_with_http_info(opts)
      nil
    end

    # Get Message Templates
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page_size Page Size
    # @option opts [Integer] :page_number Page Number
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def v1_get_message_templates_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MessagesApi.v1_get_message_templates_get ...'
      end
      # resource path
      local_var_path = '/v1/getMessageTemplates'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'pageSize'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'pageNumber'] = opts[:'page_number'] if !opts[:'page_number'].nil?

      # header parameters
      header_params = opts[:header_params] || {}

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Bearer']

      new_options = opts.merge(
        :operation => :"MessagesApi.v1_get_message_templates_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MessagesApi#v1_get_message_templates_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Messages by whatsapp number
    # @param whatsapp_number [String] WhatsApp Number with country code. Example, 85264318721
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page_size Page Size
    # @option opts [Integer] :page_number Page Number
    # @return [nil]
    def v1_get_messages_whatsapp_number_get(whatsapp_number, opts = {})
      v1_get_messages_whatsapp_number_get_with_http_info(whatsapp_number, opts)
      nil
    end

    # Get Messages by whatsapp number
    # @param whatsapp_number [String] WhatsApp Number with country code. Example, 85264318721
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page_size Page Size
    # @option opts [Integer] :page_number Page Number
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def v1_get_messages_whatsapp_number_get_with_http_info(whatsapp_number, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MessagesApi.v1_get_messages_whatsapp_number_get ...'
      end
      # verify the required parameter 'whatsapp_number' is set
      if @api_client.config.client_side_validation && whatsapp_number.nil?
        fail ArgumentError, "Missing the required parameter 'whatsapp_number' when calling MessagesApi.v1_get_messages_whatsapp_number_get"
      end
      # resource path
      local_var_path = '/v1/getMessages/{whatsappNumber}'.sub('{' + 'whatsappNumber' + '}', CGI.escape(whatsapp_number.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'pageSize'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'pageNumber'] = opts[:'page_number'] if !opts[:'page_number'].nil?

      # header parameters
      header_params = opts[:header_params] || {}

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Bearer']

      new_options = opts.merge(
        :operation => :"MessagesApi.v1_get_messages_whatsapp_number_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MessagesApi#v1_get_messages_whatsapp_number_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Send Interactive Buttons Message
    # @param whatsapp_number [String] WhatsApp Number with country code. Example, 85264318721
    # @param [Hash] opts the optional parameters
    # @option opts [ButtonsMessage] :buttons_message &lt;u&gt;    &lt;b&gt;InteractiveButtonsMessage&lt;/b&gt;  &lt;/u&gt;  &lt;br /&gt;  &lt;br /&gt;  &lt;b&gt;Header:&lt;/b&gt;  &lt;br /&gt;                  {&lt;br /&gt;                    \&quot;type\&quot;: \&quot;&lt;b&gt;Text&lt;/b&gt; or &lt;b&gt;Video&lt;/b&gt; or &lt;b&gt;Image&lt;/b&gt; or &lt;b&gt;Document&lt;/b&gt;\&quot;,&lt;br /&gt;                    \&quot;text\&quot;:\&quot;header text for type &lt;b&gt;Text&lt;/b&gt;\&quot;,&lt;br /&gt;                    \&quot;media\&quot;: {&lt;br /&gt;                          \&quot;url\&quot;:\&quot;https://...\&quot;, // (media obj should be not empty for non &lt;b&gt;Text&lt;/b&gt; types)&lt;br /&gt;                          \&quot;fileName\&quot;: \&quot;MyDoc.pdf\&quot;} // (this field is only &lt;b&gt;Document&lt;/b&gt; type) &lt;br /&gt;                  }&lt;br /&gt;&lt;b&gt;Buttons:&lt;/b&gt;&lt;br /&gt; allowed count: &lt;b&gt;1-3&lt;/b&gt;&lt;br /&gt;&lt;b&gt;Allowed characters length after mapping:&lt;/b&gt;&lt;br /&gt;                  header text: &lt;b&gt;60&lt;/b&gt;&lt;br /&gt;                  body text: &lt;b&gt;1024&lt;/b&gt;&lt;br /&gt;                  footer text: &lt;b&gt;60&lt;/b&gt;&lt;br /&gt;                  button&#39;s text: &lt;b&gt;20&lt;/b&gt;&lt;br /&gt;
    # @return [nil]
    def v1_send_interactive_buttons_message_post(whatsapp_number, opts = {})
      v1_send_interactive_buttons_message_post_with_http_info(whatsapp_number, opts)
      nil
    end

    # Send Interactive Buttons Message
    # @param whatsapp_number [String] WhatsApp Number with country code. Example, 85264318721
    # @param [Hash] opts the optional parameters
    # @option opts [ButtonsMessage] :buttons_message &lt;u&gt;    &lt;b&gt;InteractiveButtonsMessage&lt;/b&gt;  &lt;/u&gt;  &lt;br /&gt;  &lt;br /&gt;  &lt;b&gt;Header:&lt;/b&gt;  &lt;br /&gt;                  {&lt;br /&gt;                    \&quot;type\&quot;: \&quot;&lt;b&gt;Text&lt;/b&gt; or &lt;b&gt;Video&lt;/b&gt; or &lt;b&gt;Image&lt;/b&gt; or &lt;b&gt;Document&lt;/b&gt;\&quot;,&lt;br /&gt;                    \&quot;text\&quot;:\&quot;header text for type &lt;b&gt;Text&lt;/b&gt;\&quot;,&lt;br /&gt;                    \&quot;media\&quot;: {&lt;br /&gt;                          \&quot;url\&quot;:\&quot;https://...\&quot;, // (media obj should be not empty for non &lt;b&gt;Text&lt;/b&gt; types)&lt;br /&gt;                          \&quot;fileName\&quot;: \&quot;MyDoc.pdf\&quot;} // (this field is only &lt;b&gt;Document&lt;/b&gt; type) &lt;br /&gt;                  }&lt;br /&gt;&lt;b&gt;Buttons:&lt;/b&gt;&lt;br /&gt; allowed count: &lt;b&gt;1-3&lt;/b&gt;&lt;br /&gt;&lt;b&gt;Allowed characters length after mapping:&lt;/b&gt;&lt;br /&gt;                  header text: &lt;b&gt;60&lt;/b&gt;&lt;br /&gt;                  body text: &lt;b&gt;1024&lt;/b&gt;&lt;br /&gt;                  footer text: &lt;b&gt;60&lt;/b&gt;&lt;br /&gt;                  button&#39;s text: &lt;b&gt;20&lt;/b&gt;&lt;br /&gt;
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def v1_send_interactive_buttons_message_post_with_http_info(whatsapp_number, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MessagesApi.v1_send_interactive_buttons_message_post ...'
      end
      # verify the required parameter 'whatsapp_number' is set
      if @api_client.config.client_side_validation && whatsapp_number.nil?
        fail ArgumentError, "Missing the required parameter 'whatsapp_number' when calling MessagesApi.v1_send_interactive_buttons_message_post"
      end
      # resource path
      local_var_path = '/v1/sendInteractiveButtonsMessage'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'whatsappNumber'] = whatsapp_number

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json-patch+json', 'application/json', 'text/json', 'application/*+json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'buttons_message'])

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Bearer']

      new_options = opts.merge(
        :operation => :"MessagesApi.v1_send_interactive_buttons_message_post",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MessagesApi#v1_send_interactive_buttons_message_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Send Interactive List Message
    # @param whatsapp_number [String] WhatsApp Number with country code. Example, 85264318721
    # @param [Hash] opts the optional parameters
    # @option opts [ListMessage] :list_message &lt;u&gt;    &lt;b&gt;InteractiveListMessage&lt;/b&gt;  &lt;/u&gt;  &lt;br /&gt;  &lt;br /&gt;  &lt;b&gt;Rows:&lt;/b&gt;  &lt;br /&gt; allowed count: &lt;b&gt;1-10&lt;/b&gt;&lt;br /&gt;&lt;b&gt;Allowed characters length after mapping:&lt;/b&gt;&lt;br /&gt;                  header text: &lt;b&gt;60&lt;/b&gt;&lt;br /&gt;                  body text: &lt;b&gt;1024&lt;/b&gt;&lt;br /&gt;                  footer text: &lt;b&gt;60&lt;/b&gt;&lt;br /&gt;                  section title: &lt;b&gt;24&lt;/b&gt;&lt;br /&gt;                  row title: &lt;b&gt;24&lt;/b&gt;&lt;br /&gt;                  row description: &lt;b&gt;72&lt;/b&gt;&lt;br /&gt;
    # @return [nil]
    def v1_send_interactive_list_message_post(whatsapp_number, opts = {})
      v1_send_interactive_list_message_post_with_http_info(whatsapp_number, opts)
      nil
    end

    # Send Interactive List Message
    # @param whatsapp_number [String] WhatsApp Number with country code. Example, 85264318721
    # @param [Hash] opts the optional parameters
    # @option opts [ListMessage] :list_message &lt;u&gt;    &lt;b&gt;InteractiveListMessage&lt;/b&gt;  &lt;/u&gt;  &lt;br /&gt;  &lt;br /&gt;  &lt;b&gt;Rows:&lt;/b&gt;  &lt;br /&gt; allowed count: &lt;b&gt;1-10&lt;/b&gt;&lt;br /&gt;&lt;b&gt;Allowed characters length after mapping:&lt;/b&gt;&lt;br /&gt;                  header text: &lt;b&gt;60&lt;/b&gt;&lt;br /&gt;                  body text: &lt;b&gt;1024&lt;/b&gt;&lt;br /&gt;                  footer text: &lt;b&gt;60&lt;/b&gt;&lt;br /&gt;                  section title: &lt;b&gt;24&lt;/b&gt;&lt;br /&gt;                  row title: &lt;b&gt;24&lt;/b&gt;&lt;br /&gt;                  row description: &lt;b&gt;72&lt;/b&gt;&lt;br /&gt;
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def v1_send_interactive_list_message_post_with_http_info(whatsapp_number, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MessagesApi.v1_send_interactive_list_message_post ...'
      end
      # verify the required parameter 'whatsapp_number' is set
      if @api_client.config.client_side_validation && whatsapp_number.nil?
        fail ArgumentError, "Missing the required parameter 'whatsapp_number' when calling MessagesApi.v1_send_interactive_list_message_post"
      end
      # resource path
      local_var_path = '/v1/sendInteractiveListMessage'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'whatsappNumber'] = whatsapp_number

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json-patch+json', 'application/json', 'text/json', 'application/*+json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'list_message'])

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Bearer']

      new_options = opts.merge(
        :operation => :"MessagesApi.v1_send_interactive_list_message_post",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MessagesApi#v1_send_interactive_list_message_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Send File to opened session
    # @param whatsapp_number [String] WhatsApp Number with country code. Example, 85264318721
    # @param file [File] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :caption (optional)
    # @return [nil]
    def v1_send_session_file_whatsapp_number_post(whatsapp_number, file, opts = {})
      v1_send_session_file_whatsapp_number_post_with_http_info(whatsapp_number, file, opts)
      nil
    end

    # Send File to opened session
    # @param whatsapp_number [String] WhatsApp Number with country code. Example, 85264318721
    # @param file [File] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :caption (optional)
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def v1_send_session_file_whatsapp_number_post_with_http_info(whatsapp_number, file, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MessagesApi.v1_send_session_file_whatsapp_number_post ...'
      end
      # verify the required parameter 'whatsapp_number' is set
      if @api_client.config.client_side_validation && whatsapp_number.nil?
        fail ArgumentError, "Missing the required parameter 'whatsapp_number' when calling MessagesApi.v1_send_session_file_whatsapp_number_post"
      end
      # verify the required parameter 'file' is set
      if @api_client.config.client_side_validation && file.nil?
        fail ArgumentError, "Missing the required parameter 'file' when calling MessagesApi.v1_send_session_file_whatsapp_number_post"
      end
      # resource path
      local_var_path = '/v1/sendSessionFile/{whatsappNumber}'.sub('{' + 'whatsappNumber' + '}', CGI.escape(whatsapp_number.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'caption'] = opts[:'caption'] if !opts[:'caption'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['multipart/form-data'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}
      form_params['file'] = file

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Bearer']

      new_options = opts.merge(
        :operation => :"MessagesApi.v1_send_session_file_whatsapp_number_post",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MessagesApi#v1_send_session_file_whatsapp_number_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Send Message to opened session
    # @param whatsapp_number [String] WhatsApp Number with country code. Example, 85264318721
    # @param message_text [String] Message to send
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def v1_send_session_message_whatsapp_number_post(whatsapp_number, message_text, opts = {})
      data, status_code, headers = v1_send_session_message_whatsapp_number_post_with_http_info(whatsapp_number, message_text, opts)
      WatiClient::Response.new(data, status_code, headers)
    end

    # Send Message to opened session
    # @param whatsapp_number [String] WhatsApp Number with country code. Example, 85264318721
    # @param message_text [String] Message to send
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def v1_send_session_message_whatsapp_number_post_with_http_info(whatsapp_number, message_text, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MessagesApi.v1_send_session_message_whatsapp_number_post ...'
      end
      # verify the required parameter 'whatsapp_number' is set
      if @api_client.config.client_side_validation && whatsapp_number.nil?
        fail ArgumentError, "Missing the required parameter 'whatsapp_number' when calling MessagesApi.v1_send_session_message_whatsapp_number_post"
      end
      # verify the required parameter 'message_text' is set
      if @api_client.config.client_side_validation && message_text.nil?
        fail ArgumentError, "Missing the required parameter 'message_text' when calling MessagesApi.v1_send_session_message_whatsapp_number_post"
      end
      if @api_client.config.client_side_validation && message_text.to_s.length > 4096
        fail ArgumentError, 'invalid value for "message_text" when calling MessagesApi.v1_send_session_message_whatsapp_number_post, the character length must be smaller than or equal to 4096.'
      end

      if @api_client.config.client_side_validation && message_text.to_s.length < 0
        fail ArgumentError, 'invalid value for "message_text" when calling MessagesApi.v1_send_session_message_whatsapp_number_post, the character length must be great than or equal to 0.'
      end

      # resource path
      local_var_path = '/v1/sendSessionMessage/{whatsappNumber}'.sub('{' + 'whatsappNumber' + '}', CGI.escape(whatsapp_number.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'messageText'] = message_text

      # header parameters
      header_params = opts[:header_params] || {}

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Bearer']

      new_options = opts.merge(
        :operation => :"MessagesApi.v1_send_session_message_whatsapp_number_post",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MessagesApi#v1_send_session_message_whatsapp_number_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Send template messages(CSV)
    # @param template_name [String] Defined in the Template Message under Broadcast
    # @param broadcast_name [String] Broadcast Name
    # @param whatsapp_numbers_csv [File] 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def v1_send_template_message_csv_post(template_name, broadcast_name, whatsapp_numbers_csv, opts = {})
      v1_send_template_message_csv_post_with_http_info(template_name, broadcast_name, whatsapp_numbers_csv, opts)
      nil
    end

    # Send template messages(CSV)
    # @param template_name [String] Defined in the Template Message under Broadcast
    # @param broadcast_name [String] Broadcast Name
    # @param whatsapp_numbers_csv [File] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def v1_send_template_message_csv_post_with_http_info(template_name, broadcast_name, whatsapp_numbers_csv, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MessagesApi.v1_send_template_message_csv_post ...'
      end
      # verify the required parameter 'template_name' is set
      if @api_client.config.client_side_validation && template_name.nil?
        fail ArgumentError, "Missing the required parameter 'template_name' when calling MessagesApi.v1_send_template_message_csv_post"
      end
      # verify the required parameter 'broadcast_name' is set
      if @api_client.config.client_side_validation && broadcast_name.nil?
        fail ArgumentError, "Missing the required parameter 'broadcast_name' when calling MessagesApi.v1_send_template_message_csv_post"
      end
      # verify the required parameter 'whatsapp_numbers_csv' is set
      if @api_client.config.client_side_validation && whatsapp_numbers_csv.nil?
        fail ArgumentError, "Missing the required parameter 'whatsapp_numbers_csv' when calling MessagesApi.v1_send_template_message_csv_post"
      end
      # resource path
      local_var_path = '/v1/sendTemplateMessageCSV'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'template_name'] = template_name
      query_params[:'broadcast_name'] = broadcast_name

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['multipart/form-data'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}
      form_params['whatsapp_numbers_csv'] = whatsapp_numbers_csv

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Bearer']

      new_options = opts.merge(
        :operation => :"MessagesApi.v1_send_template_message_csv_post",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MessagesApi#v1_send_template_message_csv_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Send template message
    # @param whatsapp_number [String] WhatsApp Number with country code. Example, 85264318721
    # @param [Hash] opts the optional parameters
    # @option opts [WASendTemplateRequestModel] :wa_send_template_request_model WhatsAppSendTemplateRequest request
    # @return [nil]
    def v1_send_template_message_post(whatsapp_number, opts = {})
      v1_send_template_message_post_with_http_info(whatsapp_number, opts)
      nil
    end

    # Send template message
    # @param whatsapp_number [String] WhatsApp Number with country code. Example, 85264318721
    # @param [Hash] opts the optional parameters
    # @option opts [WASendTemplateRequestModel] :wa_send_template_request_model WhatsAppSendTemplateRequest request
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def v1_send_template_message_post_with_http_info(whatsapp_number, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MessagesApi.v1_send_template_message_post ...'
      end
      # verify the required parameter 'whatsapp_number' is set
      if @api_client.config.client_side_validation && whatsapp_number.nil?
        fail ArgumentError, "Missing the required parameter 'whatsapp_number' when calling MessagesApi.v1_send_template_message_post"
      end
      # resource path
      local_var_path = '/v1/sendTemplateMessage'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'whatsappNumber'] = whatsapp_number

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json-patch+json', 'application/json', 'text/json', 'application/*+json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'wa_send_template_request_model'])

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Bearer']

      new_options = opts.merge(
        :operation => :"MessagesApi.v1_send_template_message_post",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MessagesApi#v1_send_template_message_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Send template messages
    # @param [Hash] opts the optional parameters
    # @option opts [SendTemplatesRequestModel] :send_templates_request_model SendTemplatesRequestModel request
    # @return [nil]
    def v1_send_template_messages_post(opts = {})
      v1_send_template_messages_post_with_http_info(opts)
      nil
    end

    # Send template messages
    # @param [Hash] opts the optional parameters
    # @option opts [SendTemplatesRequestModel] :send_templates_request_model SendTemplatesRequestModel request
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def v1_send_template_messages_post_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MessagesApi.v1_send_template_messages_post ...'
      end
      # resource path
      local_var_path = '/v1/sendTemplateMessages'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json-patch+json', 'application/json', 'text/json', 'application/*+json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'send_templates_request_model'])

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Bearer']

      new_options = opts.merge(
        :operation => :"MessagesApi.v1_send_template_messages_post",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MessagesApi#v1_send_template_messages_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Send template message (Beta)
    # @param whatsapp_number [String] WhatsApp Number with country code. Example, 85264318721
    # @param [Hash] opts the optional parameters
    # @option opts [WASendTemplateRequestModel] :wa_send_template_request_model WhatsAppSendTemplateRequest request
    # @return [nil]
    def v2_send_template_message_post(whatsapp_number, opts = {})
      v2_send_template_message_post_with_http_info(whatsapp_number, opts)
      nil
    end

    # Send template message (Beta)
    # @param whatsapp_number [String] WhatsApp Number with country code. Example, 85264318721
    # @param [Hash] opts the optional parameters
    # @option opts [WASendTemplateRequestModel] :wa_send_template_request_model WhatsAppSendTemplateRequest request
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def v2_send_template_message_post_with_http_info(whatsapp_number, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MessagesApi.v2_send_template_message_post ...'
      end
      # verify the required parameter 'whatsapp_number' is set
      if @api_client.config.client_side_validation && whatsapp_number.nil?
        fail ArgumentError, "Missing the required parameter 'whatsapp_number' when calling MessagesApi.v2_send_template_message_post"
      end
      # resource path
      local_var_path = '/v2/sendTemplateMessage'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'whatsappNumber'] = whatsapp_number

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json-patch+json', 'application/json', 'text/json', 'application/*+json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'wa_send_template_request_model'])

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Bearer']

      new_options = opts.merge(
        :operation => :"MessagesApi.v2_send_template_message_post",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MessagesApi#v2_send_template_message_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Send template messages (Beta)
    # @param [Hash] opts the optional parameters
    # @option opts [SendTemplatesRequestModel] :send_templates_request_model SendTemplatesRequestModel request
    # @return [nil]
    def v2_send_template_messages_post(opts = {})
      v2_send_template_messages_post_with_http_info(opts)
      nil
    end

    # Send template messages (Beta)
    # @param [Hash] opts the optional parameters
    # @option opts [SendTemplatesRequestModel] :send_templates_request_model SendTemplatesRequestModel request
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def v2_send_template_messages_post_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MessagesApi.v2_send_template_messages_post ...'
      end
      # resource path
      local_var_path = '/v2/sendTemplateMessages'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json-patch+json', 'application/json', 'text/json', 'application/*+json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'send_templates_request_model'])

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Bearer']

      new_options = opts.merge(
        :operation => :"MessagesApi.v2_send_template_messages_post",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MessagesApi#v2_send_template_messages_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
