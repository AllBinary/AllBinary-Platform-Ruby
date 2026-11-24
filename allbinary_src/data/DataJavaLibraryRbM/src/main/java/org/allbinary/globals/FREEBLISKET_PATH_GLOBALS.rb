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


module ::Org; module Allbinary; module Globals

class FREEBLISKET_PATH_GLOBALS
    attr_accessor :INSTALLPATH, :XSLPATH, :TEMPLATEPATH, :STYLEPATH, :THEMEPATH, :DBINITPATH, :LINEDATAPATH, :CONFIGURATIONPATH, :USERCONFIGURATIONPATH, :CONTEXTCONFIGURATIONPATH, :LICENSEERRORPAGE, :ERRORPAGE

    def jfields_org_allbinary_globals_FREEBLISKET_PATH_GLOBALS
        @INSTALLPATH = nil unless instance_variable_defined?(:@INSTALLPATH)
        @XSLPATH = nil unless instance_variable_defined?(:@XSLPATH)
        @TEMPLATEPATH = "template" + (::Org::Allbinary::Logic::Io::Path::AbPathData.getInstance().SEPARATOR).to_s
        @STYLEPATH = @TEMPLATEPATH + "style" + (::Org::Allbinary::Logic::Io::Path::AbPathData.getInstance().SEPARATOR).to_s
        @THEMEPATH = @STYLEPATH + "theme" + (::Org::Allbinary::Logic::Io::Path::AbPathData.getInstance().SEPARATOR).to_s
        @DBINITPATH = (PATH_GLOBALS.getInstance().INIT_PATH).to_s + "db" + (::Org::Allbinary::Logic::Io::Path::AbPathData.getInstance().SEPARATOR).to_s
        @LINEDATAPATH = (PATH_GLOBALS.getInstance().INIT_PATH).to_s + "lineData" + (::Org::Allbinary::Logic::Io::Path::AbPathData.getInstance().SEPARATOR).to_s
        @CONFIGURATIONPATH = nil unless instance_variable_defined?(:@CONFIGURATIONPATH)
        @USERCONFIGURATIONPATH = nil unless instance_variable_defined?(:@USERCONFIGURATIONPATH)
        @CONTEXTCONFIGURATIONPATH = nil unless instance_variable_defined?(:@CONTEXTCONFIGURATIONPATH)
        @LICENSEERRORPAGE = "LicensingError.jsp"
        @ERRORPAGE = "Error.jsp"
    end
    

    def self.getInstance()
        return FREEBLISKET_PATH_GLOBALS.instance
    end
    

    def initialize()
        jfields_org_allbinary_globals_FREEBLISKET_PATH_GLOBALS
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append("install")
        stringBuffer.append(::Org::Allbinary::Logic::Io::Path::AbPathData.getInstance().SEPARATOR)
        @INSTALLPATH = stringBuffer.to_s
        stringBuffer.delete(0, stringBuffer.length())
        stringBuffer.append(PATH_GLOBALS.getInstance().INIT_PATH)
        stringBuffer.append("views")
        stringBuffer.append(::Org::Allbinary::Logic::Io::Path::AbPathData.getInstance().SEPARATOR)
        @XSLPATH = stringBuffer.to_s
        stringBuffer.delete(0, stringBuffer.length())
        stringBuffer.append(@XSLPATH)
        stringBuffer.append("configuration")
        stringBuffer.append(::Org::Allbinary::Logic::Io::Path::AbPathData.getInstance().SEPARATOR)
        @CONFIGURATIONPATH = stringBuffer.to_s
        stringBuffer.delete(0, stringBuffer.length())
        stringBuffer.append(@CONFIGURATIONPATH)
        stringBuffer.append("user")
        stringBuffer.append(::Org::Allbinary::Logic::Io::Path::AbPathData.getInstance().SEPARATOR)
        @USERCONFIGURATIONPATH = stringBuffer.to_s
        stringBuffer.delete(0, stringBuffer.length())
        stringBuffer.append(@CONFIGURATIONPATH)
        stringBuffer.append("context")
        stringBuffer.append(::Org::Allbinary::Logic::Io::Path::AbPathData.getInstance().SEPARATOR)
        @CONTEXTCONFIGURATIONPATH = stringBuffer.to_s
        stringBuffer.delete(0, stringBuffer.length())
    end

    def self.instance()
        FREEBLISKET_PATH_GLOBALS.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        FREEBLISKET_PATH_GLOBALS.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = FREEBLISKET_PATH_GLOBALS.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "FREEBLISKET_PATH_GLOBALS"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Logic; module Io; module Path; autoload :AbPathData, "org/allbinary/logic/io/path/AbPathData" unless const_defined?(:AbPathData, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
autoload :PATH_GLOBALS, "org/allbinary/globals/PATH_GLOBALS" unless const_defined?(:PATH_GLOBALS, false)

begin
    FREEBLISKET_PATH_GLOBALS.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end

