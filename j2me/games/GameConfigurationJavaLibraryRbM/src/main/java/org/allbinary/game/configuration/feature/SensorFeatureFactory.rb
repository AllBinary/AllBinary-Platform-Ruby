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
# package org.allbinary.game.configuration.feature


class SensorFeatureFactory
    attr_accessor :NO_ORIENTATION, :ORIENTATION_SENSORS, :SIMULATED_ORIENTATION_SENSORS, :YAW, :YAW_MINUS_RIGHT_PLUS_LEFT, :YAW_MINUS_LEFT_PLUS_RIGHT, :PITCH, :ROLL

    def initialize_fields
        @NO_ORIENTATION = SensorFeature.new("No Orientation")
        @ORIENTATION_SENSORS = SensorFeature.new("Orientation Sensors")
        @SIMULATED_ORIENTATION_SENSORS = SensorFeature.new("Simulated Orientation Sensors")
        @YAW = SensorFeature.new("Yaw")
        @YAW_MINUS_RIGHT_PLUS_LEFT = SensorFeature.new("Yaw -Right +Left")
        @YAW_MINUS_LEFT_PLUS_RIGHT = SensorFeature.new("Yaw -Left +Right ")
        @PITCH = SensorFeature.new("Pitch")
        @ROLL = SensorFeature.new("Roll")
    end
    

    def self.getInstance()
        return SensorFeatureFactory.instance
    end
    

    def initialize()
        initialize_fields
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/game/configuration/feature/SensorFeature"

class SensorFeatureFactory
    @@instance = SensorFeatureFactory.new()
end

