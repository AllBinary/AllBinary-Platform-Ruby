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
# package org.allbinary.input.automation.module

# require "java/awt/Color"
# require "java/awt/Rectangle"
# require "java/awt/image/BufferedImage"
require "org/allbinary/media/image/comparison/ImageComparatorConstraintsInterface"

class ImageComparatorConstraints
    include ImageComparatorConstraintsInterface
    attr_accessor :logUtil, :avoidVector, :maxNonMatchingPixelDeltas, :doImageComparisonEveryNthFrame

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @avoidVector = nil
        @maxNonMatchingPixelDeltas = 0
        @doImageComparisonEveryNthFrame = nil
    end
    

    def initialize(doImageComparisonEveryNthFrame)
        initialize_fields
        @doImageComparisonEveryNthFrame = doImageComparisonEveryNthFrame
        self.setAvoidVector(BasicArrayListD.new())
    end
    

    def getAvoidVector()
        return @avoidVector
    end
    

    def isColorAllowed(frame, point, color)
        raise RuntimeError.new()
    end
    

    def isCollisionWithAvoidRectangles(rectangle)
        isCollsionWithAvoidRectangles = false
        avoidVector = self.getAvoidVector()
        size = avoidVector.size()
        (0...size).each do |index|
            avoidRectangle = avoidVector.get(index)
            if RectangleCollisionUtil.isCollision(avoidRectangle, rectangle)
                isCollsionWithAvoidRectangles = true
            end
        end
        return isCollsionWithAvoidRectangles
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def isCollisionWithAvoidRectangles(point)
        isCollsionWithAvoidRectangles = false
        avoidVector = self.getAvoidVector()
        size = avoidVector.size()
        (0...size).each do |index|
            avoidRectangle = avoidVector.get(index)
            if RectangleCollisionUtil.isCollision(avoidRectangle, point)
                isCollsionWithAvoidRectangles = true
                break
            end
        end
        return isCollsionWithAvoidRectangles
    end
    

    def setAvoidVector(avoidVector)
        @avoidVector = avoidVector
    end
    

    def getMaxNonMatchingPixelDeltas()
        return @maxNonMatchingPixelDeltas
    end
    

    def setMaxNonMatchingPixelDeltas(maxNonMatchingPixelDeltas)
        @maxNonMatchingPixelDeltas = maxNonMatchingPixelDeltas
    end
    

    def isFrameAllowed(frame)
        remainder = ((frame + 1) % @doImageComparisonEveryNthFrame)
        @logUtil.putF(" Frame: " + (frame).to_s + " remainder: " + (remainder).to_s + " this.doImageComparisonEveryNthFrame: " + (@doImageComparisonEveryNthFrame).to_s, self, "isCollisionWithAvoidRectangles")
        if remainder == 0
            return true
        else
            return false
        end
    end
    

    # throws Exception
    def isImageValid(bufferedImage)
        raise RuntimeError.new()
    end
    

    def log()
        avoidVector = self.getAvoidVector()
        size = avoidVector.size()
        (0...size).each do |index|
            avoidRectangle = avoidVector.get(index)
            @logUtil.putF("Avoid Rectangle: " + (avoidRectangle).to_s, self, "log")
        end
    end
end

require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/collision/RectangleCollisionUtil"
require "org/allbinary/graphics/GPoint"
require "org/allbinary/logic/communication/log/LogUtil"

