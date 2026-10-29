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
require "org/allbinary/animation/RotationAnimation"

class ImageArrayBaseRotationAnimation < RotationAnimation
    attr_accessor :imageModifierUtil, :originalImageArray, :imageArray, :currentImage, :totalFrames, :anchor

    def initialize_fields
        @imageModifierUtil = ImageModifierUtil.getInstanceOrCreate()
        @originalImageArray = nil
        @imageArray = NullImage::NULL_IMAGE_ARRAY
        @currentImage = nil
        @totalFrames = 0
        @anchor = Anchor::TOP_LEFT
    end
    

    def initialize(originalImageArray, angleInfo, animationBehavior)
        super(angleInfo, CircularIndexUtil.createInstance(360 / angleInfo.getAngleIncrementInfo().getAngleIncrement()), animationBehavior)
        initialize_fields
        @originalImageArray = originalImageArray
        self.setImageArray(@imageModifierUtil.getImageArray(originalImageArray))
        @currentImage = @imageArray[@circularIndexUtil.getIndex()]
    end
    

    # throws Exception
    def getAnimationSize()
        return self.getSize()
    end
    

    def setAlpha(alpha)
        if @alphaP != alpha
            super(alpha)
            @imageModifierUtil.reset()
            index = @circularIndexUtil.getIndex()
            @imageModifierUtil.setAlpha(@originalImageArray[index], @imageArray[index], index, @alphaP)
        end
    end
    

    def nextRotation()
        super()
        index = @circularIndexUtil.getIndex()
        @imageModifierUtil.setAlpha(@originalImageArray[index], @imageArray[index], index, @alphaP)
        @currentImage = @imageArray[index]
    end
    

    def previousRotation()
        super()
        index = @circularIndexUtil.getIndex()
        @imageModifierUtil.setAlpha(@originalImageArray[index], @imageArray[index], index, @alphaP)
        @currentImage = @imageArray[index]
    end
    

    def setFrame(index2)
        super(index2)
        index = @circularIndexUtil.getIndex()
        @imageModifierUtil.setAlpha(@originalImageArray[index], @imageArray[index], index, @alphaP)
        @currentImage = @imageArray[index]
    end
    

    def setSequence(sequence)
    end
    

    def getSequence()
        return PrimitiveIntUtil.getArrayInstance()
    end
    

    def setImageArray(imageArray)
        @imageArray = imageArray
        @totalFrames = imageArray.length
        @circularIndexUtil = CircularIndexUtil.createInstance(@totalFrames)
    end
    

    def paintXY(graphics, x, y)
        graphics.drawImage(@currentImage, x, y, @anchor)
    end
    

    # throws Exception
    def close()
        disposalUtil = DisposalUtil.getInstance()
        size2 = @imageArray.length
        (0...size2).each do |index|
            disposalUtil.disposeImage(@imageArray[index])
        end
        size = @originalImageArray.length
        (0...size).each do |index|
            disposalUtil.disposeImage(@originalImageArray[index])
        end
        disposalUtil.disposeImage(@currentImage)
    end
    

    # throws Throwable
    def finalize()
        disposalUtil = DisposalUtil.getInstance()
        size2 = @imageArray.length
        (0...size2).each do |index|
            disposalUtil.disposeImage(@imageArray[index])
        end
        size = @originalImageArray.length
        (0...size).each do |index|
            disposalUtil.disposeImage(@originalImageArray[index])
        end
        disposalUtil.disposeImage(@currentImage)
    end
end

require "org/allbinary/DisposalUtil"
require "org/allbinary/animation/AnimationBehavior"
require "org/allbinary/graphics/Anchor"
require "org/allbinary/logic/math/PrimitiveIntUtil"
require "org/allbinary/math/AngleInfo"
require "org/allbinary/media/image/ImageModifierUtil"
require "org/allbinary/util/CircularIndexUtil"

