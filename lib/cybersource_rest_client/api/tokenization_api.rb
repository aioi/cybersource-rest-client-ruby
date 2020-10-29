=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'uri'

module CyberSource
  class TokenizationApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default, config)
      @api_client = api_client
	  @api_client.set_configuration(config)
    end
    # Tokenize Card
    # Returns a token representing the supplied card details. The token replaces card data and can be used as the Subscription ID in the CyberSource Simple Order API or SCMP API. This is an unauthenticated call that you should initiate from your customer’s device or browser.
    # @param tokenize_request 
    # @param [Hash] opts the optional parameters
    # @return [FlexV1TokensPost200Response]
    def tokenize(tokenize_request, opts = {})
      data, status_code, headers = tokenize_with_http_info(tokenize_request, opts)
      return data, status_code, headers
    end

    # Tokenize Card
    # Returns a token representing the supplied card details. The token replaces card data and can be used as the Subscription ID in the CyberSource Simple Order API or SCMP API. This is an unauthenticated call that you should initiate from your customer’s device or browser.
    # @param tokenize_request 
    # @param [Hash] opts the optional parameters
    # @return [Array<(FlexV1TokensPost200Response, Fixnum, Hash)>] FlexV1TokensPost200Response data, response status code and response headers
    def tokenize_with_http_info(tokenize_request, opts = {})
      
	  if @api_client.config.debugging
	  	begin
			raise
				@api_client.config.logger.debug 'Calling API: TokenizationApi.tokenize ...'
			rescue
				puts 'Cannot write to log'
			end
      end
      # verify the required parameter 'tokenize_request' is set
      if @api_client.config.client_side_validation && tokenize_request.nil?
        fail ArgumentError, "Missing the required parameter 'tokenize_request' when calling TokenizationApi.tokenize"
      end
      # resource path
      local_var_path = 'flex/v1/tokens'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json;charset=utf-8'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(tokenize_request)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'FlexV1TokensPost200Response')
      if @api_client.config.debugging
		begin
		raise
			@api_client.config.logger.debug "API called: TokenizationApi#tokenize\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
		rescue
			puts 'Cannot write to log'
		end
	  end
      return data, status_code, headers
    end
  end
end
