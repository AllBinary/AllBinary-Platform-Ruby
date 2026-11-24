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
require "org/allbinary/logic/util/event/AllBinaryEventObject"

module ::Org; module Allbinary; module Media; module Image; module Comparison; module Motion

class MotionRectanglesResultsEvent < ::Org::Allbinary::Logic::Util::Event::AllBinaryEventObject
    attr_accessor :frame, :motionRectangles

    def jfields_org_allbinary_media_image_comparison_motion_MotionRectanglesResultsEvent
        @frame = nil unless instance_variable_defined?(:@frame)
        @motionRectangles = nil unless instance_variable_defined?(:@motionRectangles)
    end
    

    def initialize(anyType, frame, motionRectangles)
        super(anyType)
        jfields_org_allbinary_media_image_comparison_motion_MotionRectanglesResultsEvent
        @frame = frame
        self.setMotionRectangles(motionRectangles)
    end
    

    def getMotionRectangles()
        return @motionRectangles
    end
    java_overload :getMotionRectangles, 0
    

    def setMotionRectangles(motionRectangles)
        @motionRectangles = motionRectangles
    end
    java_overload :setMotionRectangles, 1
    

    def getFrame()
        return @frame
    end
    java_overload :getFrame, 0
end

autoload :MotionRectangles, "org/allbinary/media/image/comparison/motion/MotionRectangles" unless const_defined?(:MotionRectangles, false)

end; end; end; end; end; end

