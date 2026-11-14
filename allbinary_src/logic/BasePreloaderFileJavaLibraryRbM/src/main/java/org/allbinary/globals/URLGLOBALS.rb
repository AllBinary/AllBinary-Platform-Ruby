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


class URLGLOBALS
    

    def self.init(urlGlobalsInterface)
        URLGLOBALS.urlGlobalsInterface = urlGlobalsInterface
    end
    

    def self.isTestingMode()
        return URLGLOBALS.urlGlobalsInterface.isTestingMode()
    end
    

    def self.getWebappPath()
        return URLGLOBALS.urlGlobalsInterface.getWebappPath()
    end
    

    def self.getTestHtmlPath()
        return URLGLOBALS.urlGlobalsInterface.getTestHtmlPath()
    end
    

    # throws Exception
    def self.getMainPath()
        return URLGLOBALS.urlGlobalsInterface.getMainPath()
    end

    def self.urlGlobalsInterface()
        URLGLOBALS.java_static_fields unless @java_static_fields_started
        return defined?(@@urlGlobalsInterface) ? @@urlGlobalsInterface : nil
    end

    def self.urlGlobalsInterface=(value)
        URLGLOBALS.java_static_fields unless @java_static_fields_started
        @@urlGlobalsInterface = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@urlGlobalsInterface = AppUrlGlobals::NULL_APP_URL_GLOBALS
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "URLGLOBALS"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :AppUrlGlobals, "org/allbinary/globals/AppUrlGlobals"
autoload :UrlGlobalsInterface, "org/allbinary/globals/UrlGlobalsInterface"

begin
    URLGLOBALS.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

