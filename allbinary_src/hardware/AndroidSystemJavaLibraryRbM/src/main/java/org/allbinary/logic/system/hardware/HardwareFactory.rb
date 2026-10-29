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


class HardwareFactory
    attr_accessor :logUtil, :tsUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @tsUtil = TsUtil.getInstance()
    end
    

    def self.getInstance()
        return HardwareFactory.instance
    end
    

    def initialize()
        initialize_fields
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def getInstance(os)
        begin
            operatingSystems = OperatingSystems.getInstance()
            if @tsUtil.compareTo(os.getName(), operatingSystems.ANDROID) == 0
                return AndroidHardware.new()
            elsif @tsUtil.compareTo(os.getName(), operatingSystems.HARMONY) == 0
                return AndroidHardware.new()
            end
            raise StandardError.new("No Hardware Imp for: " + os.getName())
        rescue StandardError => e
            commonStrings = CommonStrings.getInstance()
            @logUtil.put("Ignoring Exception Returning NoHardware", self, commonStrings.GET_INSTANCE, e)
            return NoHardware.new()
        end
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/TsUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/system/hardware/android/AndroidHardware"
require "org/allbinary/logic/system/os/GenericOperatingSystem"
require "org/allbinary/logic/system/os/OperatingSystems"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/logic/system/hardware/HardwareInterface"
require "org/allbinary/logic/system/hardware/NoHardware"

class HardwareFactory
    @@instance = HardwareFactory.new()
end

