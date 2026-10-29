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

# require "javax/microedition/lcdui/Image"
require "org/allbinary/animation/image/ImageBaseRotationAnimation"

class AllBinaryFlickerAndroidImageRotationAnimation < ImageBaseRotationAnimation
    attr_accessor :imageModifierUtil, :androidImageUtil, :matrix, :halfWidth, :halfHeight, :increment, :originalImage

    def initialize_fields
        @imageModifierUtil = ImageModifierUtil.getInstanceOrCreate()
        @androidImageUtil = AndroidImageUtil.getInstance()
        @matrix = Matrix.new()
        @halfWidth = nil
        @halfHeight = nil
        @increment = nil
        @originalImage = nil
    end
    

    def initialize(originalImage, image, angleInfo, totalAngle, animationBehavior)
        super(image, angleInfo, totalAngle, animationBehavior)
        initialize_fields
        @originalImage = originalImage
        @halfWidth = (image.getWidth() >> 1)
        @halfHeight = (image.getHeight() >> 1)
        @increment = ((((@angleInfo.getAngleIncrementInfo().getAngleIncrement())).to_i + 32768) % 65536 - 32768)
    end
    

    def setBasicColorP(basicColor)
        changed = false
        if self.getBasicColorP() == nil || self.getBasicColorP().to_i != basicColor.to_i
            @imageModifierUtil.setColor(@originalImage, self.getImage(), 0, basicColor)
            changed = true
        end
        super(basicColor)
        if changed
            @matrix.setRotate(0.0, (@halfWidth).to_f, (@halfHeight).to_f)
            self.updateImage()
        end
    end
    

    def changeBasicColor(basicColor)
        self.setBasicColorP(basicColor)
    end
    

    def setAlpha(alpha)
        changed = false
        if @alphaP != alpha
            changed = true
        end
        super(alpha)
        @imageModifierUtil.setAlpha(@originalImage, self.getImage(), 0, @alphaP)
        if changed
            @matrix.setRotate(0.0, (@halfWidth).to_f, (@halfHeight).to_f)
            self.updateImage()
        end
    end
    

    def nextRotation()
        super()
        @matrix.setRotate((@increment).to_f, (@halfWidth).to_f, (@halfHeight).to_f)
        self.updateImage()
    end
    

    def previousRotation()
        super()
        @matrix.setRotate((-@increment).to_f, (@halfWidth).to_f, (@halfHeight).to_f)
        self.updateImage()
    end
    

    def updateImage()
        @androidImageUtil.rotate(self.getImage(), @originalImage, @matrix, @imageModifierUtil.paint)
    end
    

    def setFrame(index)
        currentFrame = @circularIndexUtil.getIndex()
        @circularIndexUtil.setIndex(index)
        newFrame = @circularIndexUtil.getIndex()
        @angleInfo.adjustAngle(newFrame)
        @matrix.setRotate(((newFrame - currentFrame)).to_f * (@increment).to_f, (@halfWidth).to_f, (@halfHeight).to_f)
        self.updateImage()
    end
end

require "android/graphics/Matrix"
require "org/allbinary/animation/AnimationBehavior"
require "org/allbinary/graphics/color/BasicColor"
require "org/allbinary/math/AngleInfo"
require "org/allbinary/media/image/AndroidImageUtil"
require "org/allbinary/media/image/ImageModifierUtil"

