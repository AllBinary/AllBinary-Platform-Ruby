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
# package org.allbinary.input


class AllBinarySensorManager
    attr_accessor :ORIENTATION_SENSOR_INPUT, :ORIENTATION_TYPE, :list

    def initialize_fields
        @ORIENTATION_SENSOR_INPUT = "Orientation Sensor Input"
        @ORIENTATION_TYPE = "Orientation Type"
        @list = BasicArrayListD.new()
    end
    

    def self.getInstance()
        if AllBinarySensorManager.instance == NullUtil.getInstance().NULL_OBJECT
            AllBinarySensorManager.instance = AllBinarySensorManager.new()
        end
        return AllBinarySensorManager.instance
    end
    

    def initialize()
        initialize_fields
    end
    

    def init()
    end
    

    def getSensorNamesList()
        return @list
    end
    

    def shutdown()
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/NullUtil"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"

class AllBinarySensorManager
    @@instance = NullUtil.getInstance().NULL_OBJECT
end

