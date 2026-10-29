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

class ConsolidateMotionRectangles < MotionRectangles
    attr_accessor :logUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
    end
    

    def initialize(motionRectangles)
        super(NAME, motionRectangles.getImageComparisonResult())
        initialize_fields
        vector = motionRectangles.getVector()
        size = vector.size()
        (0...size).each do |index|
            motionRectangle = vector.get(index)
            vector.add(motionRectangle.clone())
        end
        self.consolidateMotionRectangles()
    end
    

    def consolidateMotionRectangles()
        vector = self.getVector()
        @logUtil.putF("Start - Size Before: " + (vector.size()).to_s, self, "consolidateMotionRectangleConstraints")
        removeVector = BasicArrayListD.new()
        size = vector.size()
        (0...size).each do |index|
            motionRectangle = vector.get(index)
            (index + 1...vector.size()).each do |i|
                motionRectangle2 = vector.get(i)
                rectangle = motionRectangle.getRectangle()
                rectangle2 = motionRectangle2.getRectangle()
                x2 = rectangle.x + rectangle.width
                y2 = rectangle.y + rectangle.height
                rightX = rectangle2.x + rectangle2.width
                bottomY = rectangle2.y + rectangle2.height
                if rectangle.x <= rectangle2.x && rectangle.y <= rectangle2.y && x2 >= rightX && y2 >= bottomY
                    removeVector.add(motionRectangle2)
                end
            end
        end
        self.remove(removeVector)
    end
    

    def remove(removeVector)
        vector = self.getVector()
        size = removeVector.size()
        (0...size).each do |index|
            vector.remove(removeVector.get(index))
        end
    end
end

require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/media/image/comparison/motion/MotionRectangle"

class ConsolidateMotionRectangles
    NAME = "consolidatedMotionRectangles_"
end

