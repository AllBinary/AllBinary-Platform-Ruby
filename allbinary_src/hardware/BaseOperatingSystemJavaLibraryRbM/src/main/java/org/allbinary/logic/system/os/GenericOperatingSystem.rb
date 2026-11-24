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

require "java/lang/JavaOverload"
require "java/lang/JavaClass"
require "org/allbinary/logic/system/os/OperatingSystemInterface"

module ::Org; module Allbinary; module Logic; module System; module Os

class GenericOperatingSystem
    include OperatingSystemInterface
    attr_accessor :osName, :osArch, :osVersion, :characterSet, :scalable

    def jfields_org_allbinary_logic_system_os_GenericOperatingSystem
        @osName = nil unless instance_variable_defined?(:@osName)
        @osArch = nil unless instance_variable_defined?(:@osArch)
        @osVersion = nil unless instance_variable_defined?(:@osVersion)
        @characterSet = ::Org::Allbinary::Logic::Java::Character::CharacterSet.new()
        @scalable = false
    end
    

    def initialize()
        jfields_org_allbinary_logic_system_os_GenericOperatingSystem
        systemProperties = SystemProperties.getInstance()
        stringValidationUtil = ::Org::Allbinary::Logic::StringPackage::StringValidationUtil.getInstance()
        _EMPTY_STRING = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
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
    java_overload :getName, 0
    

    def getVersion()
        return @osVersion
    end
    java_overload :getVersion, 0
    

    def getArch()
        return @osArch
    end
    java_overload :getArch, 0
    

    def getCharacterSet()
        return @characterSet
    end
    java_overload :getCharacterSet, 0
    

    def isOverScan()
        return false
    end
    java_overload :isOverScan, 0
    

    def getOverScanXPercent()
        return 100
    end
    java_overload :getOverScanXPercent, 0
    

    def getOverScanYPercent()
        return 100
    end
    java_overload :getOverScanYPercent, 0
    

    def isScalable()
        return @scalable
    end
    java_overload :isScalable, 0
    

    def isAutoHide()
        return false
    end
    java_overload :isAutoHide, 0
    

    def toString()
        _NEW_LINE = ::Org::Allbinary::StringPackage::CommonSeps.getInstance().NEW_LINE
        osBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        osBuffer.append("Operating System Info: \n")
        osBuffer.append(self.getName())
        osBuffer.append(_NEW_LINE)
        osBuffer.append(self.getArch())
        osBuffer.append(_NEW_LINE)
        osBuffer.append(self.getVersion())
        osBuffer.append(_NEW_LINE)
        osBuffer.append(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().toString(self.getCharacterSet()))
        osBuffer.append(_NEW_LINE)
        return osBuffer.to_s
    end
    java_overload :toString, 0
    alias_method :to_s, :toString
end

module ::Org; module Allbinary; module Logic; module Java; module Character; autoload :CharacterSet, "org/allbinary/logic/java/character/CharacterSet" unless const_defined?(:CharacterSet, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringValidationUtil, "org/allbinary/logic/string/StringValidationUtil" unless const_defined?(:StringValidationUtil, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
autoload :SystemProperties, "org/allbinary/logic/system/os/SystemProperties" unless const_defined?(:SystemProperties, false)

end; end; end; end; end

