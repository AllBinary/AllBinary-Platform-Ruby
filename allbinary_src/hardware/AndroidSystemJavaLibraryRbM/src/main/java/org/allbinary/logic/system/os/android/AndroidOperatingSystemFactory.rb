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
# package org.allbinary.logic.system.os.android


class AndroidOperatingSystemFactory
    attr_accessor :logUtil, :tsUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @tsUtil = TsUtil.getInstance()
    end
    

    def self.getInstance()
        return AndroidOperatingSystemFactory.instance
    end
    

    def initialize()
        initialize_fields
    end
    

    # throws Exception
    def getOperatingSystemInstance()
        begin
            _GenericOperatingSystem = nil
            systemProperties = SystemProperties.getInstance()
            osName = systemProperties.getName()
            if @tsUtil.compareTo(osName, OperatingSystems.getInstance().ANDROID) == 0
                _GenericOperatingSystem = AndroidOS.new()
            else
                if OperatingSystems.getInstance().isUnknownSpecificOSAllowed()
                    _GenericOperatingSystem = AndroidOS.new()
                else
                    raise StandardError.new("Specific Android OS Not Supported: " + osName)
                end
            end
            return _GenericOperatingSystem
        rescue StandardError => e
            commonStrings = CommonStrings.getInstance()
            @logUtil.put("Failed to get OperatingSystem returning NoOperatingSystem", self, commonStrings.GET_INSTANCE, e)
            return NoOperatingSystem::NO_OPERATING_SYSTEM
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
require "org/allbinary/logic/system/os/GenericOperatingSystem"
require "org/allbinary/logic/system/os/NoOperatingSystem"
require "org/allbinary/logic/system/os/OperatingSystems"
require "org/allbinary/logic/system/os/SystemProperties"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/logic/system/os/android/AndroidOS"

class AndroidOperatingSystemFactory
    @@instance = AndroidOperatingSystemFactory.new()
end

