=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'spec_helper'
require 'json'

# Unit tests for CyberSource::ReportDownloadsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ReportDownloadsApi' do
  before do
    # run before each test
    @instance = CyberSource::ReportDownloadsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ReportDownloadsApi' do
    it 'should create an instance of ReportDownloadsApi' do
      expect(@instance).to be_instance_of(CyberSource::ReportDownloadsApi)
    end
  end

  # unit tests for download_report
  # Download a report
  # Download a report using the unique report name and date. 
  # @param report_date Valid date on which to download the report in **ISO 8601 format** Please refer the following link to know more about ISO 8601 format. - https://xml2rfc.tools.ietf.org/public/rfc/html/rfc3339.html#anchor14   **Example date format:**   - yyyy-MM-dd 
  # @param report_name Name of the report to download
  # @param [Hash] opts the optional parameters
  # @option opts [String] :organization_id Valid Cybersource Organization Id
  # @return [nil]
  describe 'download_report test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
