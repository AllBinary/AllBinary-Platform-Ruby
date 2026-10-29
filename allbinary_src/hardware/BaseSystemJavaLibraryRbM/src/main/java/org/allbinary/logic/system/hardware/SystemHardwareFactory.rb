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
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/logic/system/os/GenericOperatingSystem"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/logic/system/hardware/HardwareFactory"
require "org/allbinary/logic/system/hardware/HardwareInterface"
require "org/allbinary/logic/system/hardware/NoHardware"

class SystemHardwareFactory
    @@instance = SystemHardwareFactory.new()
end

