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

# Unit tests for CyberSource::Riskv1authenticationresultsPaymentInformationTokenizedCard
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'Riskv1authenticationresultsPaymentInformationTokenizedCard' do
  before do
    # run before each test
    @instance = CyberSource::Riskv1authenticationresultsPaymentInformationTokenizedCard.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of Riskv1authenticationresultsPaymentInformationTokenizedCard' do
    it 'should create an instance of Riskv1authenticationresultsPaymentInformationTokenizedCard' do
      expect(@instance).to be_instance_of(CyberSource::Riskv1authenticationresultsPaymentInformationTokenizedCard)
    end
  end
  describe 'test attribute "type"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "expiration_month"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "expiration_year"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "number"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
