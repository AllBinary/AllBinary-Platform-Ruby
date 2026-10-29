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
# package org.allbinary.logic.system.os

require "java/lang/Object"

class OperatingSystemFactory
    attr_accessor :logUtil, :genericOperatingSystem

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @genericOperatingSystem = NoOperatingSystem::NO_OPERATING_SYSTEM
    end
    

    def self.getInstance()
        return OperatingSystemFactory.instance
    end
    

    def initialize()
        initialize_fields
    end
    

    def getOperatingSystemInstance()
        java_monitor.synchronize do
        commonStrings = CommonStrings.getInstance()
        begin
            osString = StringMaker.new().append("OperatingSystem Info: ").append(@genericOperatingSystem.to_s).to_s
            puts(osString)
            @logUtil.putF(osString, self, commonStrings.GET_INSTANCE)
        rescue StandardError => e
            @logUtil.put(commonStrings.EXCEPTION, self, commonStrings.GET_INSTANCE, e)
        end
        return @genericOperatingSystem
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
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/logic/system/os/GenericOperatingSystem"
require "org/allbinary/logic/system/os/NoOperatingSystem"
require "java/lang/System"

class OperatingSystemFactory
    @@instance = OperatingSystemFactory.new()
end

