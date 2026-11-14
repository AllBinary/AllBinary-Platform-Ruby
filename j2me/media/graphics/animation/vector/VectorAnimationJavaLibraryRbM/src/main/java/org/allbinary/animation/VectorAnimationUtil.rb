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
# package org.allbinary.animation


class VectorAnimationUtil
    

    def self.getInstance()
        return VectorAnimationUtil.instance
    end
    

    def initialize()
    end
    

    def toAnimationArrayFromListOfPointListWithPointsPerFrame(vector, pointsPerFrame)
        size = vector.size()
        points = Array.new(size) { Array.new(pointsPerFrame) { Array.new(2, 0) } }
        nextBasicArrayList = nil
        framePoints = nil
        (0...size).each do |index|
            nextBasicArrayList = vector.objectArray[index]
            framePoints = self.toFrameArrayFromPointBasicArrayList(nextBasicArrayList)
            (0...framePoints.length).each do |pointIndex|
                points[index][pointIndex][0] = framePoints[pointIndex][0]
                points[index][pointIndex][1] = framePoints[pointIndex][1]
            end
        end
        return points
    end
    

    def toAnimationArrayFromListOfPointList(vector)
        size = vector.size()
        points = Array.new(size) { Array.new(0) { Array.new(0, 0) } }
        nextBasicArrayList = nil
        framePoints = nil
        (0...size).each do |index|
            nextBasicArrayList = vector.objectArray[index]
            framePoints = self.toFrameArrayFromPointBasicArrayList(nextBasicArrayList)
            points[index] = Array.new(framePoints.length) { Array.new(2, 0) }
            (0...framePoints.length).each do |pointIndex|
                points[index][pointIndex][0] = framePoints[pointIndex][0]
                points[index][pointIndex][1] = framePoints[pointIndex][1]
            end
        end
        return points
    end
    

    def toFrameArrayFromPointBasicArrayList(list)
        points = Array.new(list.size()) { Array.new(2, 0) }
        size = list.size()
        (0...size).each do |index|
            nextPoint = list.objectArray[index]
            points[index][0] = nextPoint.getX()
            points[index][1] = nextPoint.getY()
        end
        return points
    end

    def self.instance()
        VectorAnimationUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        VectorAnimationUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = VectorAnimationUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "VectorAnimationUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :GPoint, "org/allbinary/graphics/GPoint"
autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"

begin
    VectorAnimationUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

