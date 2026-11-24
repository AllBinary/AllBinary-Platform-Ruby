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

class StreetAddressData
    

    def initialize()
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:MAX, 255)
        const_set(:MIN, 0)
        const_set(:FORM, "FORM")
        const_set(:STATES, "STATES")
        const_set(:NUMBEROFADDRESSES, "STREETADDRESS_NUMBEROFADDRESSES")
        const_set(:ID, "STREETADDRESS_ID")
        const_set(:DEFAULT, "STREETADDRESS_DEFAULT_ADDRESS")
        const_set(:ADDRESS, "STREETADDRESS_ADDRESS")
        const_set(:NAME, "STREETADDRESS_NAME")
        const_set(:STREET, "STREETADDRESS_STREET")
        const_set(:CITY, "STREETADDRESS_CITY")
        const_set(:STATE, "STREETADDRESS_STATE")
        const_set(:CODE, "STREETADDRESS_CODE")
        const_set(:COUNTRY, "STREETADDRESS_COUNTRY")
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "StreetAddressData"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:MAX, :MIN, :FORM, :STATES, :NUMBEROFADDRESSES, :ID, :DEFAULT, :ADDRESS, :NAME, :STREET, :CITY, :STATE, :CODE, :COUNTRY].include?(name)
        end
        super
    end
end

begin
    StreetAddressData.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

