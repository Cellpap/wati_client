=begin
#WhatsApp chat API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.0.1

=end

require 'cgi'

module WatiClient
  class PaymentsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Send WhatsApp Pay order detail message to customer (Private Beta)
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def v1_order_details_post(opts = {})
      data, _status_code, _headers = v1_order_details_post_with_http_info(opts)
      data
    end

    # Send WhatsApp Pay order detail message to customer (Private Beta)
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def v1_order_details_post_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PaymentsApi.v1_order_details_post ...'
      end
      # resource path
      local_var_path = '/v1/order_details'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Bearer']

      new_options = opts.merge(
        :operation => :"PaymentsApi.v1_order_details_post",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentsApi#v1_order_details_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get WhatsApp Pay order details of particular order (Private Beta)
    # @param reference_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def v1_order_details_reference_id_get(reference_id, opts = {})
      data, _status_code, _headers = v1_order_details_reference_id_get_with_http_info(reference_id, opts)
      data
    end

    # Get WhatsApp Pay order details of particular order (Private Beta)
    # @param reference_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def v1_order_details_reference_id_get_with_http_info(reference_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PaymentsApi.v1_order_details_reference_id_get ...'
      end
      # verify the required parameter 'reference_id' is set
      if @api_client.config.client_side_validation && reference_id.nil?
        fail ArgumentError, "Missing the required parameter 'reference_id' when calling PaymentsApi.v1_order_details_reference_id_get"
      end
      # resource path
      local_var_path = '/v1/order_details/{referenceId}'.sub('{' + 'referenceId' + '}', CGI.escape(reference_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Bearer']

      new_options = opts.merge(
        :operation => :"PaymentsApi.v1_order_details_reference_id_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentsApi#v1_order_details_reference_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update WhatsApp Pay order status of an order (Private Beta)
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def v1_order_status_post(opts = {})
      data, _status_code, _headers = v1_order_status_post_with_http_info(opts)
      data
    end

    # Update WhatsApp Pay order status of an order (Private Beta)
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def v1_order_status_post_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PaymentsApi.v1_order_status_post ...'
      end
      # resource path
      local_var_path = '/v1/order_status'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Bearer']

      new_options = opts.merge(
        :operation => :"PaymentsApi.v1_order_status_post",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentsApi#v1_order_status_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get payment status information of particular order (Private Beta)
    # @param reference_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def v1_payment_status_reference_id_get(reference_id, opts = {})
      data, _status_code, _headers = v1_payment_status_reference_id_get_with_http_info(reference_id, opts)
      data
    end

    # Get payment status information of particular order (Private Beta)
    # @param reference_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def v1_payment_status_reference_id_get_with_http_info(reference_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PaymentsApi.v1_payment_status_reference_id_get ...'
      end
      # verify the required parameter 'reference_id' is set
      if @api_client.config.client_side_validation && reference_id.nil?
        fail ArgumentError, "Missing the required parameter 'reference_id' when calling PaymentsApi.v1_payment_status_reference_id_get"
      end
      # resource path
      local_var_path = '/v1/payment_status/{referenceId}'.sub('{' + 'referenceId' + '}', CGI.escape(reference_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Bearer']

      new_options = opts.merge(
        :operation => :"PaymentsApi.v1_payment_status_reference_id_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentsApi#v1_payment_status_reference_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
