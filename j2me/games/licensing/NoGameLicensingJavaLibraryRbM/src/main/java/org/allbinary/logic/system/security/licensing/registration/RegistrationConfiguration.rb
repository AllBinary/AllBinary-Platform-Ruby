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
# package org.allbinary.logic.system.security.licensing.registration


module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; module Registration

class RegistrationConfiguration
    attr_accessor :registrationCode, :NAME

    def jfields_org_allbinary_logic_system_security_licensing_registration_RegistrationConfiguration
        @registrationCode = "No Registration Code"
        @NAME = "registrationid"
    end
    

    def initialize()
        jfields_org_allbinary_logic_system_security_licensing_registration_RegistrationConfiguration
    end
    

    def self.getInstance()
        return RegistrationConfiguration::SINGLETON
    end
    

    # throws Exception
    def read()
    end
    

    # throws Exception
    def write()
    end
    

    def toString()
        return ::Org::Allbinary::Logic::StringPackage::StringMaker.new().append("Registration Code: ").append(self.getRegistrationCode()).to_s
    end
    alias_method :to_s, :toString
    

    def setRegistrationCode(registrationCode)
        @registrationCode = registrationCode
    end
    

    def getRegistrationCode()
        return @registrationCode
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:SINGLETON, RegistrationConfiguration.new())
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "RegistrationConfiguration"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:SINGLETON].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end

begin
    RegistrationConfiguration.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end; end

