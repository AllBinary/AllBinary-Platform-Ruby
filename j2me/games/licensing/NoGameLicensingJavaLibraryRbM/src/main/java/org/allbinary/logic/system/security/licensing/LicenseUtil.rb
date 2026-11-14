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
# package org.allbinary.logic.system.security.licensing

require "java/lang/Object"

class LicenseUtil
    

    def self.getInstance()
        return LicenseUtil.instance
    end
    

    def init()
    end
    

    def isRunning()
        java_monitor.synchronize do
        return false
        end
    end
    

    def setRunning(running)
        java_monitor.synchronize do
        end
    end
    

    def shouldWait(commandListener)
        return self.isRunning()
    end

    def self.instance()
        LicenseUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        LicenseUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = LicenseUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "LicenseUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :CommandListener, "javax/microedition/lcdui/CommandListener"

begin
    LicenseUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

