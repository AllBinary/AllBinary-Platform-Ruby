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

require "java/lang/Object"
require "java/lang/JavaOverload"
require "org/allbinary/globals/UrlGlobalsInterface"

module ::Org; module Allbinary; module Globals

#implements
class AppUrlGlobals < UrlGlobalsInterface
    attr_accessor :path

    def jfields_org_allbinary_globals_AppUrlGlobals
        @path = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
    end

    def initialize
        super()
        jfields_org_allbinary_globals_AppUrlGlobals
    end
    

    def isTestingMode()
        return false
    end
    java_overload :isTestingMode, 0
    

    def getWebappPath()
        return @path
    end
    java_overload :getWebappPath, 0
    

    def setWebappPath(path)
        java_monitor.synchronize do
        @path = path
        if !@path.end_with?("\\") || @path.end_with?("/")
            @path = @path + "\\"
        end
        end
    end
    java_overload :setWebappPath, 1
    

    def getTestHtmlPath()
        return ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
    end
    java_overload :getTestHtmlPath, 0
    

    # throws Exception
    def getMainPath()
        return @path
    end
    java_overload :getMainPath, 0

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:NULL_APP_URL_GLOBALS, AppUrlGlobals.new())
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "AppUrlGlobals"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NULL_APP_URL_GLOBALS].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end

begin
    AppUrlGlobals.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end

