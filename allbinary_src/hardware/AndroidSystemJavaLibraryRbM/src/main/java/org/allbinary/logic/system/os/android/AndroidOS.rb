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

require "org/allbinary/logic/system/os/GenericOperatingSystem"

class AndroidOS < GenericOperatingSystem
    attr_accessor :stringBuffer, :DEVICE_ID, :DEVICE_SOFTWARE_VERSION, :LINE_1_NUMBER, :OUYA

    def initialize_fields
        @stringBuffer = StringMaker.new()
        @DEVICE_ID = "DeviceId"
        @DEVICE_SOFTWARE_VERSION = "DeviceSoftwareVersion"
        @LINE_1_NUMBER = "Line1Number"
        @OUYA = "ouya"
    end
    

    def initialize()
        super()
        initialize_fields
        _SDK_VERSION = AndroidInfoFactory.getInstance().getVersion()
        if _SDK_VERSION > 10
            @scalable = true
        end
        properties = AndroidSystemProperties.getInstance()
        commonStrings = CommonSeps.getInstance()
        @stringBuffer.append(@DEVICE_ID)
        @stringBuffer.append(commonStrings.EQUALS)
        @stringBuffer.append(properties.getDeviceId())
        @stringBuffer.append(commonStrings.SPACE)
        @stringBuffer.append(@DEVICE_SOFTWARE_VERSION)
        @stringBuffer.append(commonStrings.EQUALS)
        @stringBuffer.append(properties.getDeviceSoftwareVersion())
        @stringBuffer.append(commonStrings.SPACE)
        @stringBuffer.append(@LINE_1_NUMBER)
        @stringBuffer.append(commonStrings.EQUALS)
        @stringBuffer.append(properties.getLine1Number())
        @stringBuffer.append(commonStrings.SPACE)
        @stringBuffer.append("NetworkCountryIso")
        @stringBuffer.append(commonStrings.EQUALS)
        @stringBuffer.append(properties.getNetworkCountryIso())
        @stringBuffer.append(commonStrings.SPACE)
        @stringBuffer.append("NetworkOperator")
        @stringBuffer.append(commonStrings.EQUALS)
        @stringBuffer.append(properties.getNetworkOperator())
        @stringBuffer.append(commonStrings.SPACE)
        @stringBuffer.append("NetworkOperatorName")
        @stringBuffer.append(commonStrings.EQUALS)
        @stringBuffer.append(properties.getNetworkOperatorName())
        @stringBuffer.append(commonStrings.SPACE)
        @stringBuffer.append("NetworkType")
        @stringBuffer.append(commonStrings.EQUALS)
        @stringBuffer.appendint((properties.getNetworkType()).to_i)
        @stringBuffer.append(commonStrings.SPACE)
        @stringBuffer.append("PhoneType")
        @stringBuffer.append(commonStrings.EQUALS)
        @stringBuffer.appendint((properties.getPhoneType()).to_i)
        @stringBuffer.append(commonStrings.SPACE)
        @stringBuffer.append("SimCountryIso")
        @stringBuffer.append(commonStrings.EQUALS)
        @stringBuffer.append(properties.getSimCountryIso())
        @stringBuffer.append(commonStrings.SPACE)
        @stringBuffer.append("SimOperator")
        @stringBuffer.append(commonStrings.EQUALS)
        @stringBuffer.append(properties.getSimOperator())
        @stringBuffer.append(commonStrings.SPACE)
        @stringBuffer.append("SimOperatorName")
        @stringBuffer.append(commonStrings.EQUALS)
        @stringBuffer.append(properties.getSimOperatorName())
        @stringBuffer.append(commonStrings.SPACE)
        @stringBuffer.append("SimSerialNumber")
        @stringBuffer.append(commonStrings.EQUALS)
        @stringBuffer.append(properties.getSimSerialNumber())
        @stringBuffer.append(commonStrings.SPACE)
        @stringBuffer.append("SubscriberId")
        @stringBuffer.append(commonStrings.EQUALS)
        @stringBuffer.append(properties.getSubscriberId())
        @stringBuffer.append(commonStrings.SPACE)
        @stringBuffer.append("VoiceMailAlphaTag")
        @stringBuffer.append(commonStrings.EQUALS)
        @stringBuffer.append(properties.getVoiceMailAlphaTag())
        @stringBuffer.append(commonStrings.SPACE)
        @stringBuffer.append("VoiceMailNumber")
        @stringBuffer.append(commonStrings.EQUALS)
        @stringBuffer.append(properties.getVoiceMailNumber())
        @stringBuffer.append(commonStrings.SPACE)
    end
    

    def isOverScan()
        properties = AndroidSystemProperties.getInstance()
        if (properties.getDevice().toLowerCase().index(@OUYA) || -1) >= 0
            return true
        end
        return false
    end
    

    def getOverScanXPercent()
        return 90
    end
    

    def getOverScanYPercent()
        return 90
    end
    

    def toString()
        osBuffer = StringMaker.new()
        osBuffer.append(super.to_s)
        osBuffer.append(CommonSeps.getInstance().SPACE)
        osBuffer.append("Other System Info: \n")
        osBuffer.append(@stringBuffer.to_s)
        return osBuffer.to_s
    end
    alias_method :to_s, :toString
end

require "org/allbinary/android/AndroidInfoFactory"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/string/CommonSeps"
require "org/allbinary/logic/system/os/android/AndroidSystemProperties"

