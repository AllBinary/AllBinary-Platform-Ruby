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


class MotionRectangles
    attr_accessor :name, :rectangleVector, :imageComparisonResult, :MAX_PIXEL_DISTANCE_THRESHOLD

    def initialize_fields
        @name = nil
        @rectangleVector = nil
        @imageComparisonResult = nil
        @MAX_PIXEL_DISTANCE_THRESHOLD = 2
    end
    

    def initialize(name, imageComparisonResult)
        initialize_fields
        @name = name
        self.setImageComparisonResult(imageComparisonResult)
        self.setVector(BasicArrayListD.new())
    end
    

    def getVector()
        return @rectangleVector
    end
    

    def setVector(rectangleVector)
        @rectangleVector = rectangleVector
    end
    

    def getName()
        return @name
    end
    

    def getImageComparisonResult()
        return @imageComparisonResult
    end
    

    def setImageComparisonResult(imageComparisonResult)
        @imageComparisonResult = imageComparisonResult
    end
end

require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/media/image/comparison/ImageComparisonResult"

