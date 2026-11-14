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
        ComponentFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        ComponentFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = ComponentFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "ComponentFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :Component, "org/allbinary/logic/system/hardware/components/Component"

begin
    ComponentFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

