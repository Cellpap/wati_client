=begin
#WhatsApp chat API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.0.1

=end

require 'spec_helper'
require 'json'

# Unit tests for WatiClient::PaymentsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'PaymentsApi' do
  before do
    # run before each test
    @api_instance = WatiClient::PaymentsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PaymentsApi' do
    it 'should create an instance of PaymentsApi' do
      expect(@api_instance).to be_instance_of(WatiClient::PaymentsApi)
    end
  end

  # unit tests for v1_order_details_post
  # Send WhatsApp Pay order detail message to customer (Private Beta)
  # @param [Hash] opts the optional parameters
  # @return [Object]
  describe 'v1_order_details_post test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for v1_order_details_reference_id_get
  # Get WhatsApp Pay order details of particular order (Private Beta)
  # @param reference_id 
  # @param [Hash] opts the optional parameters
  # @return [Object]
  describe 'v1_order_details_reference_id_get test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for v1_order_status_post
  # Update WhatsApp Pay order status of an order (Private Beta)
  # @param [Hash] opts the optional parameters
  # @return [Object]
  describe 'v1_order_status_post test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for v1_payment_status_reference_id_get
  # Get payment status information of particular order (Private Beta)
  # @param reference_id 
  # @param [Hash] opts the optional parameters
  # @return [Object]
  describe 'v1_payment_status_reference_id_get test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
