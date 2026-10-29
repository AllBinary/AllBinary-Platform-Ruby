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


class VectorExplosionGenerator
    attr_accessor :RANDOM, :ROTATION, :vectorAnimationUtil, :randomRotationFactory

    def initialize_fields
        @RANDOM = VectorExplosionType.new()
        @ROTATION = VectorExplosionType.new()
        @vectorAnimationUtil = VectorAnimationUtil.getInstance()
        @randomRotationFactory = RandomRotationFactory.getInstance()
    end
    

    def self.getInstance()
        return VectorExplosionGenerator.instance
    end
    

    def initialize()
        initialize_fields
    end
    

    # throws Exception
    def createList(list, howMuch, type)
        point = nil
        size = list.size()
        points = Array.new(size) { Array.new(2, 0) }
        (0...size).each do |index|
            point = list.objectArray[index]
            points[index][0] = point.getX()
            points[index][1] = point.getY()
        end
        return self.createListFromPoints(list, points, howMuch, type)
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def getInstance(points, howMuch, type)
        pointsBasicArrayList = self.getInstanceStartFrame(points, howMuch, type, true)
        tempBasicArrayList = pointsBasicArrayList.objectArray[0]
        newPoints = @vectorAnimationUtil.toAnimationArrayFromListOfPointListWithPointsPerFrame(pointsBasicArrayList, tempBasicArrayList.size())
        return newPoints
    end
    

    # throws Exception
    def getInstanceStartFrame(points, howMuch, type, startFrame)
        begin
            pointsBasicArrayList = BasicArrayListS.new(howMuch)
            pointsBasicArrayList.add(self.createPointsBasicArrayList(points))
            frameIndex = 0
            tempBasicArrayList = nil
            pointBasicArrayList = nil
            while frameIndex < howMuch
                tempBasicArrayList = pointsBasicArrayList.objectArray[frameIndex]
                pointBasicArrayList = self.createListFromPoints(tempBasicArrayList, points, howMuch, type)
                pointsBasicArrayList.add(pointBasicArrayList)
                frameIndex += 1
            end
            if !startFrame
                pointsBasicArrayList.removeAt(0)
            end
            return pointsBasicArrayList
        rescue StandardError => e
            raise e
        end
    end
    

    # throws Exception
    def createListFromPoints(tempBasicArrayList, points, howMuch, type)
        index = 0
        pointBasicArrayList = BasicArrayListD.new()
        sectionBasicArrayList = nil
        while index < points.length
            sectionBasicArrayList = BasicArrayListD.new()
            while points[index][0] != 1000
                sectionBasicArrayList.add(tempBasicArrayList.objectArray[index])
                index += 1
                if index >= points.length
                    break
                end
            end
            sectionBasicArrayList = RandomTranslation.getInstance(sectionBasicArrayList, howMuch)
            if type == @ROTATION
                sectionBasicArrayList = @randomRotationFactory.getInstanceList(sectionBasicArrayList, howMuch)
            end
            size = sectionBasicArrayList.size()
            (0...size).each do |index2|
                pointBasicArrayList.add(sectionBasicArrayList.objectArray[index2])
            end
            if index >= points.length
                break
            elsif points[index][0] == 1000
                pointBasicArrayList.add(tempBasicArrayList.objectArray[index])
                index += 1
            end
        end
        return pointBasicArrayList
    end
    

    # throws Exception
    def createPointsBasicArrayList(points)
        if points.length == 0
            raise StandardError.new("Not Points Provided")
        end
        firstPointBasicArrayList = BasicArrayListS.new(points.length)
        pointFactory = PointFactory.getInstance()
        (0...points.length).each do |index|
            firstPointBasicArrayList.add(pointFactory.createXY(points[index][0], points[index][1]))
        end
        return firstPointBasicArrayList
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/graphics/GPoint"
require "org/allbinary/graphics/PointFactory"
require "org/allbinary/graphics/pipeline/RandomRotationFactory"
require "org/allbinary/graphics/pipeline/RandomTranslation"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/util/BasicArrayListS"
require "org/allbinary/animation/VectorAnimationUtil"
require "org/allbinary/animation/VectorExplosionType"

class VectorExplosionGenerator
    @@instance = VectorExplosionGenerator.new()
end

