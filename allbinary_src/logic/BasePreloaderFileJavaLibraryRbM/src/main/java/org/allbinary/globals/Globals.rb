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
        Globals.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        Globals.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = Globals.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "Globals"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :StringValidationUtil, "org/allbinary/logic/string/StringValidationUtil"
autoload :WebappClassLoaderInfo, "org/allbinary/logic/system/loader/WebappClassLoaderInfo"
autoload :CommonSeps, "org/allbinary/string/CommonSeps"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :AppUrlGlobals, "org/allbinary/globals/AppUrlGlobals"
autoload :URLGLOBALS, "org/allbinary/globals/URLGLOBALS"

begin
    Globals.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

