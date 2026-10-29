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
# package org.allbinary.logic.system.os


class OperatingSystems
    attr_accessor :LINUX, :WINDOWS, :SOLARIS, :WINDOWS2000, :WINDOWS_NT, :WINDOWS_10, :WINDOWS_11, :WINDOWS_VISTA, :WINDOWS_XP, :ANDROID, :HARMONY, :unknownSpecificOSAllowed

    def initialize_fields
        @LINUX = "Linux"
        @WINDOWS = "Windows"
        @SOLARIS = "Solaris"
        @WINDOWS2000 = "Windows 2000"
        @WINDOWS_NT = "Windows NT"
        @WINDOWS_10 = "Windows 10"
        @WINDOWS_11 = "Windows 11"
        @WINDOWS_VISTA = "Windows Vista"
        @WINDOWS_XP = "Windows XP"
        @ANDROID = @LINUX
        @HARMONY = "HarmonyOS"
        @unknownSpecificOSAllowed = true
    end
    

    def initialize()
        initialize_fields
    end
    

    def isUnknownSpecificOSAllowed()
        return @unknownSpecificOSAllowed
    end
    

    def setUnknownSpecificOSAllowed(aUnknownSpecificOSAllowed)
        @unknownSpecificOSAllowed = aUnknownSpecificOSAllowed
    end
    

    def self.getInstance()
        return OperatingSystems.instance
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

class OperatingSystems
    @@instance = OperatingSystems.new()
end

