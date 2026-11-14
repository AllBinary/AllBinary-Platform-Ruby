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
require "org/allbinary/globals/UrlGlobalsInterface"

#implements
class AppUrlGlobals < UrlGlobalsInterface
    attr_accessor :path

    def initialize_fields
        @path = StringUtil.getInstance().EMPTY_STRING
    end

    def initialize
        super()
        initialize_fields
    end
    

    def isTestingMode()
        return false
    end
    

    def getWebappPath()
        return @path
    end
    

    def setWebappPath(path)
        java_monitor.synchronize do
        @path = path
        if !(@path.end_with?("\\") || @path.end_with?("/"))
            @path = @path + "\\"
        end
        end
    end
    

    def getTestHtmlPath()
        return StringUtil.getInstance().EMPTY_STRING
    end
    

    # throws Exception
    def getMainPath()
        return @path
    end

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

autoload :StringUtil, "org/allbinary/logic/string/StringUtil"

begin
    AppUrlGlobals.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

