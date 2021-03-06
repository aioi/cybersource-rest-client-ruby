=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'date'

module CyberSource
  class PtsV2PaymentsPost201ResponsePaymentInformationTokenizedCard
    # First six digits of token. CyberSource includes this field in the reply message when it decrypts the payment blob for the tokenized transaction. 
    attr_accessor :prefix

    # Last four digits of token. CyberSource includes this field in the reply message when it decrypts the payment blob for the tokenized transaction. 
    attr_accessor :suffix

    # Type of card to authorize. - 001 Visa - 002 Mastercard - 003 Amex - 004 Discover - 005: Diners Club - 007: JCB - 024: Maestro (UK Domestic) - 039 Encoded account number - 042: Maestro (International) 
    attr_accessor :type

    # Confidence level of the tokenization. This value is assigned by the token service provider.  `Note` This field is supported only for **CyberSource through VisaNet** and **FDC Nashville Global**. 
    attr_accessor :assurance_level

    # Two-digit month in which the payment network token expires. `Format: MM`. Possible values: 01 through 12.  **Barclays and Streamline**\\ For Maestro (UK Domestic) and Maestro (International) cards on Barclays and Streamline, this must be a valid value (01 through 12) but is not required to be a valid expiration date. In other words, an expiration date that is in the past does not cause CyberSource to reject your request. However, an invalid expiration date might cause the issuer to reject your request.  **Encoded Account Numbers**\\ For encoded account numbers (_type_=039), if there is no expiration date on the card, use 12.  For processor-specific information, see the customer_cc_expmo field in [Credit Card Services Using the SCMP API.](http://apps.cybersource.com/library/documentation/dev_guides/CC_Svcs_SCMP_API/html) 
    attr_accessor :expiration_month

    # Four-digit year in which the payment network token expires. `Format: YYYY`.  **Barclays and Streamline**\\ For Maestro (UK Domestic) and Maestro (International) cards on Barclays and Streamline, this must be a valid value (1900 through 3000) but is not required to be a valid expiration date. In other words, an expiration date that is in the past does not cause CyberSource to reject your request. However, an invalid expiration date might cause the issuer to reject your request.  **FDC Nashville Global and FDMS South**\\ You can send in 2 digits or 4 digits. If you send in 2 digits, they must be the last 2 digits of the year.  **Encoded Account Numbers**\\ For encoded account numbers (card_type=039), if there is no expiration date on the card, use 2021.  For processor-specific information, see the customer_cc_expyr field in [Credit Card Services Using the SCMP API.](http://apps.cybersource.com/library/documentation/dev_guides/CC_Svcs_SCMP_API/html) 
    attr_accessor :expiration_year

    # Value that identifies your business and indicates that the cardholder’s account number is tokenized. This value is assigned by the token service provider and is unique within the token service provider’s database.  `Note` This field is supported only for **CyberSource through VisaNet** and **FDC Nashville Global**. 
    attr_accessor :requestor_id

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'prefix' => :'prefix',
        :'suffix' => :'suffix',
        :'type' => :'type',
        :'assurance_level' => :'assuranceLevel',
        :'expiration_month' => :'expirationMonth',
        :'expiration_year' => :'expirationYear',
        :'requestor_id' => :'requestorId'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'prefix' => :'String',
        :'suffix' => :'String',
        :'type' => :'String',
        :'assurance_level' => :'String',
        :'expiration_month' => :'String',
        :'expiration_year' => :'String',
        :'requestor_id' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'prefix')
        self.prefix = attributes[:'prefix']
      end

      if attributes.has_key?(:'suffix')
        self.suffix = attributes[:'suffix']
      end

      if attributes.has_key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.has_key?(:'assuranceLevel')
        self.assurance_level = attributes[:'assuranceLevel']
      end

      if attributes.has_key?(:'expirationMonth')
        self.expiration_month = attributes[:'expirationMonth']
      end

      if attributes.has_key?(:'expirationYear')
        self.expiration_year = attributes[:'expirationYear']
      end

      if attributes.has_key?(:'requestorId')
        self.requestor_id = attributes[:'requestorId']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@prefix.nil? && @prefix.to_s.length > 6
        invalid_properties.push('invalid value for "prefix", the character length must be smaller than or equal to 6.')
      end

      if !@suffix.nil? && @suffix.to_s.length > 4
        invalid_properties.push('invalid value for "suffix", the character length must be smaller than or equal to 4.')
      end

      if !@assurance_level.nil? && @assurance_level.to_s.length > 2
        invalid_properties.push('invalid value for "assurance_level", the character length must be smaller than or equal to 2.')
      end

      if !@expiration_month.nil? && @expiration_month.to_s.length > 2
        invalid_properties.push('invalid value for "expiration_month", the character length must be smaller than or equal to 2.')
      end

      if !@expiration_year.nil? && @expiration_year.to_s.length > 4
        invalid_properties.push('invalid value for "expiration_year", the character length must be smaller than or equal to 4.')
      end

      if !@requestor_id.nil? && @requestor_id.to_s.length > 11
        invalid_properties.push('invalid value for "requestor_id", the character length must be smaller than or equal to 11.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@prefix.nil? && @prefix.to_s.length > 6
      return false if !@suffix.nil? && @suffix.to_s.length > 4
      return false if !@assurance_level.nil? && @assurance_level.to_s.length > 2
      return false if !@expiration_month.nil? && @expiration_month.to_s.length > 2
      return false if !@expiration_year.nil? && @expiration_year.to_s.length > 4
      return false if !@requestor_id.nil? && @requestor_id.to_s.length > 11
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] prefix Value to be assigned
    def prefix=(prefix)
      if !prefix.nil? && prefix.to_s.length > 6
        fail ArgumentError, 'invalid value for "prefix", the character length must be smaller than or equal to 6.'
      end

      @prefix = prefix
    end

    # Custom attribute writer method with validation
    # @param [Object] suffix Value to be assigned
    def suffix=(suffix)
      if !suffix.nil? && suffix.to_s.length > 4
        fail ArgumentError, 'invalid value for "suffix", the character length must be smaller than or equal to 4.'
      end

      @suffix = suffix
    end

    # Custom attribute writer method with validation
    # @param [Object] assurance_level Value to be assigned
    def assurance_level=(assurance_level)
      if !assurance_level.nil? && assurance_level.to_s.length > 2
        fail ArgumentError, 'invalid value for "assurance_level", the character length must be smaller than or equal to 2.'
      end

      @assurance_level = assurance_level
    end

    # Custom attribute writer method with validation
    # @param [Object] expiration_month Value to be assigned
    def expiration_month=(expiration_month)
      if !expiration_month.nil? && expiration_month.to_s.length > 2
        fail ArgumentError, 'invalid value for "expiration_month", the character length must be smaller than or equal to 2.'
      end

      @expiration_month = expiration_month
    end

    # Custom attribute writer method with validation
    # @param [Object] expiration_year Value to be assigned
    def expiration_year=(expiration_year)
      if !expiration_year.nil? && expiration_year.to_s.length > 4
        fail ArgumentError, 'invalid value for "expiration_year", the character length must be smaller than or equal to 4.'
      end

      @expiration_year = expiration_year
    end

    # Custom attribute writer method with validation
    # @param [Object] requestor_id Value to be assigned
    def requestor_id=(requestor_id)
      if !requestor_id.nil? && requestor_id.to_s.length > 11
        fail ArgumentError, 'invalid value for "requestor_id", the character length must be smaller than or equal to 11.'
      end

      @requestor_id = requestor_id
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          prefix == o.prefix &&
          suffix == o.suffix &&
          type == o.type &&
          assurance_level == o.assurance_level &&
          expiration_month == o.expiration_month &&
          expiration_year == o.expiration_year &&
          requestor_id == o.requestor_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [prefix, suffix, type, assurance_level, expiration_month, expiration_year, requestor_id].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = CyberSource.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end
  end
end
