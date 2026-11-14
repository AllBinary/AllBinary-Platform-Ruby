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
# package org.allbinary.logic.system.os.windows


class WindowsOperatingSystemFactory
    attr_accessor :logUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
    end
    

    def self.getInstance()
        return WindowsOperatingSystemFactory.instance
    end
    

    def initialize()
        initialize_fields
    end
    

    def getOperatingSystemInstance()
        begin
            operatingSystems = OperatingSystems.getInstance()
            osName = SystemProperties.getInstance().getName()
            operatingSystemInterface = nil
            if (osName <=> operatingSystems.WINDOWS_NT) == 0
                operatingSystemInterface = WindowsOS.new()
            elsif (osName <=> operatingSystems.WINDOWS_10) == 0
                operatingSystemInterface = WindowsOS.new()
            elsif (osName <=> operatingSystems.WINDOWS_11) == 0
                operatingSystemInterface = WindowsOS.new()
            elsif (osName <=> operatingSystems.WINDOWS2000) == 0
                operatingSystemInterface = WindowsOS.new()
            elsif (osName <=> operatingSystems.WINDOWS_XP) == 0
                operatingSystemInterface = WindowsOS.new()
            elsif (osName <=> operatingSystems.WINDOWS_VISTA) == 0
                operatingSystemInterface = WindowsOS.new()
            else
                if operatingSystems.isUnknownSpecificOSAllowed()
                    operatingSystemInterface = WindowsOS.new()
                else
                    raise StandardError.new("Specific Windows OS Not Supported: " + osName)
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
        WindowsOperatingSystemFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        WindowsOperatingSystemFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = WindowsOperatingSystemFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "WindowsOperatingSystemFactory"
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
autoload :WindowsOS, "org/allbinary/logic/system/os/windows/WindowsOS"

begin
    WindowsOperatingSystemFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

