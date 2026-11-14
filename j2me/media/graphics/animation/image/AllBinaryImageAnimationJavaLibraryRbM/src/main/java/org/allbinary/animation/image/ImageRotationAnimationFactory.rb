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

require "org/allbinary/animation/image/BaseImageAnimationFactory"

class ImageRotationAnimationFactory < BaseImageAnimationFactory
    attr_accessor :angleIncrement

    def initialize_fields
        @angleIncrement = nil
    end
    

    def initialize(image, width, height, dx, dy, angleIncrement, animationBehaviorFactory)
        super(image, PrimitiveIntUtil.getArrayInstance(), width, height, 0, 0, animationBehaviorFactory)
        initialize_fields
        @angleIncrement = angleIncrement
        @animationFactoryInitializationVisitor.dx = dx
        @animationFactoryInitializationVisitor.dy = dy
    end
    

    # throws Exception
    def getInstance(instanceId)
        if @animationFactoryInitializationVisitor.dx != 0 || @animationFactoryInitializationVisitor.dy != 0
            @animationFactoryImageScaleUtil.processAdjust(self)
            return AdjustedImageBaseRotationAnimation.new(self.getImage(), AngleInfo.getInstance(@angleIncrement), AngleFactory.getInstance().TOTAL_ANGLE, @animationFactoryInitializationVisitor.dx, @animationFactoryInitializationVisitor.dy, @animationBehaviorFactory.getOrCreateInstance())
        else
            return ImageBaseRotationAnimation.new(self.getImage(), AngleInfo.getInstance(@angleIncrement), AngleFactory.getInstance().TOTAL_ANGLE, @animationBehaviorFactory.getOrCreateInstance())
        end
    end
    

    def getAngleIncrementP()
        return @angleIncrement
    end
end

autoload :Image, "javax/microedition/lcdui/Image"
autoload :Animation, "org/allbinary/animation/Animation"
autoload :AnimationBehaviorFactory, "org/allbinary/animation/AnimationBehaviorFactory"
autoload :GameConfigurationCentral, "org/allbinary/game/configuration/GameConfigurationCentral"
autoload :PrimitiveIntUtil, "org/allbinary/logic/math/PrimitiveIntUtil"
autoload :AngleFactory, "org/allbinary/math/AngleFactory"
autoload :AngleInfo, "org/allbinary/math/AngleInfo"
autoload :AdjustedImageBaseRotationAnimation, "org/allbinary/animation/image/AdjustedImageBaseRotationAnimation"
autoload :ImageBaseRotationAnimation, "org/allbinary/animation/image/ImageBaseRotationAnimation"

