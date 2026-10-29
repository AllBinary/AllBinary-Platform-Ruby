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
# require "javax/microedition/lcdui/CommandListener"

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
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

class LicenseUtil
    @@instance = LicenseUtil.new()
end

