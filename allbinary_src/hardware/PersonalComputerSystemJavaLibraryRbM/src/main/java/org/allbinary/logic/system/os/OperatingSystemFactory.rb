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
    attr_accessor :logUtil, :commonStrings, :genericOperatingSystem, :hasDetected

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
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
        begin
            operatingSystems = OperatingSystems.getInstance()
            systemProperties = SystemProperties.getInstance()
            osName = systemProperties.getName()
            osArch = systemProperties.getArch()
            osVersion = systemProperties.getVersion()
            if !@hasDetected
                @logUtil.putF("osName: " + osName, self, @commonStrings.GET_INSTANCE)
                @hasDetected = true
                if (osName.index(operatingSystems.LINUX) || -1) >= 0
                    if LogConfigTypes::LOGGING.contains(LogConfigTypeFactory.getInstance().FACTORYERROR)
                        @logUtil.putF("Found a Linux OS", self, @commonStrings.GET_INSTANCE)
                    end
                    @genericOperatingSystem = LinuxOperatingSystemFactory.getInstance().getOperatingSystemInstance()
                elsif (osName.index(operatingSystems.WINDOWS) || -1) >= 0
                    if LogConfigTypes::LOGGING.contains(LogConfigTypeFactory.getInstance().FACTORYERROR)
                        @logUtil.putF("Found a Windows OS", self, @commonStrings.GET_INSTANCE)
                    end
                    @genericOperatingSystem = WindowsOperatingSystemFactory.getInstance().getOperatingSystemInstance()
                elsif (osName.index(operatingSystems.SOLARIS) || -1) >= 0
                    if LogConfigTypes::LOGGING.contains(LogConfigTypeFactory.getInstance().FACTORYERROR)
                        @logUtil.putF("Found a Solaris OS", self, @commonStrings.GET_INSTANCE)
                    end
                    @genericOperatingSystem = SolarisOperatingSystemFactory.getInstance().getOperatingSystemInstance()
                else
                    raise StandardError.new(StringMaker.new().append("OS Not Supported: ").append(osName).to_s)
                end
                log = LogFactory.getInstanceF(StringMaker.new().append("OperatingSystem Info: ").append(StringUtil.getInstance().toString(@genericOperatingSystem)).to_s, self, @commonStrings.GET_INSTANCE)
                puts(log.to_s)
                @logUtil.putL(log)
            end
            return @genericOperatingSystem
        rescue StandardError => e
            if LogConfigTypes::LOGGING.contains(LogConfigTypeFactory.getInstance().FACTORYERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.GET_INSTANCE, e)
            end
            return NoOperatingSystem::NO_OPERATING_SYSTEM
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

require "org/allbinary/logic/communication/log/Log"
require "org/allbinary/logic/communication/log/LogFactory"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory"
require "org/allbinary/logic/communication/log/config/type/LogConfigTypes"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/logic/system/os/linux/LinuxOperatingSystemFactory"
require "org/allbinary/logic/system/os/solaris/SolarisOperatingSystemFactory"
require "org/allbinary/logic/system/os/windows/WindowsOperatingSystemFactory"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/logic/system/os/GenericOperatingSystem"
require "org/allbinary/logic/system/os/NoOperatingSystem"
require "org/allbinary/logic/system/os/OperatingSystems"
require "org/allbinary/logic/system/os/SystemProperties"
require "java/lang/System"

class OperatingSystemFactory
    @@instance = OperatingSystemFactory.new()
end

