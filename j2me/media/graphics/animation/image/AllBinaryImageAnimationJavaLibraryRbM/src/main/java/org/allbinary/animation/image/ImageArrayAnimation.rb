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

autoload :Graphics, "javax/microedition/lcdui/Graphics"
autoload :Image, "javax/microedition/lcdui/Image"
autoload :NullImage, "javax/microedition/lcdui/NullImage"
autoload :AnimationBehavior, "org/allbinary/animation/AnimationBehavior"
autoload :Anchor, "org/allbinary/graphics/Anchor"
autoload :PrimitiveIntUtil, "org/allbinary/logic/math/PrimitiveIntUtil"
autoload :CircularIndexUtil, "org/allbinary/util/CircularIndexUtil"

