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
    attr_accessor :logUtil, :genericOperatingSystem, :hasDetected

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @genericOperatingSystem = NoOperatingSystem::NO_OPERATING_SYSTEM
        @hasDetected = false
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
            systemProperties = SystemProperties.getInstance()
            osName = systemProperties.getName()
            if !@hasDetected
                @hasDetected = true
                if (osName.index(OperatingSystems.getInstance().ANDROID) || -1) >= 0
                    @logUtil.putF("Found a Android OS", self, commonStrings.GET_INSTANCE)
                    @genericOperatingSystem = AndroidOperatingSystemFactory.getInstance().getOperatingSystemInstance()
                    @logUtil.putF(StringMaker.new().append("Operating System Info: ").append(@genericOperatingSystem.to_s).to_s, self, commonStrings.GET_INSTANCE)
                elsif (osName.index(OperatingSystems.getInstance().HARMONY) || -1) >= 0
                    @logUtil.putF("Found a Harmony OS", self, commonStrings.GET_INSTANCE)
                    @genericOperatingSystem = AndroidOperatingSystemFactory.getInstance().getOperatingSystemInstance()
                    @logUtil.putF(StringMaker.new().append("Operating System Info: ").append(@genericOperatingSystem.to_s).to_s, self, commonStrings.GET_INSTANCE)
                else
                    raise StandardError.new(StringMaker.new().append("OS Not Supported: ").append(osName).to_s)
                end
            end
        rescue StandardError => e
            @genericOperatingSystem = NoOperatingSystem::NO_OPERATING_SYSTEM
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

require "org/allbinary/logic/system/os/android/AndroidOperatingSystemFactory"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/logic/system/os/GenericOperatingSystem"
require "org/allbinary/logic/system/os/NoOperatingSystem"
require "org/allbinary/logic/system/os/OperatingSystems"
require "org/allbinary/logic/system/os/SystemProperties"

class OperatingSystemFactory
    @@instance = OperatingSystemFactory.new()
end

