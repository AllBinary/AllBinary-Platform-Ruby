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
# package org.allbinary.animation.image

require "java/lang/JavaOverload"
require "org/allbinary/animation/image/ImageAnimation"

module ::Org; module Allbinary; module Animation; module Image

class ImageSegmentAnimation < ImageAnimation
    attr_accessor :startX, :startY, :drawWidth, :drawHeight, :circularIndexUtil, :sequenceArray

    def jfields_org_allbinary_animation_image_ImageSegmentAnimation
        @startX = nil unless instance_variable_defined?(:@startX)
        @startY = nil unless instance_variable_defined?(:@startY)
        @drawWidth = nil unless instance_variable_defined?(:@drawWidth)
        @drawHeight = nil unless instance_variable_defined?(:@drawHeight)
        @circularIndexUtil = nil unless instance_variable_defined?(:@circularIndexUtil)
        @sequenceArray = nil unless instance_variable_defined?(:@sequenceArray)
    end
    

    def initialize(image, sequenceArray, animationBehavior)
        super(image, animationBehavior)
        jfields_org_allbinary_animation_image_ImageSegmentAnimation
        @startX = 0
        @startY = 0
        @drawWidth = self.getImage().getWidth()
        @drawHeight = self.getImage().getHeight()
        @circularIndexUtil = ::Org::Allbinary::Util::CircularIndexUtil.createInstance(@drawHeight)
        @sequenceArray = sequenceArray
    end
    

    def nextFrame()
        @circularIndexUtil.next_()
    end
    java_overload :nextFrame, 0
    

    def previousFrame()
        @circularIndexUtil.previous()
    end
    java_overload :previousFrame, 0
    

    def setFrame(index)
        @circularIndexUtil.setIndex(index)
    end
    java_overload :setFrame, 1
    

    def getFrame()
        return @circularIndexUtil.getIndex()
    end
    java_overload :getFrame, 0
    

    def getSize()
        return @circularIndexUtil.getSize()
    end
    java_overload :getSize, 0
    

    def setSequence(sequenceArray)
        @sequenceArray = sequenceArray
    end
    java_overload :setSequence, 1
    

    def getSequence()
        return @sequenceArray
    end
    java_overload :getSequence, 0
    

    def paintXY(graphics, x, y)
    end
    java_overload :paintXY, 3
    

    def getStartX()
        return @startX
    end
    java_overload :getStartX, 0
    

    def setStartX(startX)
        @startX = startX
    end
    java_overload :setStartX, 1
    

    def getStartY()
        return @startY
    end
    java_overload :getStartY, 0
    

    def setStartY(startY)
        @startY = startY
    end
    java_overload :setStartY, 1
    

    def getDrawWidth()
        return @drawWidth
    end
    java_overload :getDrawWidth, 0
    

    def setDrawWidth(drawWidth)
        @drawWidth = drawWidth
    end
    java_overload :setDrawWidth, 1
    

    def getDrawHeight()
        return @drawHeight
    end
    java_overload :getDrawHeight, 0
    

    def setDrawHeight(drawHeight)
        @drawHeight = drawHeight
    end
    java_overload :setDrawHeight, 1
end

module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Image, "javax/microedition/lcdui/Image" unless const_defined?(:Image, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :AnimationBehavior, "org/allbinary/animation/AnimationBehavior" unless const_defined?(:AnimationBehavior, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :CircularIndexUtil, "org/allbinary/util/CircularIndexUtil" unless const_defined?(:CircularIndexUtil, false); end; end; end

end; end; end; end

