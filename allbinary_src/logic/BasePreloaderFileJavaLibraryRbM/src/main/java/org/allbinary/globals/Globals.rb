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
# package org.allbinary.globals


class Globals
    attr_accessor :logUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
    end
    

    def self.getInstance()
        return Globals.instance
    end
    

    def initialize()
        initialize_fields
    end
    

    def init(classLoader, pathString)
        commonStrings = CommonStrings.getInstance()
        appUrlGlobals = AppUrlGlobals.new()
        appUrlGlobals.setWebappPath(pathString)
        URLGLOBALS.init(appUrlGlobals)
        WebappClassLoaderInfo.setLoader(classLoader)
        stringBuffer = StringMaker.new()
        stringBuffer.append("Setting Up AllBinary System Configuration Args: ")
        stringBuffer.append(pathString)
        stringBuffer.append(" ClassLoader: ")
        stringBuffer.append(classLoader.class.name)
        @logUtil.putF(stringBuffer.to_s, self, commonStrings.INIT)
        stringValidationUtil = StringValidationUtil.getInstance()
        if stringValidationUtil.isEmpty(pathString)
            stringBuffer.delete(0, stringBuffer.length())
            stringBuffer.append("No Path Provided. Using Process Path: ")
            stringBuffer.append(pathString)
            stringBuffer.append(CommonSeps.getInstance().SPACE)
            stringBuffer.append(CommonSeps.getInstance().EQUALS)
            stringBuffer.append(CommonSeps.getInstance().SPACE)
            stringBuffer.append(URLGLOBALS.getWebappPath())
            @logUtil.putF(stringBuffer.to_s, self, commonStrings.INIT)
        end
        stringBuffer.delete(0, stringBuffer.length())
        stringBuffer.append("Webapp Path Set To: ")
        stringBuffer.append(URLGLOBALS.getWebappPath())
        @logUtil.putF(stringBuffer.to_s, self, commonStrings.INIT)
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
require "org/allbinary/logic/string/StringValidationUtil"
require "org/allbinary/logic/system/loader/WebappClassLoaderInfo"
require "org/allbinary/string/CommonSeps"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/globals/AppUrlGlobals"
require "org/allbinary/globals/URLGLOBALS"

class Globals
    @@instance = Globals.new()
end

