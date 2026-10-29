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

# require "java/awt/Rectangle"
# require "java/awt/image/BufferedImage"
require "org/allbinary/media/image/comparison/motion/MotionRectangles"

class ConstrainedMotionRectangles < MotionRectangles
    attr_accessor :logUtil, :motionRectangleConstraintsInterface

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @motionRectangleConstraintsInterface = nil
    end
    

    def initialize(motionRectangleConstraintsInterface, motionRectangles)
        super(NAME, motionRectangles.getImageComparisonResult())
        initialize_fields
        self.setMotionRectangleConstraintsInterface(motionRectangleConstraintsInterface)
    end
    

    # throws Exception
    def applyMotionRectangleConstraints(motionRectangles)
        @logUtil.putF("Start - Size Before: " + (motionRectangles.getVector().size()).to_s, self, "applyMotionRectangleConstraints")
        bufferedImageArray = motionRectangles.getImageComparisonResult().getBufferedImages()
        bufferedImage = bufferedImageArray[1]
        vector = BasicArrayListD.new()
        vector2 = motionRectangles.getVector()
        size = vector2.size()
        (0...size).each do |index|
            motionRectangle = vector2.get(index)
            rectangle = motionRectangle.getRectangle()
            isTooSmall = self.getMotionRectangleConstraintsInterface().isTooSmall(rectangle)
            if isTooSmall
                next
            end
            isAreaTooSmall = self.getMotionRectangleConstraintsInterface().isAreaTooSmall(rectangle)
            if isAreaTooSmall
                next
            end
            isTooBig = self.getMotionRectangleConstraintsInterface().isTooBig(rectangle)
            if isTooBig
                next
            end
            isValid = self.getMotionRectangleConstraintsInterface().isValid(self.getImageComparisonResult().getFrameTwo(), bufferedImage, motionRectangle.getRectangle())
            if !isValid
                next
            end
            if !isTooSmall && !isAreaTooSmall && !isTooBig && isValid
                vector.add(motionRectangle)
            end
        end
        self.setVector(vector)
    end
    

    def getMotionRectangleConstraintsInterface()
        return @motionRectangleConstraintsInterface
    end
    

    def setMotionRectangleConstraintsInterface(motionRectangleConstraintsInterface)
        @motionRectangleConstraintsInterface = motionRectangleConstraintsInterface
    end
end

require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/media/image/comparison/motion/MotionRectangle"
require "org/allbinary/media/image/comparison/motion/MotionRectangleConstraintsInterface"

class ConstrainedMotionRectangles
    NAME = "constrainedMotionRectangles_"
end

