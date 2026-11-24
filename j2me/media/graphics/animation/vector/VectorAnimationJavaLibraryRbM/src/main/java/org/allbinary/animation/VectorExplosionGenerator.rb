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


module ::Org; module Allbinary; module Animation

class VectorExplosionGenerator
    attr_accessor :RANDOM, :ROTATION, :vectorAnimationUtil, :randomRotationFactory

    def jfields_org_allbinary_animation_VectorExplosionGenerator
        @RANDOM = VectorExplosionType.new()
        @ROTATION = VectorExplosionType.new()
        @vectorAnimationUtil = VectorAnimationUtil.getInstance()
        @randomRotationFactory = ::Org::Allbinary::Graphics::Pipeline::RandomRotationFactory.getInstance()
    end
    

    def self.getInstance()
        return VectorExplosionGenerator.instance
    end
    

    def initialize()
        jfields_org_allbinary_animation_VectorExplosionGenerator
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
    def getInstance(points, howMuch, type)
        pointsBasicArrayList = self.getInstanceStartFrame(points, howMuch, type, true)
        tempBasicArrayList = pointsBasicArrayList.objectArray[0]
        newPoints = @vectorAnimationUtil.toAnimationArrayFromListOfPointListWithPointsPerFrame(pointsBasicArrayList, tempBasicArrayList.size())
        return newPoints
    end
    

    # throws Exception
    def getInstanceStartFrame(points, howMuch, type, startFrame)
        begin
            pointsBasicArrayList = ::Org::Allbinary::Util::BasicArrayListS.new(howMuch)
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
        pointBasicArrayList = ::Org::Allbinary::Util::BasicArrayListD.new()
        sectionBasicArrayList = nil
        while index < points.length
            sectionBasicArrayList = ::Org::Allbinary::Util::BasicArrayListD.new()
            while points[index][0] != 1000
                sectionBasicArrayList.add(tempBasicArrayList.objectArray[index])
                index += 1
                if index >= points.length
                    break
                end
            end
            sectionBasicArrayList = ::Org::Allbinary::Graphics::Pipeline::RandomTranslation.getInstance(sectionBasicArrayList, howMuch)
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
        firstPointBasicArrayList = ::Org::Allbinary::Util::BasicArrayListS.new(points.length)
        pointFactory = ::Org::Allbinary::Graphics::PointFactory.getInstance()
        (0...points.length).each do |index|
            firstPointBasicArrayList.add(pointFactory.createXY(points[index][0], points[index][1]))
        end
        return firstPointBasicArrayList
    end

    def self.instance()
        VectorExplosionGenerator.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        VectorExplosionGenerator.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = VectorExplosionGenerator.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "VectorExplosionGenerator"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Graphics; autoload :GPoint, "org/allbinary/graphics/GPoint" unless const_defined?(:GPoint, false); end; end; end
module ::Org; module Allbinary; module Graphics; autoload :PointFactory, "org/allbinary/graphics/PointFactory" unless const_defined?(:PointFactory, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Pipeline; autoload :RandomRotationFactory, "org/allbinary/graphics/pipeline/RandomRotationFactory" unless const_defined?(:RandomRotationFactory, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Pipeline; autoload :RandomTranslation, "org/allbinary/graphics/pipeline/RandomTranslation" unless const_defined?(:RandomTranslation, false); end; end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListS, "org/allbinary/util/BasicArrayListS" unless const_defined?(:BasicArrayListS, false); end; end; end
autoload :VectorAnimationUtil, "org/allbinary/animation/VectorAnimationUtil" unless const_defined?(:VectorAnimationUtil, false)
autoload :VectorExplosionType, "org/allbinary/animation/VectorExplosionType" unless const_defined?(:VectorExplosionType, false)

begin
    VectorExplosionGenerator.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end

