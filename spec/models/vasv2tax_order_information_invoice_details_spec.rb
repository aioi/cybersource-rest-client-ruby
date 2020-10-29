=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for CyberSource::Vasv2taxOrderInformationInvoiceDetails
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'Vasv2taxOrderInformationInvoiceDetails' do
  before do
    # run before each test
    @instance = CyberSource::Vasv2taxOrderInformationInvoiceDetails.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of Vasv2taxOrderInformationInvoiceDetails' do
    it 'should create an instance of Vasv2taxOrderInformationInvoiceDetails' do
      expect(@instance).to be_instance_of(CyberSource::Vasv2taxOrderInformationInvoiceDetails)
    end
  end
  describe 'test attribute "invoice_date"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
