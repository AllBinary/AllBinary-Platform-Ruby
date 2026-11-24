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
require "org/allbinary/animation/image/ImageBaseRotationAnimation"

module ::Org; module Allbinary; module Animation; module Image

class AllBinaryJ2SEImageRotationAnimation < ImageBaseRotationAnimation
    attr_accessor :imageRotationUtil, :imageModifierUtil, :realOriginalImage, :originalImageArray, :twoImages, :imageToShow, :bufferedImageIndex, :lastScaleX, :lastScaleY, :scaleX, :scaleY, :maxScaleX, :maxScaleY, :alphaProcessor, :setColorProcessor, :changeColorProcessor, :scaleProcessor

    def jfields_org_allbinary_animation_image_AllBinaryJ2SEImageRotationAnimation
        @imageRotationUtil = ::Org::Allbinary::Media::Image::ImageRotationUtil.getInstance()
        @imageModifierUtil = ::Org::Allbinary::Media::Image::ImageModifierUtil.getInstanceOrCreate()
        @realOriginalImage = nil unless instance_variable_defined?(:@realOriginalImage)
        @originalImageArray = Array.new(1, nil)
        @twoImages = Array.new(2, nil)
        @imageToShow = nil unless instance_variable_defined?(:@imageToShow)
        @bufferedImageIndex = 0 unless instance_variable_defined?(:@bufferedImageIndex)
        @lastScaleX = 1.0
        @lastScaleY = 1.0
        @scaleX = 1.0
        @scaleY = 1.0
        @maxScaleX = 0.0 unless instance_variable_defined?(:@maxScaleX)
        @maxScaleY = 0.0 unless instance_variable_defined?(:@maxScaleY)
        @alphaProcessor = ModifierBaseProcessor.getInstance()
        @setColorProcessor = ModifierBaseProcessor.getInstance()
        @changeColorProcessor = ModifierBaseProcessor.getInstance()
        @scaleProcessor = ScaleProcessor.getInstance()
    end
    

    def initialize(originalImage, image, angleInfo, totalAngle, animationBehavior)
        super(image, angleInfo, totalAngle, animationBehavior)
        jfields_org_allbinary_animation_image_AllBinaryJ2SEImageRotationAnimation
        @realOriginalImage = originalImage
        @originalImageArray[0] = originalImage
        @imageToShow = image
        @twoImages[0] = image
        @twoImages[1] = ::Org::Allbinary::Media::Image::ImageCopyUtil.getInstance().createImageForRotation(image)
    end
    

    def setBasicColorP(basicColor)
        changed = false
        if self.getBasicColorP() == nil || self.getBasicColorP().to_i != basicColor.to_i
            changed = true
        end
        AllBinaryJ2SEImageRotationAnimation.superclass.java_super_method(:setBasicColorP, 1).bind(self).call(basicColor)
        if changed
            @setColorProcessor = SetColorProcessor.getInstance()
            self.updateImage()
        end
    end
    java_overload :setBasicColorP, 1
    

    def changeBasicColor(basicColor)
        changed = false
        if self.getChangeBasicColor() == nil || self.getChangeBasicColor().to_i != basicColor.to_i
            changed = true
        end
        AllBinaryJ2SEImageRotationAnimation.superclass.java_super_method(:changeBasicColor, 1).bind(self).call(basicColor)
        if changed
            @changeColorProcessor = ChangeColorProcessor.getInstance()
            self.updateImage()
        end
    end
    java_overload :changeBasicColor, 1
    

    def setAlpha(alpha)
        changed = false
        if @alphaP != alpha
            changed = true
        end
        AllBinaryJ2SEImageRotationAnimation.superclass.java_super_method(:setAlpha, 1).bind(self).call(alpha)
        if changed
            @alphaProcessor = AlphaProcessor.getInstance()
            self.updateImage()
        end
    end
    java_overload :setAlpha, 1
    

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
    java_overload :setScale, 2
    

    def setMaxScale(maxScaleX, maxScaleY)
        @maxScaleX = maxScaleX
        @maxScaleY = maxScaleY
        @scaleProcessor.update(@realOriginalImage, @originalImageArray, @twoImages, @bufferedImageIndex, @scaleX, @scaleY, @maxScaleX, @maxScaleY)
        self.updateImage()
    end
    java_overload :setMaxScale, 2
    

    def nextRotation()
        AllBinaryJ2SEImageRotationAnimation.superclass.java_super_method(:nextRotation, 0).bind(self).call()
        self.updateImage()
    end
    java_overload :nextRotation, 0
    

    def previousRotation()
        AllBinaryJ2SEImageRotationAnimation.superclass.java_super_method(:previousRotation, 0).bind(self).call()
        self.updateImage()
    end
    java_overload :previousRotation, 0
    

    def updateImage()
        @imageRotationUtil.rotateImage(@originalImageArray[0], @twoImages[@bufferedImageIndex], @angleInfo.getAngle() + 90)
        @alphaProcessor.updateAlpha(@imageModifierUtil, ::Javax::Microedition::Lcdui::NullImage::NULL_IMAGE, @twoImages[@bufferedImageIndex], 0, @alphaP)
        @setColorProcessor.updateColor(@imageModifierUtil, ::Javax::Microedition::Lcdui::NullImage::NULL_IMAGE, @twoImages[@bufferedImageIndex], 0, @basicColor)
        @changeColorProcessor.updateColor(@imageModifierUtil, ::Javax::Microedition::Lcdui::NullImage::NULL_IMAGE, @twoImages[@bufferedImageIndex], 0, @changeBasicColorP)
        self.swap()
    end
    java_overload :updateImage, 0
    

    def setFrame(index)
        AllBinaryJ2SEImageRotationAnimation.superclass.java_super_method(:setFrame, 1).bind(self).call(index)
        self.updateImage()
    end
    java_overload :setFrame, 1
    

    def swap()
        @imageToShow = @twoImages[@bufferedImageIndex]
        if @bufferedImageIndex == 0
            @bufferedImageIndex = 1
        else
            @bufferedImageIndex = 0
        end
    end
    java_overload :swap, 0
    

    def paintXY(graphics, x, y)
        graphics.drawImage(@imageToShow, x, y, @anchor)
    end
    java_overload :paintXY, 3
    

    # throws Exception
    def close()
        AllBinaryJ2SEImageRotationAnimation.superclass.java_super_method(:close, 0).bind(self).call()
        disposalUtil = ::Org::Allbinary::DisposalUtil.getInstance()
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
    java_overload :close, 0
    

    # throws Throwable
    def finalize()
        AllBinaryJ2SEImageRotationAnimation.superclass.java_super_method(:finalize, 0).bind(self).call()
        disposalUtil = ::Org::Allbinary::DisposalUtil.getInstance()
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
    java_overload :finalize, 0
