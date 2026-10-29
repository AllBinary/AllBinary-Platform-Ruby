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

class AllBinaryHTMLImageRotationAnimationFactory < BaseImageAnimationFactory
    attr_accessor :angleIncrement

    def initialize_fields
        @angleIncrement = nil
    end
    

    # throws Exception
    def self.createFactoryADXY(image, width, height, dx, dy, angleIncrement, animationBehaviorFactory)
        htmlImageRotationAnimationFactory = AllBinaryHTMLImageRotationAnimationFactory.new(image, width, height, angleIncrement, animationBehaviorFactory)
        htmlImageRotationAnimationFactory.init(dx, dy)
        return htmlImageRotationAnimationFactory
    end
    

    def initialize(image, width, height, angleIncrement, animationBehaviorFactory)
        super(image, PrimitiveIntUtil.getArrayInstance(), width, height, 0, 0, animationBehaviorFactory)
        initialize_fields
        @angleIncrement = angleIncrement
    end
    

    def init(dx, dy)
        @animationFactoryInitializationVisitor.dx = dx
        @animationFactoryInitializationVisitor.dy = dy
        @animationFactoryInitializationVisitor.originalDx = dx
        @animationFactoryInitializationVisitor.originalDy = dy
    end
    

    # throws Exception
    def getInstance(instanceId)
        scaledImage = @animationFactoryImageScaleUtil.createImage(self.getImage(), @animationFactoryInitializationVisitor.width, @animationFactoryInitializationVisitor.height, @scaleProperties.scaleWidth, @scaleProperties.scaleHeight)
        copyOfScaledImage = ImageCopyUtil.getInstance().createImage(scaledImage)
        if @animationFactoryInitializationVisitor.dx != 0 || @animationFactoryInitializationVisitor.dy != 0
            @animationFactoryImageScaleUtil.processAdjust(self)
            return AllBinaryAdjustedHTMLImageRotationAnimation.new(scaledImage, copyOfScaledImage, AngleInfo.getInstance(self.getAngleIncrement()), AngleFactory.getInstance().TOTAL_ANGLE, @animationFactoryInitializationVisitor.dx, @animationFactoryInitializationVisitor.dy, @animationBehaviorFactory.getOrCreateInstance())
        else
            return AllBinaryHTMLImageRotationAnimation.new(scaledImage, copyOfScaledImage, AngleInfo.getInstance(@angleIncrement), AngleFactory.getInstance().TOTAL_ANGLE, @animationBehaviorFactory.getOrCreateInstance())
        end
    end
    

    def getAngleIncrement()
        return @angleIncrement
    end
end

require "org/allbinary/animation/Animation"
require "org/allbinary/animation/AnimationBehaviorFactory"
require "org/allbinary/game/configuration/GameConfigurationCentral"
require "org/allbinary/logic/math/PrimitiveIntUtil"
require "org/allbinary/media/image/ImageCopyUtil"
require "org/allbinary/math/AngleFactory"
require "org/allbinary/math/AngleInfo"
require "org/allbinary/animation/image/AllBinaryAdjustedHTMLImageRotationAnimation"
require "org/allbinary/animation/image/AllBinaryHTMLImageRotationAnimation"

