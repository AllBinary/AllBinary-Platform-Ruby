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
require "org/allbinary/animation/image/ImageBaseRotationAnimation"

class AllBinaryJ2SEImageRotationAnimation < ImageBaseRotationAnimation
    attr_accessor :imageRotationUtil, :imageModifierUtil, :realOriginalImage, :originalImageArray, :twoImages, :imageToShow, :bufferedImageIndex, :lastScaleX, :lastScaleY, :scaleX, :scaleY, :maxScaleX, :maxScaleY, :alphaProcessor, :setColorProcessor, :changeColorProcessor, :scaleProcessor

    def initialize_fields
        @imageRotationUtil = ImageRotationUtil.getInstance()
        @imageModifierUtil = ImageModifierUtil.getInstanceOrCreate()
        @realOriginalImage = nil
        @originalImageArray = Array.new(1, nil)
        @twoImages = Array.new(2, nil)
        @imageToShow = nil
        @bufferedImageIndex = 0
        @lastScaleX = 1.0
        @lastScaleY = 1.0
        @scaleX = 1.0
        @scaleY = 1.0
        @maxScaleX = 0.0
        @maxScaleY = 0.0
        @alphaProcessor = ModifierBaseProcessor.getInstance()
        @setColorProcessor = ModifierBaseProcessor.getInstance()
        @changeColorProcessor = ModifierBaseProcessor.getInstance()
        @scaleProcessor = ScaleProcessor.getInstance()
    end
    

    def initialize(originalImage, image, angleInfo, totalAngle, animationBehavior)
        super(image, angleInfo, totalAngle, animationBehavior)
        initialize_fields
        @realOriginalImage = originalImage
        @originalImageArray[0] = originalImage
        @imageToShow = image
        @twoImages[0] = image
        @twoImages[1] = ImageCopyUtil.getInstance().createImageForRotation(image)
    end
    

    def setBasicColorP(basicColor)
        changed = false
        if self.getBasicColorP() == nil || self.getBasicColorP().to_i != basicColor.to_i
            changed = true
        end
        super(basicColor)
        if changed
            @setColorProcessor = SetColorProcessor.getInstance()
            self.updateImage()
        end
    end
    

    def changeBasicColor(basicColor)
        changed = false
        if self.getChangeBasicColor() == nil || self.getChangeBasicColor().to_i != basicColor.to_i
            changed = true
        end
        super(basicColor)
        if changed
            @changeColorProcessor = ChangeColorProcessor.getInstance()
            self.updateImage()
        end
    end
    

    def setAlpha(alpha)
        changed = false
        if @alphaP != alpha
            changed = true
        end
        super(alpha)
        if changed
            @alphaProcessor = AlphaProcessor.getInstance()
            self.updateImage()
        end
    end
    

    def setScale(scaleX, scaleY)
        @scaleX = scaleX
        @scaleY = scaleY
        if @scaleX != @lastScaleX || @scaleY != @lastScaleY
            @scaleProcessor.update(@realOriginalImage, @originalImageArray, @twoImages, @bufferedImageIndex, @scaleX, @scaleY, @maxScaleX, @maxScaleY)
            self.updateImage()
        end
        @lastScaleX = @scaleX
        @lastScaleY = @scaleY
    end
    

    def setMaxScale(maxScaleX, maxScaleY)
        @maxScaleX = maxScaleX
        @maxScaleY = maxScaleY
        @scaleProcessor.update(@realOriginalImage, @originalImageArray, @twoImages, @bufferedImageIndex, @scaleX, @scaleY, @maxScaleX, @maxScaleY)
        self.updateImage()
    end
    

    def nextRotation()
        super()
        self.updateImage()
    end
    

    def previousRotation()
        super()
        self.updateImage()
    end
    

    def updateImage()
        @imageRotationUtil.rotateImage(@originalImageArray[0], @twoImages[@bufferedImageIndex], @angleInfo.getAngle() + 90)
        @alphaProcessor.updateAlpha(@imageModifierUtil, NullImage::NULL_IMAGE, @twoImages[@bufferedImageIndex], 0, @alphaP)
        @setColorProcessor.updateColor(@imageModifierUtil, NullImage::NULL_IMAGE, @twoImages[@bufferedImageIndex], 0, @basicColor)
        @changeColorProcessor.updateColor(@imageModifierUtil, NullImage::NULL_IMAGE, @twoImages[@bufferedImageIndex], 0, @changeBasicColorP)
        self.swap()
    end
    

    def setFrame(index)
        super(index)
        self.updateImage()
    end
    

    def swap()
        @imageToShow = @twoImages[@bufferedImageIndex]
        if @bufferedImageIndex == 0
            @bufferedImageIndex = 1
        else
            @bufferedImageIndex = 0
        end
    end
    

    def paintXY(graphics, x, y)
        graphics.drawImage(@imageToShow, x, y, @anchor)
    end
    

    # throws Exception
    def close()
        super()
        disposalUtil = DisposalUtil.getInstance()
        size2 = @twoImages.length
        (0...size2).each do |index|
            disposalUtil.disposeImage(@twoImages[index])
        end
        size = @originalImageArray.length
        (0...size).each do |index|
            disposalUtil.disposeImage(@originalImageArray[index])
        end
        disposalUtil.disposeImage(@realOriginalImage)
        disposalUtil.disposeImage(@imageToShow)
    end
    

    # throws Throwable
    def finalize()
        super()
        disposalUtil = DisposalUtil.getInstance()
        size2 = @twoImages.length
        (0...size2).each do |index|
            disposalUtil.disposeImage(@twoImages[index])
        end
        size = @originalImageArray.length
        (0...size).each do |index|
            disposalUtil.disposeImage(@originalImageArray[index])
        end
        disposalUtil.disposeImage(@realOriginalImage)
        disposalUtil.disposeImage(@imageToShow)
    end
end

require "org/allbinary/DisposalUtil"
require "org/allbinary/animation/AnimationBehavior"
require "org/allbinary/graphics/color/BasicColor"
require "org/allbinary/math/AngleInfo"
require "org/allbinary/media/image/ImageCopyUtil"
require "org/allbinary/media/image/ImageModifierUtil"
require "org/allbinary/media/image/ImageRotationUtil"
require "org/allbinary/animation/image/AlphaProcessor"
require "org/allbinary/animation/image/ChangeColorProcessor"
require "org/allbinary/animation/image/ModifierBaseProcessor"
require "org/allbinary/animation/image/ScaleBaseProcessor"
require "org/allbinary/animation/image/ScaleProcessor"
require "org/allbinary/animation/image/SetColorProcessor"

