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

require "java/lang/JavaOverload"
# require "java/awt/Dimension"
# require "java/awt/Rectangle"
# require "java/awt/image/BufferedImage"
require "org/allbinary/media/image/comparison/motion/MotionRectangleConstraintsInterface"

module ::Org; module Allbinary; module Input; module Automation; module ModulePackage

class MotionRectangleConstraints
    include ::Org::Allbinary::Media::Image::Comparison::Motion::MotionRectangleConstraintsInterface
    attr_accessor :minDimension, :maxDimension, :maxMotionRectangles, :minArea

    def jfields_org_allbinary_input_automation_module_MotionRectangleConstraints
        @minDimension = nil unless instance_variable_defined?(:@minDimension)
        @maxDimension = nil unless instance_variable_defined?(:@maxDimension)
        @maxMotionRectangles = 0 unless instance_variable_defined?(:@maxMotionRectangles)
        @minArea = 0 unless instance_variable_defined?(:@minArea)
    end
    

    def initialize()
        jfields_org_allbinary_input_automation_module_MotionRectangleConstraints
    end
    

    def getMinDimension()
        return @minDimension
    end
    java_overload :getMinDimension, 0
    

    def getMaxDimension()
        return @maxDimension
    end
    java_overload :getMaxDimension, 0
    

    def isTooSmall(rectangle)
        if rectangle.width < self.getMinDimension().width || rectangle.height < self.getMinDimension().height
            return true
        else
            return false
        end
    end
    java_overload :isTooSmall, 1
    

    def isAreaTooSmall(rectangle)
        if rectangle.width * rectangle.height < self.getMinArea()
            return true
        else
            return false
        end
    end
    java_overload :isAreaTooSmall, 1
    

    def isTooBig(rectangle)
        if rectangle.width > self.getMaxDimension().width || rectangle.height > self.getMaxDimension().height
            return true
        else
            return false
        end
    end
    java_overload :isTooBig, 1
    

    # throws Exception
    def isValid(frame, bufferedImage, rectangle)
        raise RuntimeError.new()
    end
    java_overload :isValid, 3
    

    def setMinDimension(minDimension)
        @minDimension = minDimension
    end
    java_overload :setMinDimension, 1
    

    def setMaxDimension(maxDimension)
        @maxDimension = maxDimension
    end
    java_overload :setMaxDimension, 1
    

    def getMaxMotionRectangles()
        return @maxMotionRectangles
    end
    java_overload :getMaxMotionRectangles, 0
    

    def setMaxMotionRectangles(maxMotionRectangles)
        @maxMotionRectangles = maxMotionRectangles
    end
    java_overload :setMaxMotionRectangles, 1
    

    def getMinArea()
        return @minArea
    end
    java_overload :getMinArea, 0
    

    def setMinArea(minArea)
        @minArea = minArea
    end
    java_overload :setMinArea, 1
end

end; end; end; end; end

