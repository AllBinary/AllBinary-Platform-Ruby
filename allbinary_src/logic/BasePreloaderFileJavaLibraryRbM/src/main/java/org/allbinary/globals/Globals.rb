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

require "java/lang/JavaClass"

module ::Org; module Allbinary; module Globals

class Globals
    attr_accessor :logUtil

    def jfields_org_allbinary_globals_Globals
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
    end
    

    def self.getInstance()
        return Globals.instance
    end
    

    def initialize()
        jfields_org_allbinary_globals_Globals
    end
    

    def init(classLoader, pathString)
        commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        appUrlGlobals = AppUrlGlobals.new()
        appUrlGlobals.setWebappPath(pathString)
        URLGLOBALS.init(appUrlGlobals)
        ::Org::Allbinary::Logic::System::Loader::WebappClassLoaderInfo.setLoader(classLoader)
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append("Setting Up AllBinary System Configuration Args: ")
        stringBuffer.append(pathString)
        stringBuffer.append(" ClassLoader: ")
        stringBuffer.append(classLoader.class.java_name)
        @logUtil.putF(stringBuffer.to_s, self, commonStrings.INIT)
        stringValidationUtil = ::Org::Allbinary::Logic::StringPackage::StringValidationUtil.getInstance()
        if stringValidationUtil.isEmpty(pathString)
            stringBuffer.delete(0, stringBuffer.length())
            stringBuffer.append("No Path Provided. Using Process Path: ")
            stringBuffer.append(pathString)
            stringBuffer.append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().SPACE)
            stringBuffer.append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().EQUALS)
            stringBuffer.append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().SPACE)
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

module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringValidationUtil, "org/allbinary/logic/string/StringValidationUtil" unless const_defined?(:StringValidationUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Loader; autoload :WebappClassLoaderInfo, "org/allbinary/logic/system/loader/WebappClassLoaderInfo" unless const_defined?(:WebappClassLoaderInfo, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
autoload :AppUrlGlobals, "org/allbinary/globals/AppUrlGlobals" unless const_defined?(:AppUrlGlobals, false)
autoload :URLGLOBALS, "org/allbinary/globals/URLGLOBALS" unless const_defined?(:URLGLOBALS, false)
require "java/lang/ClassLoader"

begin
    Globals.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end

