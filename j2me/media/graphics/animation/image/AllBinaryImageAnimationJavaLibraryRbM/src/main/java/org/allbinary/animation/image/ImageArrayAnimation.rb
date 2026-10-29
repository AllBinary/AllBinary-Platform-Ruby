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
# require "javax/microedition/lcdui/NullImage"
require "org/allbinary/animation/IndexedAnimation"

class ImageArrayAnimation < IndexedAnimation
    attr_accessor :imageArray, :totalFrames, :circularIndexUtil, :anchor

    def initialize_fields
        @imageArray = NullImage::NULL_IMAGE_ARRAY
        @totalFrames = 0
        @circularIndexUtil = CircularIndexUtil::NULL_CIRCULAR_INDEX_UTIL
        @anchor = Anchor::TOP_LEFT
    end
    

    def initialize(imageArray, animationBehavior)
        super(animationBehavior)
        initialize_fields
        self.setImageArray(imageArray)
    end
    

    # throws Exception
    def getAnimationSize()
        return self.getSize()
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
        return @totalFrames
    end
    

    def setSequence(sequence)
    end
    

    def getSequence()
        return PrimitiveIntUtil.getArrayInstance()
    end
    

    def getImage(index)
        return @imageArray[index]
    end
    

    def getImageArray()
        return @imageArray
    end
    

    def setImageArray(imageArray)
        @imageArray = imageArray
        @totalFrames = imageArray.length
        @circularIndexUtil = CircularIndexUtil.createInstance(@totalFrames)
    end
    

    def paintXY(graphics, x, y)
        graphics.drawImage(@imageArray[@circularIndexUtil.getIndex()], x, y, @anchor)
    end
end

require "org/allbinary/animation/AnimationBehavior"
require "org/allbinary/graphics/Anchor"
require "org/allbinary/logic/math/PrimitiveIntUtil"
require "org/allbinary/util/CircularIndexUtil"

