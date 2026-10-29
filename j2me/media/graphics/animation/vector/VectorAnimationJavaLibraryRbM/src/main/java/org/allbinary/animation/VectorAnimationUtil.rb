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
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/graphics/GPoint"
require "org/allbinary/util/BasicArrayList"

class VectorAnimationUtil
    @@instance = VectorAnimationUtil.new()
end

