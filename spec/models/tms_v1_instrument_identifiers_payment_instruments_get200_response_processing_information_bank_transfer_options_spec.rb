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

# Unit tests for CyberSource::TmsV1InstrumentIdentifiersPaymentInstrumentsGet200ResponseProcessingInformationBankTransferOptions
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'TmsV1InstrumentIdentifiersPaymentInstrumentsGet200ResponseProcessingInformationBankTransferOptions' do
  before do
    # run before each test
    @instance = CyberSource::TmsV1InstrumentIdentifiersPaymentInstrumentsGet200ResponseProcessingInformationBankTransferOptions.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TmsV1InstrumentIdentifiersPaymentInstrumentsGet200ResponseProcessingInformationBankTransferOptions' do
    it 'should create an instance of TmsV1InstrumentIdentifiersPaymentInstrumentsGet200ResponseProcessingInformationBankTransferOptions' do
      expect(@instance).to be_instance_of(CyberSource::TmsV1InstrumentIdentifiersPaymentInstrumentsGet200ResponseProcessingInformationBankTransferOptions)
    end
  end
  describe 'test attribute "sec_code"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["CCD", "PPD", "TEL", "WEB"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.sec_code = value }.not_to raise_error
      # end
    end
  end

end
