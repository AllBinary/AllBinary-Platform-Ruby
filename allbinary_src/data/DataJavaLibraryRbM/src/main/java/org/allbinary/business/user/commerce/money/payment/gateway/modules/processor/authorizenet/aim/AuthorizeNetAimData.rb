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
# package org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.authorizenet.aim


module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; module Payment; module Gateway; module Modules; module Processor; module Authorizenet; module Aim

class AuthorizeNetAimData
    

    def initialize()
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:X_DELIM_DATA, "x_delim_data")
        const_set(:X_DELIM_CHAR, "x_delim_char")
        const_set(:X_ENCAP_CHAR, "x_encap_char")
        const_set(:X_AUTHENTICATION_INDICATOR, "x_authentication_indicator")
        const_set(:X_CARDHOLDER_AUTHENTICATION_VALUE, "x_cardholder_authentication_value")
        const_set(:X_DRIVERS_LICENSE_NUM, "x_drivers_license_num")
        const_set(:X_DRIVERS_LICENSE_STATE, "x_drivers_license_state")
        const_set(:X_DRIVERS_LICENSE_DOB, "x_drivers_license_dob")
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "AuthorizeNetAimData"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:X_DELIM_DATA, :X_DELIM_CHAR, :X_ENCAP_CHAR, :X_AUTHENTICATION_INDICATOR, :X_CARDHOLDER_AUTHENTICATION_VALUE, :X_DRIVERS_LICENSE_NUM, :X_DRIVERS_LICENSE_STATE, :X_DRIVERS_LICENSE_DOB].include?(name)
        end
        super
    end
end

begin
    AuthorizeNetAimData.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end; end; end; end; end; end; end

