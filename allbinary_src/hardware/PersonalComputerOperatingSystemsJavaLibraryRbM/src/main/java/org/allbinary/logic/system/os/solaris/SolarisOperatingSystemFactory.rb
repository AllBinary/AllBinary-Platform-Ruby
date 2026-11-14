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
# package org.allbinary.logic.system.os.solaris


class SolarisOperatingSystemFactory
    attr_accessor :logUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
    end
    

    def self.getInstance()
        return SolarisOperatingSystemFactory.instance
    end
    

    def initialize()
        initialize_fields
    end
    

    def getOperatingSystemInstance()
        begin
            operatingSystems = OperatingSystems.getInstance()
            osName = SystemProperties.getInstance().getName()
            operatingSystemInterface = nil
            if (osName <=> operatingSystems.SOLARIS) == 0
                operatingSystemInterface = SolarisOS.new()
            else
                if operatingSystems.isUnknownSpecificOSAllowed()
                    operatingSystemInterface = SolarisOS.new()
                else
                    raise StandardError.new("Specific Solaris OS Not Supported: " + osName)
                end
            end
            return operatingSystemInterface
        rescue StandardError => e
            if LogConfigTypes::LOGGING.contains(LogConfigTypeFactory.getInstance().FACTORYERROR)
                commonStrings = CommonStrings.getInstance()
                @logUtil.put(commonStrings.EXCEPTION, self, commonStrings.GET_INSTANCE, e)
            end
            return NoOperatingSystem::NO_OPERATING_SYSTEM
        end
    end

    def self.instance()
        SolarisOperatingSystemFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        SolarisOperatingSystemFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = SolarisOperatingSystemFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "SolarisOperatingSystemFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory"
autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes"
autoload :GenericOperatingSystem, "org/allbinary/logic/system/os/GenericOperatingSystem"
autoload :NoOperatingSystem, "org/allbinary/logic/system/os/NoOperatingSystem"
autoload :OperatingSystems, "org/allbinary/logic/system/os/OperatingSystems"
autoload :SystemProperties, "org/allbinary/logic/system/os/SystemProperties"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :SolarisOS, "org/allbinary/logic/system/os/solaris/SolarisOS"

begin
    SolarisOperatingSystemFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

