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
        NoHardware.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        NoHardware.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = NoHardware.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "NoHardware"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :StdUtil, "org/allbinary/logic/StdUtil"
autoload :HardwareComponentInterface, "org/allbinary/logic/system/hardware/components/interfaces/HardwareComponentInterface"
autoload :NoHardwareComponent, "org/allbinary/logic/system/hardware/components/interfaces/NoHardwareComponent"
autoload :ABHashtable, "org/allbinary/util/ABHashtable"

begin
    NoHardware.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

