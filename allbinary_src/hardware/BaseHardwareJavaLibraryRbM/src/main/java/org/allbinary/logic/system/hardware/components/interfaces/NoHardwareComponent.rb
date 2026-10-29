# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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
# package org.allbinary.logic.system.hardware.components.interfaces

require "org/allbinary/logic/system/hardware/components/interfaces/HardwareComponentInterface"

class NoHardwareComponent
    include HardwareComponentInterface
    

    def self.getInstance()
        return NoHardwareComponent.instance
    end
    

    def compareTo(componentInterface)
        if self == componentInterface
            return true
        end
        return false
    end
    

    def toString()
        return StringUtil.getInstance().NULL_STRING
    end
    alias_method :to_s, :toString

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/string/StringUtil"

class NoHardwareComponent
    @@instance = NoHardwareComponent.new()
end

