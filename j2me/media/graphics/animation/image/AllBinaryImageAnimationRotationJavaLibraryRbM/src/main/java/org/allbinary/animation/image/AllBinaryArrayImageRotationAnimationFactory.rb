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
# require "javax/microedition/lcdui/NullImage"
require "org/allbinary/animation/image/BaseImageAnimationFactory"

class AllBinaryArrayImageRotationAnimationFactory < BaseImageAnimationFactory
    attr_accessor :imageArray, :angleIncrement

    def initialize_fields
        @imageArray = NullImage::NULL_IMAGE_ARRAY
        @angleIncrement = nil
    end
    

    # throws Exception
    def self.createFactory(image, dx, dy)
        arrayImageRotationAnimationFactory = AllBinaryArrayImageRotationAnimationFactory.new(image, image.getWidth(), image.getHeight(), AngleFactory.getInstance().TOTAL_ANGLE / GameConfigurationCentral.getInstance().getGameControlFidelity(), AnimationBehaviorFactory.getInstance())
        arrayImageRotationAnimationFactory.initDXY(dx, dy)
        return arrayImageRotationAnimationFactory
    end
    

    # throws Exception
    def self.createFactoryA(image, dx, dy, angleIncrement)
        arrayImageRotationAnimationFactory = AllBinaryArrayImageRotationAnimationFactory.new(image, image.getWidth(), image.getHeight(), angleIncrement, AnimationBehaviorFactory.getInstance())
        arrayImageRotationAnimationFactory.initDXY(dx, dy)
        return arrayImageRotationAnimationFactory
    end
    

    def initialize(image, width, height, angleIncrement, animationBehaviorFactory)
        super(image, PrimitiveIntUtil.getArrayInstance(), width, height, 0, 0, animationBehaviorFactory)
        initialize_fields
        @angleIncrement = angleIncrement
        self.init()
    end
    

    # throws Exception
    def init()
        self.setImageArray(ImageToRotationImageArrayUtil.getInstance().generate(self.getImage(), self.getAngleIncrement(), (AngleFactory.getInstance().TOTAL_ANGLE).to_i))
    end
    

    def initDXY(dx, dy)
        @animationFactoryInitializationVisitor.dx = dx
        @animationFactoryInitializationVisitor.dy = dy
        @animationFactoryInitializationVisitor.originalDx = dx
        @animationFactoryInitializationVisitor.originalDy = dy
    end
    

    # throws Exception
    def getInstance(instanceId)
        scaledImageArray = Array.new(@imageArray.length, nil)
        size = scaledImageArray.length
        image = self.getImage()
        (0...size).each do |index|
            scaledImageArray[index] = @animationFactoryImageScaleUtil.createImage(image, image.getWidth(), image.getHeight(), @scaleProperties.scaleWidth, @scaleProperties.scaleHeight)
        end
        if @animationFactoryInitializationVisitor.dx != 0 || @animationFactoryInitializationVisitor.dy != 0
            @animationFactoryImageScaleUtil.processAdjust(self)
            return AdjustedImageArrayRotationAnimation.new(scaledImageArray, AngleInfo.getInstance((((self.getAngleIncrement()).to_i + 32768) % 65536 - 32768)), (AngleFactory.getInstance().TOTAL_ANGLE).to_i, @animationFactoryInitializationVisitor.dx, @animationFactoryInitializationVisitor.dy, @animationBehaviorFactory.getOrCreateInstance())
        else
            return ImageArrayRotationAnimation.new(scaledImageArray, AngleInfo.getInstance((((self.getAngleIncrement()).to_i + 32768) % 65536 - 32768)), (AngleFactory.getInstance().TOTAL_ANGLE).to_i, @animationBehaviorFactory.getOrCreateInstance())
        end
    end
    

    def setImageArray(imageArray)
        @imageArray = imageArray
    end
    

    def getAngleIncrement()
        return @angleIncrement
    end
end

require "org/allbinary/animation/Animation"
require "org/allbinary/animation/AnimationBehaviorFactory"
require "org/allbinary/game/configuration/GameConfigurationCentral"
require "org/allbinary/logic/math/PrimitiveIntUtil"
require "org/allbinary/math/AngleFactory"
require "org/allbinary/math/AngleInfo"
require "org/allbinary/media/image/ImageToRotationImageArrayUtil"
require "org/allbinary/animation/image/AdjustedImageArrayRotationAnimation"
require "org/allbinary/animation/image/ImageArrayRotationAnimation"

