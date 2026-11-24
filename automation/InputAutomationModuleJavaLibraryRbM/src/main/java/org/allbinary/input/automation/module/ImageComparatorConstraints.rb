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
# require "java/awt/Color"
# require "java/awt/Rectangle"
# require "java/awt/image/BufferedImage"
require "org/allbinary/media/image/comparison/ImageComparatorConstraintsInterface"

module ::Org; module Allbinary; module Input; module Automation; module ModulePackage

class ImageComparatorConstraints
    include ::Org::Allbinary::Media::Image::Comparison::ImageComparatorConstraintsInterface
    attr_accessor :logUtil, :avoidVector, :maxNonMatchingPixelDeltas, :doImageComparisonEveryNthFrame

    def jfields_org_allbinary_input_automation_module_ImageComparatorConstraints
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @avoidVector = nil unless instance_variable_defined?(:@avoidVector)
        @maxNonMatchingPixelDeltas = 0 unless instance_variable_defined?(:@maxNonMatchingPixelDeltas)
        @doImageComparisonEveryNthFrame = nil unless instance_variable_defined?(:@doImageComparisonEveryNthFrame)
    end
    

    def initialize(doImageComparisonEveryNthFrame)
        jfields_org_allbinary_input_automation_module_ImageComparatorConstraints
        @doImageComparisonEveryNthFrame = doImageComparisonEveryNthFrame
        self.setAvoidVector(::Org::Allbinary::Util::BasicArrayListD.new())
    end
    

    def getAvoidVector()
        return @avoidVector
    end
    java_overload :getAvoidVector, 0
    

    def isColorAllowed(frame, point, color)
        raise RuntimeError.new()
    end
    java_overload :isColorAllowed, 3
    

    def isCollisionWithAvoidRectangles_j1_1(rectangle)
        isCollsionWithAvoidRectangles = false
        avoidVector = self.getAvoidVector()
        size = avoidVector.size()
        (0...size).each do |index|
            avoidRectangle = avoidVector.get(index)
            if ::Org::Allbinary::Collision::RectangleCollisionUtil.isCollision(avoidRectangle, rectangle)
                isCollsionWithAvoidRectangles = true
            end
        end
        return isCollsionWithAvoidRectangles
    end
    

    def isCollisionWithAvoidRectangles_j1_2(point)
        isCollsionWithAvoidRectangles = false
        avoidVector = self.getAvoidVector()
        size = avoidVector.size()
        (0...size).each do |index|
            avoidRectangle = avoidVector.get(index)
            if ::Org::Allbinary::Collision::RectangleCollisionUtil.isCollision(avoidRectangle, point)
                isCollsionWithAvoidRectangles = true
                break
            end
        end
        return isCollsionWithAvoidRectangles
    end

    def isCollisionWithAvoidRectangles(*java_overload_args)
        return isCollisionWithAvoidRectangles_j1(*java_overload_args) if java_overload_args.length == 1
        raise ArgumentError, "No method isCollisionWithAvoidRectangles takes #{java_overload_args.length} arguments"
    end

    def isCollisionWithAvoidRectangles_j1(*java_overload_args)
        return isCollisionWithAvoidRectangles_j1_1(*java_overload_args) if true && !(java_overload_args[0].is_a?(::Numeric) || java_overload_args[0] == true || java_overload_args[0] == false || java_overload_args[0].is_a?(::Array))
        return isCollisionWithAvoidRectangles_j1_2(*java_overload_args)
    end
    

    def setAvoidVector(avoidVector)
        @avoidVector = avoidVector
    end
    java_overload :setAvoidVector, 1
    

    def getMaxNonMatchingPixelDeltas()
        return @maxNonMatchingPixelDeltas
    end
    java_overload :getMaxNonMatchingPixelDeltas, 0
    

    def setMaxNonMatchingPixelDeltas(maxNonMatchingPixelDeltas)
        @maxNonMatchingPixelDeltas = maxNonMatchingPixelDeltas
    end
    java_overload :setMaxNonMatchingPixelDeltas, 1
    

    def isFrameAllowed(frame)
        remainder = ((frame + 1) % @doImageComparisonEveryNthFrame)
        @logUtil.putF(" Frame: " + (frame).to_s + " remainder: " + (remainder).to_s + " this.doImageComparisonEveryNthFrame: " + (@doImageComparisonEveryNthFrame).to_s, self, "isCollisionWithAvoidRectangles")
        if remainder == 0
            return true
        else
            return false
        end
    end
    java_overload :isFrameAllowed, 1
    

    # throws Exception
    def isImageValid(bufferedImage)
        raise RuntimeError.new()
    end
    java_overload :isImageValid, 1
    

    def log()
        avoidVector = self.getAvoidVector()
        size = avoidVector.size()
        (0...size).each do |index|
            avoidRectangle = avoidVector.get(index)
            @logUtil.putF("Avoid Rectangle: " + (avoidRectangle).to_s, self, "log")
        end
    end
    java_overload :log, 0
end

module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Collision; autoload :RectangleCollisionUtil, "org/allbinary/collision/RectangleCollisionUtil" unless const_defined?(:RectangleCollisionUtil, false); end; end; end
module ::Org; module Allbinary; module Graphics; autoload :GPoint, "org/allbinary/graphics/GPoint" unless const_defined?(:GPoint, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end

end; end; end; end; end

