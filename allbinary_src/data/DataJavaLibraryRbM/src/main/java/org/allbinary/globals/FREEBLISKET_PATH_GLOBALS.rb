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


class FREEBLISKET_PATH_GLOBALS
    attr_accessor :INSTALLPATH, :XSLPATH, :TEMPLATEPATH, :STYLEPATH, :THEMEPATH, :DBINITPATH, :LINEDATAPATH, :CONFIGURATIONPATH, :USERCONFIGURATIONPATH, :CONTEXTCONFIGURATIONPATH, :LICENSEERRORPAGE, :ERRORPAGE

    def initialize_fields
        @INSTALLPATH = nil
        @XSLPATH = nil
        @TEMPLATEPATH = "template" + (AbPathData.getInstance().SEPARATOR).to_s
        @STYLEPATH = @TEMPLATEPATH + "style" + (AbPathData.getInstance().SEPARATOR).to_s
        @THEMEPATH = @STYLEPATH + "theme" + (AbPathData.getInstance().SEPARATOR).to_s
        @DBINITPATH = (PATH_GLOBALS.getInstance().INIT_PATH).to_s + "db" + (AbPathData.getInstance().SEPARATOR).to_s
        @LINEDATAPATH = (PATH_GLOBALS.getInstance().INIT_PATH).to_s + "lineData" + (AbPathData.getInstance().SEPARATOR).to_s
        @CONFIGURATIONPATH = nil
        @USERCONFIGURATIONPATH = nil
        @CONTEXTCONFIGURATIONPATH = nil
        @LICENSEERRORPAGE = "LicensingError.jsp"
        @ERRORPAGE = "Error.jsp"
    end
    

    def self.getInstance()
        return FREEBLISKET_PATH_GLOBALS.instance
    end
    

    def initialize()
        initialize_fields
        stringBuffer = StringMaker.new()
        stringBuffer.append("install")
        stringBuffer.append(AbPathData.getInstance().SEPARATOR)
        @INSTALLPATH = stringBuffer.to_s
        stringBuffer.delete(0, stringBuffer.length())
        stringBuffer.append(PATH_GLOBALS.getInstance().INIT_PATH)
        stringBuffer.append("views")
        stringBuffer.append(AbPathData.getInstance().SEPARATOR)
        @XSLPATH = stringBuffer.to_s
        stringBuffer.delete(0, stringBuffer.length())
        stringBuffer.append(@XSLPATH)
        stringBuffer.append("configuration")
        stringBuffer.append(AbPathData.getInstance().SEPARATOR)
        @CONFIGURATIONPATH = stringBuffer.to_s
        stringBuffer.delete(0, stringBuffer.length())
        stringBuffer.append(@CONFIGURATIONPATH)
        stringBuffer.append("user")
        stringBuffer.append(AbPathData.getInstance().SEPARATOR)
        @USERCONFIGURATIONPATH = stringBuffer.to_s
        stringBuffer.delete(0, stringBuffer.length())
        stringBuffer.append(@CONFIGURATIONPATH)
        stringBuffer.append("context")
        stringBuffer.append(AbPathData.getInstance().SEPARATOR)
        @CONTEXTCONFIGURATIONPATH = stringBuffer.to_s
        stringBuffer.delete(0, stringBuffer.length())
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/io/path/AbPathData"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/globals/PATH_GLOBALS"

class FREEBLISKET_PATH_GLOBALS
    @@instance = FREEBLISKET_PATH_GLOBALS.new()
end

