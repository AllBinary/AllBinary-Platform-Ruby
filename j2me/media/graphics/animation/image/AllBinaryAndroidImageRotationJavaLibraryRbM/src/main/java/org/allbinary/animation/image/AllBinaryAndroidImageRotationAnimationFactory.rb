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
require "org/allbinary/animation/image/BaseImageAnimationFactory"

class AllBinaryAndroidImageRotationAnimationFactory < BaseImageAnimationFactory
    attr_accessor :angleIncrement, :resizeCanvasForRotation

    def initialize_fields
        @angleIncrement = nil
        @resizeCanvasForRotation = nil
    end
    

    # throws Exception
    def self.createFactory(image, width, height, animationBehaviorFactory)
        return AllBinaryAndroidImageRotationAnimationFactory.new(image, width, height, ((((AngleFactory.getInstance().TOTAL_ANGLE / GameConfigurationCentral.getInstance().getGameControlFidelity())).to_i + 32768) % 65536 - 32768), animationBehaviorFactory, false)
    end
    

    # throws Exception
    def self.createFactoryA(image, width, height, angleIncrement, animationBehaviorFactory)
        return AllBinaryAndroidImageRotationAnimationFactory.new(image, width, height, angleIncrement, animationBehaviorFactory, false)
    end
    

    # throws Exception
    def self.createFactoryU(image, animationBehaviorFactory)
        androidImageRotationAnimationFactory = AllBinaryAndroidImageRotationAnimationFactory.new(image, image.getWidth(), image.getHeight(), ((((AngleFactory.getInstance().TOTAL_ANGLE / GameConfigurationCentral.getInstance().getGameControlFidelity())).to_i + 32768) % 65536 - 32768), animationBehaviorFactory, false)
        androidImageRotationAnimationFactory.init(-(image.getWidth() >> 2), -(image.getHeight() >> 2))
        return androidImageRotationAnimationFactory
    end
    

    # throws Exception
    def self.createFactoryDXYU(image, dx, dy, animationBehaviorFactory)
        androidImageRotationAnimationFactory = AllBinaryAndroidImageRotationAnimationFactory.new(image, image.getWidth(), image.getHeight(), ((((AngleFactory.getInstance().TOTAL_ANGLE / GameConfigurationCentral.getInstance().getGameControlFidelity())).to_i + 32768) % 65536 - 32768), animationBehaviorFactory, false)
        androidImageRotationAnimationFactory.init(dx, dy)
        return androidImageRotationAnimationFactory
    end
    

    # throws Exception
    def self.createFactoryADXY(image, width, height, dx, dy, angleIncrement, animationBehaviorFactory, resizeCanvasForRotation)
        androidImageRotationAnimationFactory = AllBinaryAndroidImageRotationAnimationFactory.new(image, width, height, angleIncrement, animationBehaviorFactory, resizeCanvasForRotation)
        androidImageRotationAnimationFactory.init(dx, dy)
        return androidImageRotationAnimationFactory
    end
    

    def init(dx, dy)
        @animationFactoryInitializationVisitor.dx = dx
        @animationFactoryInitializationVisitor.dy = dy
        @animationFactoryInitializationVisitor.originalDx = dx
        @animationFactoryInitializationVisitor.originalDy = dy
    end
    

    def initialize(image, width, height, angleIncrement, animationBehaviorFactory, resizeCanvasForRotation)
        super(image, PrimitiveIntUtil.getArrayInstance(), width, height, 0, 0, animationBehaviorFactory)
        initialize_fields
        @angleIncrement = angleIncrement
        @resizeCanvasForRotation = resizeCanvasForRotation
    end
    

    # throws Exception
    def getCanvasImage()
        features = Features.getInstance()
        if @resizeCanvasForRotation && !features.isDefault(OpenGLFeatureFactory.getInstance().OPENGL)
            return ImageCopyUtil.getInstance().createImageScale(self.getImage(), 1.44, false)
        else
            return self.getImage()
        end
    end
    

    # throws Exception
    def getInstance(instanceId)
        canvasImage = self.getCanvasImage()
        scaledImage = @animationFactoryImageScaleUtil.createImage(canvasImage, @animationFactoryInitializationVisitor.width, @animationFactoryInitializationVisitor.height, @scaleProperties.scaleWidth, @scaleProperties.scaleHeight)
        copyOfScaledImage = ImageCopyUtil.getInstance().createImage(scaledImage)
        if @animationFactoryInitializationVisitor.dx != 0 || @animationFactoryInitializationVisitor.dy != 0
            @animationFactoryImageScaleUtil.processAdjust(self)
            return AllBinaryAdjustedAndroidImageRotationAnimation.new(scaledImage, copyOfScaledImage, AngleInfo.getInstance(@angleIncrement), AngleFactory.getInstance().TOTAL_ANGLE, @animationFactoryInitializationVisitor.dx, @animationFactoryInitializationVisitor.dy, @animationBehaviorFactory.getOrCreateInstance())
        else
            return AllBinaryFlickerAndroidImageRotationAnimation.new(scaledImage, copyOfScaledImage, AngleInfo.getInstance(@angleIncrement), AngleFactory.getInstance().TOTAL_ANGLE, @animationBehaviorFactory.getOrCreateInstance())
        end
    end
end

require "org/allbinary/animation/Animation"
require "org/allbinary/animation/AnimationBehaviorFactory"
require "org/allbinary/game/configuration/GameConfigurationCentral"
require "org/allbinary/game/configuration/feature/Features"
require "org/allbinary/graphics/opengles/OpenGLFeatureFactory"
require "org/allbinary/logic/math/PrimitiveIntUtil"
require "org/allbinary/media/image/ImageCopyUtil"
require "org/allbinary/math/AngleFactory"
require "org/allbinary/math/AngleInfo"
require "org/allbinary/animation/image/AllBinaryAdjustedAndroidImageRotationAnimation"
require "org/allbinary/animation/image/AllBinaryFlickerAndroidImageRotationAnimation"

