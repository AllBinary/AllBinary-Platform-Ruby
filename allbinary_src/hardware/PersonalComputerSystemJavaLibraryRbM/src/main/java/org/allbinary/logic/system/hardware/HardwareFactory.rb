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

require "java/lang/JavaClass"

module ::Org; module Allbinary; module Logic; module System; module Hardware

class HardwareFactory
    

    def self.getInstance_j0()
        return @@instance
    end
    

    def initialize()
    end
    

    # throws Exception
    def self.getInstance_j1(os)
        begin
            operatingSystems = ::Org::Allbinary::Logic::System::Os::OperatingSystems.getInstance()
            if os.getName().compareTo(operatingSystems.LINUX) == 0
                return ::Org::Allbinary::Logic::System::Hardware::Linux::LinuxHardware.new()
            elsif os.getName().indexOf(operatingSystems.WINDOWS) >= 0
                return ::Org::Allbinary::Logic::System::Hardware::Windows::WindowsHardware.new()
            end
            raise StandardError.new("No Hardware Imp for: " + os.getName())
        rescue StandardError => e
            raise e
        end
    end

    def self.getInstance(*java_overload_args)
        return getInstance_j0(*java_overload_args) if java_overload_args.length == 0
        return getInstance_j1(*java_overload_args) if java_overload_args.length == 1
        raise ArgumentError, "No method getInstance takes #{java_overload_args.length} arguments"
    end

    def self.instance()
        HardwareFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        HardwareFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = HardwareFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "HardwareFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Logic; module System; module Os; autoload :GenericOperatingSystem, "org/allbinary/logic/system/os/GenericOperatingSystem" unless const_defined?(:GenericOperatingSystem, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Os; autoload :OperatingSystems, "org/allbinary/logic/system/os/OperatingSystems" unless const_defined?(:OperatingSystems, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Hardware; module Linux; autoload :LinuxHardware, "org/allbinary/logic/system/hardware/linux/LinuxHardware" unless const_defined?(:LinuxHardware, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Hardware; module Windows; autoload :WindowsHardware, "org/allbinary/logic/system/hardware/windows/WindowsHardware" unless const_defined?(:WindowsHardware, false); end; end; end; end; end; end
autoload :HardwareInterface, "org/allbinary/logic/system/hardware/HardwareInterface" unless const_defined?(:HardwareInterface, false)

begin
    HardwareFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

