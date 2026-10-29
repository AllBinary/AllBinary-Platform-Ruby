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

# require "java/awt"
# require "java/awt/image/BufferedImage"
require "org/allbinary/media/image/comparison/motion/MotionRectangleConstraintsInterface"

class MotionRectangleConstraints
    include MotionRectangleConstraintsInterface
    attr_accessor :minDimension, :maxDimension, :maxMotionRectangles, :minArea

    def initialize_fields
        @minDimension = nil
        @maxDimension = nil
        @maxMotionRectangles = 0
        @minArea = 0
    end
    

    def initialize()
        initialize_fields
    end
    

    def getMinDimension()
        return @minDimension
    end
    

    def getMaxDimension()
        return @maxDimension
    end
    

    def isTooSmall(rectangle)
        if rectangle.width < self.getMinDimension().width || rectangle.height < self.getMinDimension().height
            return true
        else
            return false
        end
    end
    

    def isAreaTooSmall(rectangle)
        if rectangle.width * rectangle.height < self.getMinArea()
            return true
        else
            return false
        end
    end
    

    def isTooBig(rectangle)
        if rectangle.width > self.getMaxDimension().width || rectangle.height > self.getMaxDimension().height
            return true
        else
            return false
        end
    end
    

    # throws Exception
    def isValid(frame, bufferedImage, rectangle)
        raise RuntimeError.new()
    end
    

    def setMinDimension(minDimension)
        @minDimension = minDimension
    end
    

    def setMaxDimension(maxDimension)
        @maxDimension = maxDimension
    end
    

    def getMaxMotionRectangles()
        return @maxMotionRectangles
    end
    

    def setMaxMotionRectangles(maxMotionRectangles)
        @maxMotionRectangles = maxMotionRectangles
    end
    

    def getMinArea()
        return @minArea
    end
    

    def setMinArea(minArea)
        @minArea = minArea
    end
end

