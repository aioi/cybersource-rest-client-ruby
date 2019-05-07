=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'date'

module CyberSource
  class FlexV1TokensPost200Response
    # The Key ID.
    attr_accessor :key_id

    # The generated token. The token replaces card data and is used as the Subscription ID in the CyberSource Simple Order API or SCMP API.
    attr_accessor :token

    # The masked card number displaying the first 6 digits and the last 4 digits.
    attr_accessor :masked_pan

    # The card type.
    attr_accessor :card_type

    # The UTC date and time in milliseconds at which the signature was generated.
    attr_accessor :timestamp

    # Indicates which fields from the response make up the data that is used when verifying the response signature. See the [sample code] (https://github.com/CyberSource/cybersource-flex-samples/blob/master/java/spring-boot/src/main/java/com/cybersource/flex/application/CheckoutController.java) on how to verify the signature.
    attr_accessor :signed_fields

    # Flex-generated digital signature. To ensure the values have not been tampered with while passing through the client, verify this server-side using the public key generated from the /keys resource.
    attr_accessor :signature

    attr_accessor :discoverable_services

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'key_id' => :'keyId',
        :'token' => :'token',
        :'masked_pan' => :'maskedPan',
        :'card_type' => :'cardType',
        :'timestamp' => :'timestamp',
        :'signed_fields' => :'signedFields',
        :'signature' => :'signature',
        :'discoverable_services' => :'discoverableServices'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'key_id' => :'String',
        :'token' => :'String',
        :'masked_pan' => :'String',
        :'card_type' => :'String',
        :'timestamp' => :'Integer',
        :'signed_fields' => :'String',
        :'signature' => :'String',
        :'discoverable_services' => :'Hash<String, Object>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'keyId')
        self.key_id = attributes[:'keyId']
      end

      if attributes.has_key?(:'token')
        self.token = attributes[:'token']
      end

      if attributes.has_key?(:'maskedPan')
        self.masked_pan = attributes[:'maskedPan']
      end

      if attributes.has_key?(:'cardType')
        self.card_type = attributes[:'cardType']
      end

      if attributes.has_key?(:'timestamp')
        self.timestamp = attributes[:'timestamp']
      end

      if attributes.has_key?(:'signedFields')
        self.signed_fields = attributes[:'signedFields']
      end

      if attributes.has_key?(:'signature')
        self.signature = attributes[:'signature']
      end

      if attributes.has_key?(:'discoverableServices')
        if (value = attributes[:'discoverableServices']).is_a?(Hash)
          self.discoverable_services = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          key_id == o.key_id &&
          token == o.token &&
          masked_pan == o.masked_pan &&
          card_type == o.card_type &&
          timestamp == o.timestamp &&
          signed_fields == o.signed_fields &&
          signature == o.signature &&
          discoverable_services == o.discoverable_services
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [key_id, token, masked_pan, card_type, timestamp, signed_fields, signature, discoverable_services].hash
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
