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
    attr_accessor :SINGLETON

    def initialize_fields
        @SINGLETON = NoHardware.getInstance()
    end
    

    def self.getInstance()
        return HardwareFactory.instance
    end
    

    def initialize()
        initialize_fields
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def getInstance(os)
        begin
            return @SINGLETON
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

require "org/allbinary/logic/system/os/OperatingSystemInterface"
require "org/allbinary/logic/system/hardware/HardwareInterface"
require "org/allbinary/logic/system/hardware/NoHardware"

class HardwareFactory
    @@instance = HardwareFactory.new()
end

