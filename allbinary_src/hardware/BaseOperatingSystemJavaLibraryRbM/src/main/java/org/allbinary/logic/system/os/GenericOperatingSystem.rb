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

require "org/allbinary/logic/system/os/OperatingSystemInterface"

class GenericOperatingSystem
    include OperatingSystemInterface
    attr_accessor :osName, :osArch, :osVersion, :characterSet, :scalable

    def initialize_fields
        @osName = nil
        @osArch = nil
        @osVersion = nil
        @characterSet = CharacterSet.new()
        @scalable = false
    end
    

    def initialize()
        initialize_fields
        systemProperties = SystemProperties.getInstance()
        stringValidationUtil = StringValidationUtil.getInstance()
        _EMPTY_STRING = StringUtil.getInstance().EMPTY_STRING
        if stringValidationUtil.isEmpty(systemProperties.getName())
            @osName = _EMPTY_STRING
        else
            @osName = systemProperties.getName()
        end
        if stringValidationUtil.isEmpty(systemProperties.getArch())
            @osArch = _EMPTY_STRING
        else
            @osArch = systemProperties.getArch()
        end
        if stringValidationUtil.isEmpty(systemProperties.getVersion())
            @osVersion = _EMPTY_STRING
        else
            @osVersion = systemProperties.getVersion()
        end
    end
    

    def getName()
        return @osName
    end
    

    def getVersion()
        return @osVersion
    end
    

    def getArch()
        return @osArch
    end
    

    def getCharacterSet()
        return @characterSet
    end
    

    def isOverScan()
        return false
    end
    

    def getOverScanXPercent()
        return 100
    end
    

    def getOverScanYPercent()
        return 100
    end
    

    def isScalable()
        return @scalable
    end
    

    def isAutoHide()
        return false
    end
    

    def toString()
        _NEW_LINE = CommonSeps.getInstance().NEW_LINE
        osBuffer = StringMaker.new()
        osBuffer.append("Operating System Info: \n")
        osBuffer.append(self.getName())
        osBuffer.append(_NEW_LINE)
        osBuffer.append(self.getArch())
        osBuffer.append(_NEW_LINE)
        osBuffer.append(self.getVersion())
        osBuffer.append(_NEW_LINE)
        osBuffer.append(StringUtil.getInstance().toString(self.getCharacterSet()))
        osBuffer.append(_NEW_LINE)
        return osBuffer.to_s
    end
    alias_method :to_s, :toString
end

require "org/allbinary/logic/java/character/CharacterSet"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/logic/string/StringValidationUtil"
require "org/allbinary/string/CommonSeps"
require "org/allbinary/logic/system/os/SystemProperties"

