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

require "java/lang/JavaOverload"
require "org/allbinary/logic/system/hardware/HardwareInterface"

module ::Org; module Allbinary; module Logic; module System; module Hardware

class NoHardware
    include HardwareInterface
    

    def self.getInstance()
        return @@instance
    end
    

    def getComponent(index)
        return ::Org::Allbinary::Logic::System::Hardware::Components::Interfaces::NoHardwareComponent.getInstance()
    end
    java_overload :getComponent, 1
    

    def toString()
        return "No Hardware"
    end
    java_overload :toString, 0
    alias_method :to_s, :toString
    

    def compareTo(hardwareInterface)
        return true
    end
    java_overload :compareTo, 1
    

    def difference(hardwareInterface)
        return ::Org::Allbinary::Logic::StdUtil.getInstance().NULL_TABLE
    end
    java_overload :difference, 1

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

module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module System; module Hardware; module Components; module Interfaces; autoload :HardwareComponentInterface, "org/allbinary/logic/system/hardware/components/interfaces/HardwareComponentInterface" unless const_defined?(:HardwareComponentInterface, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Hardware; module Components; module Interfaces; autoload :NoHardwareComponent, "org/allbinary/logic/system/hardware/components/interfaces/NoHardwareComponent" unless const_defined?(:NoHardwareComponent, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Util; autoload :ABHashtable, "org/allbinary/util/ABHashtable" unless const_defined?(:ABHashtable, false); end; end; end

begin
    NoHardware.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

