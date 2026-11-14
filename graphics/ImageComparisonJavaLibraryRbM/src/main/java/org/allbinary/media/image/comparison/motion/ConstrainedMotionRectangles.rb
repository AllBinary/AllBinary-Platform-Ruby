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

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:NAME, "constrainedMotionRectangles_")
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "ConstrainedMotionRectangles"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NAME].include?(name)
        end
        super
    end
end

autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD"
autoload :StdUtil, "org/allbinary/logic/StdUtil"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :MotionRectangle, "org/allbinary/media/image/comparison/motion/MotionRectangle"
autoload :MotionRectangleConstraintsInterface, "org/allbinary/media/image/comparison/motion/MotionRectangleConstraintsInterface"

begin
    ConstrainedMotionRectangles.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

