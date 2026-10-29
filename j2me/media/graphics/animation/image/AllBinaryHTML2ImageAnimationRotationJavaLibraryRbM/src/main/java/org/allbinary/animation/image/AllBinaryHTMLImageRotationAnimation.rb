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
require "org/allbinary/animation/image/ImageBaseRotationAnimation"

class AllBinaryHTMLImageRotationAnimation < ImageBaseRotationAnimation
    attr_accessor :imageRotationUtil, :imageModifierUtil, :originalImage, :twoImages, :canvasSurfaceArray, :imageToShow, :bufferedImageIndex, :alphaProcessor

    def initialize_fields
        @imageRotationUtil = ImageRotationUtil.getInstance()
        @imageModifierUtil = ImageModifierUtil.getInstanceOrCreate()
        @originalImage = nil
        @twoImages = Array.new(2, nil)
        @canvasSurfaceArray = Array.new(2, nil)
        @imageToShow = nil
        @bufferedImageIndex = 0
        @alphaProcessor = AlphaBaseProcessor.getInstance()
    end
    

    def initialize(originalImage, image, angleInfo, totalAngle, animationBehavior)
        super(image, angleInfo, totalAngle, animationBehavior)
        initialize_fields
        @originalImage = originalImage
        @imageToShow = image
        @twoImages[0] = image
        @twoImages[1] = ImageCopyUtil.getInstance().createImage(image)
        @canvasSurfaceArray[0] = self.getCanvasSurface(@twoImages[0])
        @canvasSurfaceArray[1] = self.getCanvasSurface(@twoImages[1])
    end
    

    def getCanvasSurface(image)
        htmlImage = image
        canvasImage = htmlImage.getImage()
        playN = PlayN.getInstance()
        canvas = (playN.graphics()).get(canvasImage)
        canvas.translate(@originalImage.getWidth() / 2, @originalImage.getHeight() / 2)
        return canvas
    end
    

    def setBasicColorP(basicColor)
        changed = false
        if self.getBasicColorP() == nil || self.getBasicColorP().to_i != basicColor.to_i
            changed = true
        end
        super(basicColor)
        if changed
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
    

    def nextRotation()
        super()
        self.updateImage()
    end
    

    def previousRotation()
        super()
        self.updateImage()
    end
    

    def updateImage()
        canvasSurface = @canvasSurfaceArray[@bufferedImageIndex]
        canvasSurface.save()
        @imageRotationUtil.rotateImageCanvasSurfaceClear(@originalImage, @twoImages[@bufferedImageIndex], canvasSurface, @angleInfo.getAngle() + 90)
        @alphaProcessor.setAlpha(@imageModifierUtil, @originalImage, @twoImages[@bufferedImageIndex], @alphaP)
        @imageRotationUtil.drawImage(@originalImage, @imageToShow, canvasSurface)
        canvasSurface.restore()
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
end

require "org/allbinary/animation/AnimationBehavior"
require "org/allbinary/math/AngleInfo"
require "org/allbinary/graphics/color/BasicColor"
require "org/allbinary/media/image/ImageCopyUtil"
require "org/allbinary/media/image/ImageModifierUtil"
require "org/allbinary/media/image/ImageRotationUtil"
require "org/microemu/device/playn/PlaynMutableImage"
require "playn/core/Canvas"
require "playn/core/ImageImpl"
require "playn/core/PlayN"
require "playn/html/HtmlGraphics"
require "playn/html/HtmlImage"
require "org/allbinary/animation/image/AlphaBaseProcessor"
require "org/allbinary/animation/image/AlphaProcessor"

