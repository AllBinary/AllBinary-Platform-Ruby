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

class AllBinaryHTMLImageRotationAnimation < ImageBaseRotationAnimation
    attr_accessor :imageRotationUtil, :imageModifierUtil, :originalImage, :twoImages, :canvasSurfaceArray, :imageToShow, :bufferedImageIndex, :alphaProcessor

    def jfields_org_allbinary_animation_image_AllBinaryHTMLImageRotationAnimation
        @imageRotationUtil = ::Org::Allbinary::Media::Image::ImageRotationUtil.getInstance()
        @imageModifierUtil = ::Org::Allbinary::Media::Image::ImageModifierUtil.getInstanceOrCreate()
        @originalImage = nil unless instance_variable_defined?(:@originalImage)
        @twoImages = Array.new(2, nil)
        @canvasSurfaceArray = Array.new(2, nil)
        @imageToShow = nil unless instance_variable_defined?(:@imageToShow)
        @bufferedImageIndex = 0 unless instance_variable_defined?(:@bufferedImageIndex)
        @alphaProcessor = AlphaBaseProcessor.getInstance()
    end
    

    def initialize(originalImage, image, angleInfo, totalAngle, animationBehavior)
        super(image, angleInfo, totalAngle, animationBehavior)
        jfields_org_allbinary_animation_image_AllBinaryHTMLImageRotationAnimation
        @originalImage = originalImage
        @imageToShow = image
        @twoImages[0] = image
        @twoImages[1] = ::Org::Allbinary::Media::Image::ImageCopyUtil.getInstance().createImage(image)
        @canvasSurfaceArray[0] = self.getCanvasSurface(@twoImages[0])
        @canvasSurfaceArray[1] = self.getCanvasSurface(@twoImages[1])
    end
    

    def getCanvasSurface(image)
        htmlImage = image
        canvasImage = htmlImage.getImage()
        canvasSurface = htmlImage.getCanvasSurface(canvasImage)
        canvasSurface.translate(@originalImage.getWidth() / 2, @originalImage.getHeight() / 2)
        return canvasSurface
    end
    java_overload :getCanvasSurface, 1
    

    def setBasicColorP(basicColor)
        changed = false
        if self.getBasicColorP() == nil || self.getBasicColorP().to_i != basicColor.to_i
            changed = true
        end
        AllBinaryHTMLImageRotationAnimation.superclass.java_super_method(:setBasicColorP, 1).bind(self).call(basicColor)
        if changed
            self.updateImage()
        end
    end
    java_overload :setBasicColorP, 1
    

    def setAlpha(alpha)
        changed = false
        if @alphaP != alpha
            changed = true
        end
        AllBinaryHTMLImageRotationAnimation.superclass.java_super_method(:setAlpha, 1).bind(self).call(alpha)
        if changed
            @alphaProcessor = AlphaProcessor.getInstance()
            self.updateImage()
        end
    end
    java_overload :setAlpha, 1
    

    def nextRotation()
        AllBinaryHTMLImageRotationAnimation.superclass.java_super_method(:nextRotation, 0).bind(self).call()
        self.updateImage()
    end
    java_overload :nextRotation, 0
    

    def previousRotation()
        AllBinaryHTMLImageRotationAnimation.superclass.java_super_method(:previousRotation, 0).bind(self).call()
        self.updateImage()
    end
    java_overload :previousRotation, 0
    

    def updateImage()
        canvasSurface = @canvasSurfaceArray[@bufferedImageIndex]
        canvasSurface.save()
        @imageRotationUtil.rotateImageCanvasSurfaceClear(@originalImage, @twoImages[@bufferedImageIndex], canvasSurface, @angleInfo.getAngle() + 90)
        @alphaProcessor.setAlpha(@imageModifierUtil, @originalImage, @twoImages[@bufferedImageIndex], @alphaP)
        @imageRotationUtil.drawImage(@originalImage, @imageToShow, canvasSurface)
        canvasSurface.restore()
        self.swap()
    end
    java_overload :updateImage, 0
    

    def setFrame(index)
        AllBinaryHTMLImageRotationAnimation.superclass.java_super_method(:setFrame, 1).bind(self).call(index)
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
end

module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Image, "javax/microedition/lcdui/Image" unless const_defined?(:Image, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :AnimationBehavior, "org/allbinary/animation/AnimationBehavior" unless const_defined?(:AnimationBehavior, false); end; end; end
module ::Org; module Allbinary; module MathPackage; autoload :AngleInfo, "org/allbinary/math/AngleInfo" unless const_defined?(:AngleInfo, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Image; autoload :ImageCopyUtil, "org/allbinary/media/image/ImageCopyUtil" unless const_defined?(:ImageCopyUtil, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Image; autoload :ImageModifierUtil, "org/allbinary/media/image/ImageModifierUtil" unless const_defined?(:ImageModifierUtil, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Image; autoload :ImageRotationUtil, "org/allbinary/media/image/ImageRotationUtil" unless const_defined?(:ImageRotationUtil, false); end; end; end; end
module ::Org; module Microemu; module Device; module Playn; autoload :PlaynMutableImage, "org/microemu/device/playn/PlaynMutableImage" unless const_defined?(:PlaynMutableImage, false); end; end; end; end
module ::Playn; module Core; autoload :CanvasImage, "playn/core/CanvasImage" unless const_defined?(:CanvasImage, false); end; end
module ::Playn; module Core; autoload :CanvasSurface, "playn/core/CanvasSurface" unless const_defined?(:CanvasSurface, false); end; end
autoload :AlphaBaseProcessor, "org/allbinary/animation/image/AlphaBaseProcessor" unless const_defined?(:AlphaBaseProcessor, false)
autoload :AlphaProcessor, "org/allbinary/animation/image/AlphaProcessor" unless const_defined?(:AlphaProcessor, false)

end; end; end; end

