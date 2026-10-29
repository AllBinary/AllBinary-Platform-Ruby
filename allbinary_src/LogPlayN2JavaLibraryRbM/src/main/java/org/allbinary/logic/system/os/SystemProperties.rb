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

# require "jsinterop/annotations/JsType"

class SystemProperties
    attr_accessor :OS_NAME, :OS_ARCH, :OS_VERSION

    def initialize_fields
        @OS_NAME = "os.name"
        @OS_ARCH = "os.arch"
        @OS_VERSION = "os.version"
    end
    

    def self.getInstance()
        return SystemProperties.instance
    end
    

    def initialize()
        initialize_fields
    end
    

    def getName()
        return @OS_NAME
    end
    

    def getArch()
        return @OS_ARCH
    end
    

    def getVersion()
        return @OS_VERSION
    end
    

    def getUserHomePath()
        raise RuntimeError.new()
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

class SystemProperties
    @@instance = SystemProperties.new()
end

