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

require "java/lang/JavaOverload"
# require "java/awt/Rectangle"
# require "java/awt/image/BufferedImage"
require "org/allbinary/media/image/comparison/motion/MotionRectangles"

module ::Org; module Allbinary; module Media; module Image; module Comparison; module Motion

class ConstrainedMotionRectangles < MotionRectangles
    attr_accessor :logUtil, :motionRectangleConstraintsInterface

    def jfields_org_allbinary_media_image_comparison_motion_ConstrainedMotionRectangles
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @motionRectangleConstraintsInterface = nil unless instance_variable_defined?(:@motionRectangleConstraintsInterface)
    end
    

    def initialize(motionRectangleConstraintsInterface, motionRectangles)
        super(NAME, motionRectangles.getImageComparisonResult())
        jfields_org_allbinary_media_image_comparison_motion_ConstrainedMotionRectangles
        self.setMotionRectangleConstraintsInterface(motionRectangleConstraintsInterface)
    end
    

    # throws Exception
    def applyMotionRectangleConstraints(motionRectangles)
        @logUtil.putF("Start - Size Before: " + (motionRectangles.getVector().size()).to_s, self, "applyMotionRectangleConstraints")
        bufferedImageArray = motionRectangles.getImageComparisonResult().getBufferedImages()
        bufferedImage = bufferedImageArray[1]
        vector = ::Org::Allbinary::Util::BasicArrayListD.new()
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
    java_overload :applyMotionRectangleConstraints, 1
    

    def getMotionRectangleConstraintsInterface()
        return @motionRectangleConstraintsInterface
    end
    java_overload :getMotionRectangleConstraintsInterface, 0
    

    def setMotionRectangleConstraintsInterface(motionRectangleConstraintsInterface)
        @motionRectangleConstraintsInterface = motionRectangleConstraintsInterface
    end
    java_overload :setMotionRectangleConstraintsInterface, 1

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

module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
autoload :MotionRectangle, "org/allbinary/media/image/comparison/motion/MotionRectangle" unless const_defined?(:MotionRectangle, false)
autoload :MotionRectangleConstraintsInterface, "org/allbinary/media/image/comparison/motion/MotionRectangleConstraintsInterface" unless const_defined?(:MotionRectangleConstraintsInterface, false)

begin
    ConstrainedMotionRectangles.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end

