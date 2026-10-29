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
# package org.allbinary.logic.system


class SoftwareInformation
    attr_accessor :name, :shortName, :version

    def initialize_fields
        @name = nil
        @shortName = nil
        @version = nil
    end
    

    def initialize(name, version, shortName)
        initialize_fields
        @name = name
        @version = version
        @shortName = StringMaker.new().append(shortName).append(KotlinUtil.getShortName()).to_s
    end
    

    def getName()
        return @name
    end
    

    def getVersion()
        return @version
    end
    

    def toShortString()
        return @shortName
    end
    

    def toString()
        _NAME = "Name: "
        _VERSION = "Version: "
        stringBuffer = StringMaker.new()
        stringBuffer.append(_NAME)
        stringBuffer.append(self.getName())
        stringBuffer.append(CommonSeps.getInstance().SPACE)
        stringBuffer.append(_VERSION)
        stringBuffer.append(self.getVersion())
        return stringBuffer.to_s
    end
    alias_method :to_s, :toString
end

require "org/allbinary/KotlinUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/string/CommonSeps"

