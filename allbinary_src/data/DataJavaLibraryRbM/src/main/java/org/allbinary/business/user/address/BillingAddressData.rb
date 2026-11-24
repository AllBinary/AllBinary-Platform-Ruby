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

class BillingAddressData
    

    def initialize()
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:MAX, 255)
        const_set(:MIN, 0)
        const_set(:MULTIPLE, "BILLINGADDRESSES")
        const_set(:STATES, "BILLINGADDRESS_STATES")
        const_set(:SETTOSHIPPINGADDRESS, "Set To Shipping Address")
        const_set(:SELECT, "Select Billing Address")
        const_set(:SETTOSHIPPINGADDRESSNAME, "SETTOSHIPPINGADDRESS")
        const_set(:BILLINGADDRESSES, "BILLINGADDRESSES")
        const_set(:BILLINGADDRESS, "BILLINGADDRESS")
        const_set(:ID, "BILLINGADDRESS_ID")
        const_set(:ADDRESS, "BILLINGADDRESS_ADDRESS")
        const_set(:NAME, "BILLINGADDRESS_NAME")
        const_set(:STREET, "BILLINGADDRESS_STREET")
        const_set(:CITY, "BILLINGADDRESS_CITY")
        const_set(:STATE, "BILLINGADDRESS_STATE")
        const_set(:CODE, "BILLINGADDRESS_CODE")
        const_set(:COUNTRY, "BILLINGADDRESS_COUNTRY")
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "BillingAddressData"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:MAX, :MIN, :MULTIPLE, :STATES, :SETTOSHIPPINGADDRESS, :SELECT, :SETTOSHIPPINGADDRESSNAME, :BILLINGADDRESSES, :BILLINGADDRESS, :ID, :ADDRESS, :NAME, :STREET, :CITY, :STATE, :CODE, :COUNTRY].include?(name)
        end
        super
    end
end

begin
    BillingAddressData.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

