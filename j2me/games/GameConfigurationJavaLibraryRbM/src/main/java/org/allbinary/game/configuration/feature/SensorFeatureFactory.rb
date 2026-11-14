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
        SensorFeatureFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        SensorFeatureFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = SensorFeatureFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "SensorFeatureFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :SensorFeature, "org/allbinary/game/configuration/feature/SensorFeature"

begin
    SensorFeatureFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

