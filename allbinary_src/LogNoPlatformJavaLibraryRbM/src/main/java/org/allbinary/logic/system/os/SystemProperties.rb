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


#NoPlatform
class SystemProperties
    

    def self.getInstance()
        return SystemProperties.instance
    end
    

    def initialize()
    end
    

    def getName()
        raise RuntimeError.new()
    end
    

    def getArch()
        raise RuntimeError.new()
    end
    

    def getVersion()
        raise RuntimeError.new()
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

