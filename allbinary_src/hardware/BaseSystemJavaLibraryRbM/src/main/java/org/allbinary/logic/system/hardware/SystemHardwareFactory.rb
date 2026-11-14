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
# package org.allbinary.logic.system.hardware


class SystemHardwareFactory
    attr_accessor :logUtil, :commonStrings, :hardwareInterface

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @hardwareInterface = NoHardware.getInstance()
    end
    

    def self.getInstance()
        return SystemHardwareFactory.instance
    end
    

    def initialize()
        initialize_fields
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def getInstance(operatingSystemInterface)
        begin
            if @hardwareInterface == NoHardware.getInstance()
                @hardwareInterface = HardwareFactory.getInstance().getInstance(operatingSystemInterface)
            end
            @logUtil.putF("Found Hardware", self, @commonStrings.CONSTRUCTOR)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.CONSTRUCTOR, e)
        end
        return @hardwareInterface
    end
    

    def self.static_toString()
        systemHardwareFactory = SystemHardwareFactory.getInstance()
        osBuffer = StringMaker.new()
        osBuffer.append("Hardware Info: \n")
        if systemHardwareFactory.hardwareInterface != nil
            osBuffer.append(systemHardwareFactory.hardwareInterface.to_s)
        else
            osBuffer.append(StringUtil.getInstance().NULL_STRING)
        end
        return osBuffer.to_s
    end

    def self.instance()
        SystemHardwareFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        SystemHardwareFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = SystemHardwareFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "SystemHardwareFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :StringUtil, "org/allbinary/logic/string/StringUtil"
autoload :GenericOperatingSystem, "org/allbinary/logic/system/os/GenericOperatingSystem"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :HardwareFactory, "org/allbinary/logic/system/hardware/HardwareFactory"
autoload :HardwareInterface, "org/allbinary/logic/system/hardware/HardwareInterface"
autoload :NoHardware, "org/allbinary/logic/system/hardware/NoHardware"

begin
    SystemHardwareFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

