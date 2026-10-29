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

# require "javax/microedition/lcdui/Graphics"
# require "javax/microedition/lcdui/Image"
require "org/allbinary/animation/image/ImageAnimation"

class ImageSegmentAnimation < ImageAnimation
    attr_accessor :startX, :startY, :drawWidth, :drawHeight, :circularIndexUtil, :sequenceArray

    def initialize_fields
        @startX = nil
        @startY = nil
        @drawWidth = nil
        @drawHeight = nil
        @circularIndexUtil = nil
        @sequenceArray = nil
    end
    

    def initialize(image, sequenceArray, animationBehavior)
        super(image, animationBehavior)
        initialize_fields
        @startX = 0
        @startY = 0
        @drawWidth = self.getImage().getWidth()
        @drawHeight = self.getImage().getHeight()
        @circularIndexUtil = CircularIndexUtil.createInstance(@drawHeight)
        @sequenceArray = sequenceArray
    end
    

    def nextFrame()
        @circularIndexUtil.next_()
    end
    

    def previousFrame()
        @circularIndexUtil.previous()
    end
    

    def setFrame(index)
        @circularIndexUtil.setIndex(index)
    end
    

    def getFrame()
        return @circularIndexUtil.getIndex()
    end
    

    def getSize()
        return @circularIndexUtil.getSize()
    end
    

    def setSequence(sequenceArray)
        @sequenceArray = sequenceArray
    end
    

    def getSequence()
        return @sequenceArray
    end
    

    def paintXY(graphics, x, y)
    end
    

    def getStartX()
        return @startX
    end
    

    def setStartX(startX)
        @startX = startX
    end
    

    def getStartY()
        return @startY
    end
    

    def setStartY(startY)
        @startY = startY
    end
    

    def getDrawWidth()
        return @drawWidth
    end
    

    def setDrawWidth(drawWidth)
        @drawWidth = drawWidth
    end
    

    def getDrawHeight()
        return @drawHeight
    end
    

    def setDrawHeight(drawHeight)
        @drawHeight = drawHeight
    end
end

require "org/allbinary/animation/AnimationBehavior"
require "org/allbinary/util/CircularIndexUtil"

