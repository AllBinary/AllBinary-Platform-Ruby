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
# package org.allbinary.media.image.comparison.motion

# require "java/awt"
require "org/allbinary/media/image/comparison/motion/MotionRectangles"

class AllMotionRectangles < MotionRectangles
    

    def initialize(imageComparisonResult)
        super(NAME, imageComparisonResult)
        self.createMotionRectangles(imageComparisonResult)
    end
    

    # throws Exception
    def createMotionRectangles(imageComparisonInfo)
        vector = imageComparisonInfo.getNonMatchingPixelVector()
        size = vector.size()
        (0...size).each do |index|
            pixelDelta = vector.get(index)
            self.addPixelDeltaToAMotionRectangle(pixelDelta)
        end
    end
    

    # throws Exception
    def addPixelDeltaToExistingMotionRectangle(pixelDelta)
        vector = self.getVector()
        size = vector.size()
        (0...size).each do |index|
            motionRectangle = vector.get(index)
            if shouldPixelDeltaPartOfMotionRectangle(motionRectangle, pixelDelta)
                newWidth = pixelDelta.getPoint().getX() - motionRectangle.getRectangle().x
                newHeight = pixelDelta.getPoint().getY() - motionRectangle.getRectangle().y
                if newWidth < motionRectangle.getRectangle().width
                    newWidth = motionRectangle.getRectangle().width
                end
                if newHeight < motionRectangle.getRectangle().height
                    newHeight = motionRectangle.getRectangle().height
                end
                motionRectangle.getRectangle().setSize(newWidth, newHeight)
                return true
            end
        end
        return false
    end
    

    # throws Exception
    def addPixelDeltaToAMotionRectangle(pixelDelta)
        if !addPixelDeltaToExistingMotionRectangle(pixelDelta)
            newRectangle = Rectangle.new(pixelDelta.getPoint().getX(), pixelDelta.getPoint().getY(), 1, 1)
            motionRectangle = MotionRectangle.new(newRectangle)
            motionRectangle.getPixelDeltaVector().add(pixelDelta)
            self.getVector().add(motionRectangle)
        end
    end
    

    # throws Exception
    def shouldPixelDeltaPartOfMotionRectangle(motionRectangle, pixelDelta)
        isPixelLeftOfTheRectangle = false
        if motionRectangle.getRectangle().y > pixelDelta.getPoint().getY()
            raise StandardError.new("PixelAboveTheRectangle")
        end
        if motionRectangle.getRectangle().x > pixelDelta.getPoint().getX()
            isPixelLeftOfTheRectangle = true
        end
        if !isPixelLeftOfTheRectangle
            return self.isPixelDeltaLikelyPartOfMotionRectangle(motionRectangle, pixelDelta)
        end
        return false
    end
    

    # throws Exception
    def isPixelDeltaLikelyPartOfMotionRectangle(motionRectangle, pixelDelta)
        maxX = motionRectangle.getRectangle().x + motionRectangle.getRectangle().width
        maxY = motionRectangle.getRectangle().y + motionRectangle.getRectangle().height
        horizontalDistance = pixelDelta.getPoint().getX() - maxX
        verticalDistance = pixelDelta.getPoint().getY() - maxY
        if horizontalDistance < @MAX_PIXEL_DISTANCE_THRESHOLD && verticalDistance < @MAX_PIXEL_DISTANCE_THRESHOLD
            return true
        end
        return false
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:NAME, "allMotionRectangles_")
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "AllMotionRectangles"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NAME].include?(name)
        end
        super
    end
end

autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD"
autoload :ImageComparisonResult, "org/allbinary/media/image/comparison/ImageComparisonResult"
autoload :PixelDelta, "org/allbinary/media/image/comparison/pixel/PixelDelta"
autoload :MotionRectangle, "org/allbinary/media/image/comparison/motion/MotionRectangle"

begin
    AllMotionRectangles.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

