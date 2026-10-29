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
# package org.allbinary.logic.system.hardware

require "org/allbinary/logic/system/hardware/HardwareInterface"

class NoHardware
    include HardwareInterface
    

    def self.getInstance()
        return NoHardware.instance
    end
    

    def getComponent(index)
        return NoHardwareComponent.getInstance()
    end
    

    def toString()
        return "No Hardware"
    end
    alias_method :to_s, :toString
    

    def compareTo(hardwareInterface)
        return true
    end
    

    def difference(hardwareInterface)
        return StdUtil.getInstance().NULL_TABLE
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/system/hardware/components/interfaces/HardwareComponentInterface"
require "org/allbinary/logic/system/hardware/components/interfaces/NoHardwareComponent"
require "org/allbinary/util/ABHashtable"

class NoHardware
    @@instance = NoHardware.new()
end

