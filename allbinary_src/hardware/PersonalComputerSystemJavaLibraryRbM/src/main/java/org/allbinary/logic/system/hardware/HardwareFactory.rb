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


class HardwareFactory
    

    def self.getInstance()
        return HardwareFactory.instance
    end
    

    def initialize()
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def self.getInstance(os)
        begin
            operatingSystems = OperatingSystems.getInstance()
            if os.getName().compareTo(operatingSystems.LINUX) == 0
                return LinuxHardware.new()
            elsif os.getName().indexOf(operatingSystems.WINDOWS) >= 0
                return WindowsHardware.new()
            end
            raise StandardError.new("No Hardware Imp for: " + os.getName())
        rescue StandardError => e
            raise e
        end
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/system/os/GenericOperatingSystem"
require "org/allbinary/logic/system/os/OperatingSystems"
require "org/allbinary/logic/system/hardware/linux/LinuxHardware"
require "org/allbinary/logic/system/hardware/windows/WindowsHardware"
require "org/allbinary/logic/system/hardware/HardwareInterface"

class HardwareFactory
    @@instance = HardwareFactory.new()
end

