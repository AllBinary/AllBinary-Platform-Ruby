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
require "java/lang/JavaClass"
require "org/allbinary/logic/util/cache/CacheableInterface"

module ::Org; module Allbinary; module Media; module Image; module Comparison; module Motion

class MotionRectanglesResultsFrameCacheable
    include ::Org::Allbinary::Logic::Util::Cache::CacheableInterface
    attr_accessor :motionRectangles, :frame

    def jfields_org_allbinary_media_image_comparison_motion_MotionRectanglesResultsFrameCacheable
        @motionRectangles = nil unless instance_variable_defined?(:@motionRectangles)
        @frame = nil unless instance_variable_defined?(:@frame)
    end
    

    def initialize(motionRectangles, frame)
        jfields_org_allbinary_media_image_comparison_motion_MotionRectanglesResultsFrameCacheable
        @frame = frame
        self.setMotionRectangles(motionRectangles)
    end
    

    def getKey()
        return @frame
    end
    java_overload :getKey, 0
    

    def getMotionRectangles()
        return @motionRectangles
    end
    java_overload :getMotionRectangles, 0
    

    def setMotionRectangles(motionRectangles)
        @motionRectangles = motionRectangles
    end
    java_overload :setMotionRectangles, 1
    

    def toString()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append(self.class.java_name)
        stringBuffer.append(" Frame: ")
        stringBuffer.append(self.getKey().to_s)
        return stringBuffer.to_s
    end
    java_overload :toString, 0
    alias_method :to_s, :toString
end

module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
autoload :MotionRectangles, "org/allbinary/media/image/comparison/motion/MotionRectangles" unless const_defined?(:MotionRectangles, false)

end; end; end; end; end; end

