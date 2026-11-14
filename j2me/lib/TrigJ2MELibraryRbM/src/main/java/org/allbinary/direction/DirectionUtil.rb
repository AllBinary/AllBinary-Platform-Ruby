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
# package org.allbinary.direction


class DirectionUtil
    attr_accessor :directionArray, :directionArray2

    def initialize_fields
        @directionArray = Array.new(10, nil)
        @directionArray2 = Array.new(10, nil)
    end
    

    def self.getInstance()
        return DirectionUtil.instance
    end
    

    def initialize()
        initialize_fields
        angleFactory = AngleFactory.getInstance()
        directionFactory = DirectionFactory.getInstance()
        @directionArray[directionFactory.LEFT.getValue()] = angleFactory.LEFT
        @directionArray[directionFactory.RIGHT.getValue()] = angleFactory.RIGHT
        @directionArray[directionFactory.UP.getValue()] = angleFactory.UP
        @directionArray[directionFactory.DOWN.getValue()] = angleFactory.DOWN
        @directionArray2[directionFactory.LEFT.getValue()] = angleFactory.LEFT
        @directionArray2[directionFactory.RIGHT.getValue()] = angleFactory.RIGHT
        @directionArray2[directionFactory.UP.getValue()] = angleFactory.UP
        @directionArray2[directionFactory.DOWN.getValue()] = angleFactory.DOWN
    end
    

    def getAngle(direction)
        return @directionArray2[direction.getValue()]
    end
    

    def getFrameAngle(direction)
        return @directionArray[direction.getValue()]
    end

    def self.instance()
        DirectionUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        DirectionUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = DirectionUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "DirectionUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :Angle, "org/allbinary/math/Angle"
autoload :AngleFactory, "org/allbinary/math/AngleFactory"
autoload :Direction, "org/allbinary/direction/Direction"
autoload :DirectionFactory, "org/allbinary/direction/DirectionFactory"

begin
    DirectionUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

