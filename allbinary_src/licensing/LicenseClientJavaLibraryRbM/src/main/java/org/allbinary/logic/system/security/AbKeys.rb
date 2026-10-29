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

class AbKeys
    attr_accessor :logUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
    end
    

    def self.getInstance()
        return AbKeys.instance
    end
    

    def initialize()
        initialize_fields
    end
    

    # throws LicensingException
    def getKey(abeClientInformation, keyName)
        java_monitor.synchronize do
        begin
            @logUtil.putF("Getting Key: " + keyName, self, "getKey")
            if (keyName <=> "DirectX 8") == 0 || (keyName <=> "DirectX") == 0 || (keyName <=> "Low Level") == 0 || (keyName <=> "System Drivers") == 0
                return "Temp For Input Library"
            end
            return AbeLicenseInterfaceFactory.getInstance().getLicenseInstance(abeClientInformation).getKey(keyName)
        rescue LicensingException => e
            raise e
        rescue StandardError => e
            @logUtil.put("Licensing Failure", self, "getKey()", e)
            raise LicensingException.new("Unknown License Failure")
        end
        end
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
require "org/allbinary/logic/system/security/licensing/AbeLicenseInterfaceFactory"
require "org/allbinary/logic/system/security/licensing/LicensingException"

class AbKeys
    @@instance = AbKeys.new()
end