end

module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Image, "javax/microedition/lcdui/Image" unless const_defined?(:Image, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :NullImage, "javax/microedition/lcdui/NullImage" unless const_defined?(:NullImage, false); end; end; end
module ::Org; module Allbinary; autoload :DisposalUtil, "org/allbinary/DisposalUtil" unless const_defined?(:DisposalUtil, false); end; end
module ::Org; module Allbinary; module Animation; autoload :AnimationBehavior, "org/allbinary/animation/AnimationBehavior" unless const_defined?(:AnimationBehavior, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end
module ::Org; module Allbinary; module MathPackage; autoload :AngleInfo, "org/allbinary/math/AngleInfo" unless const_defined?(:AngleInfo, false); end; end; end
module ::Org; module Allbinary; module Media; module Image; autoload :ImageCopyUtil, "org/allbinary/media/image/ImageCopyUtil" unless const_defined?(:ImageCopyUtil, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Image; autoload :ImageModifierUtil, "org/allbinary/media/image/ImageModifierUtil" unless const_defined?(:ImageModifierUtil, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Image; autoload :ImageRotationUtil, "org/allbinary/media/image/ImageRotationUtil" unless const_defined?(:ImageRotationUtil, false); end; end; end; end
autoload :AlphaProcessor, "org/allbinary/animation/image/AlphaProcessor" unless const_defined?(:AlphaProcessor, false)
autoload :ChangeColorProcessor, "org/allbinary/animation/image/ChangeColorProcessor" unless const_defined?(:ChangeColorProcessor, false)
autoload :ModifierBaseProcessor, "org/allbinary/animation/image/ModifierBaseProcessor" unless const_defined?(:ModifierBaseProcessor, false)
autoload :ScaleBaseProcessor, "org/allbinary/animation/image/ScaleBaseProcessor" unless const_defined?(:ScaleBaseProcessor, false)
autoload :ScaleProcessor, "org/allbinary/animation/image/ScaleProcessor" unless const_defined?(:ScaleProcessor, false)
autoload :SetColorProcessor, "org/allbinary/animation/image/SetColorProcessor" unless const_defined?(:SetColorProcessor, false)

end; end; end; end

