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
# package org.allbinary.logic.system.security

require "java/lang/Object"

module ::Org; module Allbinary; module Logic; module System; module Security

class AbKeys
    attr_accessor :logUtil

    def jfields_org_allbinary_logic_system_security_AbKeys
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
    end
    

    def self.getInstance()
        return @@instance
    end
    

    def initialize()
        jfields_org_allbinary_logic_system_security_AbKeys
    end
    

    # throws LicensingException
    def getKey(abeClientInformation, keyName)
        java_monitor.synchronize do
        begin
            @logUtil.putF("Getting Key: " + keyName, self, "getKey")
            if (keyName <=> "DirectX 8") == 0 || (keyName <=> "DirectX") == 0 || (keyName <=> "Low Level") == 0 || (keyName <=> "System Drivers") == 0
                return "Temp For Input Library"
            end
            return ::Org::Allbinary::Logic::System::Security::Licensing::AbeLicenseInterfaceFactory.getInstance().getLicenseInstance(abeClientInformation).getKey(keyName)
        rescue ::Org::Allbinary::Logic::System::Security::Licensing::LicensingException => e
            raise e
        rescue StandardError => e
            @logUtil.put("Licensing Failure", self, "getKey()", e)
            raise ::Org::Allbinary::Logic::System::Security::Licensing::LicensingException.new("Unknown License Failure")
        end
        end
    end

    def self.instance()
        AbKeys.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        AbKeys.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = AbKeys.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "AbKeys"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" unless const_defined?(:AbeClientInformationInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :AbeLicenseInterfaceFactory, "org/allbinary/logic/system/security/licensing/AbeLicenseInterfaceFactory" unless const_defined?(:AbeLicenseInterfaceFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :LicensingException, "org/allbinary/logic/system/security/licensing/LicensingException" unless const_defined?(:LicensingException, false); end; end; end; end; end; end

begin
    AbKeys.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

