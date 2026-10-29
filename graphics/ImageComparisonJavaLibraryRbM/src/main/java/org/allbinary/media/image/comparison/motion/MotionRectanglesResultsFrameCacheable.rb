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

require "org/allbinary/logic/util/cache/CacheableInterface"

class MotionRectanglesResultsFrameCacheable
    include CacheableInterface
    attr_accessor :motionRectangles, :frame

    def initialize_fields
        @motionRectangles = nil
        @frame = nil
    end
    

    def initialize(motionRectangles, frame)
        initialize_fields
        @frame = frame
        self.setMotionRectangles(motionRectangles)
    end
    

    def getKey()
        return @frame
    end
    

    def getMotionRectangles()
        return @motionRectangles
    end
    

    def setMotionRectangles(motionRectangles)
        @motionRectangles = motionRectangles
    end
    

    def toString()
        stringBuffer = StringMaker.new()
        stringBuffer.append(self.class.name)
        stringBuffer.append(" Frame: ")
        stringBuffer.append(self.getKey().to_s)
        return stringBuffer.to_s
    end
    alias_method :to_s, :toString
end

require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/media/image/comparison/motion/MotionRectangles"

