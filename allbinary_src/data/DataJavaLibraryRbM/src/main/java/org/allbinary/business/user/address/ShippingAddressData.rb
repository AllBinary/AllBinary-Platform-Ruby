#
# AllBinary Open License Version 1
# Copyright (c) 2011 AllBinary
# 
# By agreeing to this license you and any business entity you represent are
# legally bound to the AllBinary Open License Version 1 legal agreement.
# 
# You may obtain the AllBinary Open License Version 1 legal agreement from
# AllBinary or the root directory of AllBinary's AllBinary Platform repository.
# 
# Created By: Travis Berthelot
#  
# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.business.user.address


module ::Org; module Allbinary; module Business; module User; module Address

class ShippingAddressData
    

    def initialize()
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:SETTOBILLINGADDRESS, "Set To Billing Address")
        const_set(:SELECT, "Select Shipping Address")
        const_set(:SELECTNAME, "SELECTSHIPPINGADDRESS")
        const_set(:MULTIPLE, "SHIPPINGADDRESSES")
        const_set(:SHIPPINGADDRESSES, "SHIPPINGADDRESSES")
        const_set(:SHIPPINGADDRESS, "SHIPPINGADDRESS")
        const_set(:ID, "SHIPPINGADDRESS_ID")
        const_set(:ADDRESS, "SHIPPINGADDRESS_ADDRESS")
        const_set(:NAME, "SHIPPINGADDRESS_NAME")
        const_set(:STREET, "SHIPPINGADDRESS_STREET")
        const_set(:CITY, "SHIPPINGADDRESS_CITY")
        const_set(:STATE, "SHIPPINGADDRESS_STATE")
        const_set(:CODE, "SHIPPINGADDRESS_CODE")
        const_set(:COUNTRY, "SHIPPINGADDRESS_COUNTRY")
        const_set(:TAX, "SHIPPINGADDRESS_TAX")
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "ShippingAddressData"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:SETTOBILLINGADDRESS, :SELECT, :SELECTNAME, :MULTIPLE, :SHIPPINGADDRESSES, :SHIPPINGADDRESS, :ID, :ADDRESS, :NAME, :STREET, :CITY, :STATE, :CODE, :COUNTRY, :TAX].include?(name)
        end
        super
    end
end

begin
    ShippingAddressData.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

