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

class AllBinaryJ2SEImageRotationAnimationFactory < BaseImageAnimationFactory
    attr_accessor :angleIncrementP, :resizeCanvasForRotation

    def initialize_fields
        @angleIncrementP = nil
        @resizeCanvasForRotation = nil
    end
    

    # throws Exception
    def self.createDXY(image, width, height, dx, dy, angleIncrement, animationBehaviorFactory, resizeCanvasForRotation)
        imageRotationAnimationFactory = AllBinaryJ2SEImageRotationAnimationFactory.new(image, width, height, angleIncrement, animationBehaviorFactory, resizeCanvasForRotation)
        imageRotationAnimationFactory.animationFactoryInitializationVisitor.dx = dx
        imageRotationAnimationFactory.animationFactoryInitializationVisitor.dy = dy
        imageRotationAnimationFactory.animationFactoryInitializationVisitor.originalDx = dx
        imageRotationAnimationFactory.animationFactoryInitializationVisitor.originalDy = dy
        return imageRotationAnimationFactory
    end
    

    def initialize(image, width, height, angleIncrement, animationBehaviorFactory, resizeCanvasForRotation)
        super(image, PrimitiveIntUtil.getArrayInstance(), width, height, 0, 0, animationBehaviorFactory)
        initialize_fields
        @angleIncrementP = angleIncrement
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
        imageCopyUtil = ImageCopyUtil.getInstance()
        canvasImage = self.getCanvasImage()
        scaledImage = @animationFactoryImageScaleUtil.createImage(canvasImage, @animationFactoryInitializationVisitor.width, @animationFactoryInitializationVisitor.height, @scaleProperties.scaleWidth, @scaleProperties.scaleHeight)
        openGLUtil = OpenGLUtil.getInstance()
        scaledImage = openGLUtil.addImage(scaledImage)
        copyOfScaledImage = imageCopyUtil.createImageForRotation(scaledImage)
        if @animationFactoryInitializationVisitor.dx != 0 || @animationFactoryInitializationVisitor.dy != 0
            @animationFactoryImageScaleUtil.processAdjust(self)
            return AllBinaryAdjustedJ2SEImageRotationAnimation.new(scaledImage, copyOfScaledImage, AngleInfo.getInstance(@angleIncrementP), AngleFactory.getInstance().TOTAL_ANGLE, @animationFactoryInitializationVisitor.dx, @animationFactoryInitializationVisitor.dy, @animationBehaviorFactory.getOrCreateInstance())
        else
            return AllBinaryJ2SEImageRotationAnimation.new(scaledImage, copyOfScaledImage, AngleInfo.getInstance(@angleIncrementP), AngleFactory.getInstance().TOTAL_ANGLE, @animationBehaviorFactory.getOrCreateInstance())
        end
    end
    

    def getAngleIncrement()
        return @angleIncrementP
    end
end

require "org/allbinary/animation/Animation"
require "org/allbinary/animation/AnimationBehaviorFactory"
require "org/allbinary/game/configuration/feature/Features"
require "org/allbinary/graphics/opengles/OpenGLFeatureFactory"
require "org/allbinary/graphics/opengles/OpenGLUtil"
require "org/allbinary/logic/math/PrimitiveIntUtil"
require "org/allbinary/math/AngleFactory"
require "org/allbinary/math/AngleInfo"
require "org/allbinary/media/image/ImageCopyUtil"
require "org/allbinary/animation/image/AllBinaryAdjustedJ2SEImageRotationAnimation"
require "org/allbinary/animation/image/AllBinaryJ2SEImageRotationAnimation"

