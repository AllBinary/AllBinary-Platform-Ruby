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
# package org.allbinary.logic.system.hardware.components


class ComponentFactory
    attr_accessor :VGA, :IDE, :SCSI, :BRIDGE, :ETHERNET, :USB, :MULTIMEDIA, :PCI, :RAID, :SMBUS, :PIC, :Class, :UNKNOWN

    def initialize_fields
        @VGA = Component.new("VGA")
        @IDE = Component.new("IDE")
        @SCSI = Component.new("SCSI")
        @BRIDGE = Component.new("bridge")
        @ETHERNET = Component.new("Ethernet")
        @USB = Component.new("USB")
        @MULTIMEDIA = Component.new("Multimedia")
        @PCI = Component.new("PCI")
        @RAID = Component.new("RAID")
        @SMBUS = Component.new("SMBus")
        @PIC = Component.new("PIC")
        @Class = Component.new("Class")
        @UNKNOWN = Component.new(CommonStrings.getInstance().UNKNOWN)
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return ComponentFactory.instance
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/string/CommonStrings"
require "org/allbinary/logic/system/hardware/components/Component"

class ComponentFactory
    @@instance = ComponentFactory.new()
end

