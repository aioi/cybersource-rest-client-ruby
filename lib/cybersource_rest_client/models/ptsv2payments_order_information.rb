=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'date'

module CyberSource
  class Ptsv2paymentsOrderInformation
    attr_accessor :amount_details

    attr_accessor :bill_to

    attr_accessor :ship_to

    attr_accessor :line_items

    attr_accessor :invoice_details

    attr_accessor :shipping_details

    # This is only needed when you are requesting both payment and DM service at same time.  Boolean that indicates whether returns are accepted for this order. This field can contain one of the following values: - true: Returns are accepted for this order. - false: Returns are not accepted for this order. 
    attr_accessor :returns_accepted

    # Indicates whether cardholder is placing an order with a future availability or release date. This field can contain one of these values: - MERCHANDISE_AVAILABLE: Merchandise available - FUTURE_AVAILABILITY: Future availability 
    attr_accessor :pre_order

    # Expected date that a pre-ordered purchase will be available. Format: YYYYMMDD 
    attr_accessor :pre_order_date

    # Indicates whether the cardholder is reordering previously purchased merchandise. This field can contain one of these values: - false: First time ordered - true: Reordered 
    attr_accessor :reordered

    # Total number of articles/items in the order as a numeric decimal count. Possible values: 00 - 99 
    attr_accessor :total_offers_count

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'amount_details' => :'amountDetails',
        :'bill_to' => :'billTo',
        :'ship_to' => :'shipTo',
        :'line_items' => :'lineItems',
        :'invoice_details' => :'invoiceDetails',
        :'shipping_details' => :'shippingDetails',
        :'returns_accepted' => :'returnsAccepted',
        :'pre_order' => :'preOrder',
        :'pre_order_date' => :'preOrderDate',
        :'reordered' => :'reordered',
        :'total_offers_count' => :'totalOffersCount'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'amount_details' => :'Ptsv2paymentsOrderInformationAmountDetails',
        :'bill_to' => :'Ptsv2paymentsOrderInformationBillTo',
        :'ship_to' => :'Ptsv2paymentsOrderInformationShipTo',
        :'line_items' => :'Array<Ptsv2paymentsOrderInformationLineItems>',
        :'invoice_details' => :'Ptsv2paymentsOrderInformationInvoiceDetails',
        :'shipping_details' => :'Ptsv2paymentsOrderInformationShippingDetails',
        :'returns_accepted' => :'BOOLEAN',
        :'pre_order' => :'String',
        :'pre_order_date' => :'String',
        :'reordered' => :'BOOLEAN',
        :'total_offers_count' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'amountDetails')
        self.amount_details = attributes[:'amountDetails']
      end

      if attributes.has_key?(:'billTo')
        self.bill_to = attributes[:'billTo']
      end

      if attributes.has_key?(:'shipTo')
        self.ship_to = attributes[:'shipTo']
      end

      if attributes.has_key?(:'lineItems')
        if (value = attributes[:'lineItems']).is_a?(Array)
          self.line_items = value
        end
      end

      if attributes.has_key?(:'invoiceDetails')
        self.invoice_details = attributes[:'invoiceDetails']
      end

      if attributes.has_key?(:'shippingDetails')
        self.shipping_details = attributes[:'shippingDetails']
      end

      if attributes.has_key?(:'returnsAccepted')
        self.returns_accepted = attributes[:'returnsAccepted']
      end

      if attributes.has_key?(:'preOrder')
        self.pre_order = attributes[:'preOrder']
      end

      if attributes.has_key?(:'preOrderDate')
        self.pre_order_date = attributes[:'preOrderDate']
      end

      if attributes.has_key?(:'reordered')
        self.reordered = attributes[:'reordered']
      end

      if attributes.has_key?(:'totalOffersCount')
        self.total_offers_count = attributes[:'totalOffersCount']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@pre_order_date.nil? && @pre_order_date.to_s.length > 10
        invalid_properties.push('invalid value for "pre_order_date", the character length must be smaller than or equal to 10.')
      end

      if !@total_offers_count.nil? && @total_offers_count.to_s.length > 2
        invalid_properties.push('invalid value for "total_offers_count", the character length must be smaller than or equal to 2.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@pre_order_date.nil? && @pre_order_date.to_s.length > 10
      return false if !@total_offers_count.nil? && @total_offers_count.to_s.length > 2
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] pre_order_date Value to be assigned
    def pre_order_date=(pre_order_date)
      if !pre_order_date.nil? && pre_order_date.to_s.length > 10
        fail ArgumentError, 'invalid value for "pre_order_date", the character length must be smaller than or equal to 10.'
      end

      @pre_order_date = pre_order_date
    end

    # Custom attribute writer method with validation
    # @param [Object] total_offers_count Value to be assigned
    def total_offers_count=(total_offers_count)
      if !total_offers_count.nil? && total_offers_count.to_s.length > 2
        fail ArgumentError, 'invalid value for "total_offers_count", the character length must be smaller than or equal to 2.'
      end

      @total_offers_count = total_offers_count
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          amount_details == o.amount_details &&
          bill_to == o.bill_to &&
          ship_to == o.ship_to &&
          line_items == o.line_items &&
          invoice_details == o.invoice_details &&
          shipping_details == o.shipping_details &&
          returns_accepted == o.returns_accepted &&
          pre_order == o.pre_order &&
          pre_order_date == o.pre_order_date &&
          reordered == o.reordered &&
          total_offers_count == o.total_offers_count
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [amount_details, bill_to, ship_to, line_items, invoice_details, shipping_details, returns_accepted, pre_order, pre_order_date, reordered, total_offers_count].hash
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
