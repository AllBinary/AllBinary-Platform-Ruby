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

class VectorToImageArrayRotationAnimationFactory < BaseImageAnimationFactory
    attr_accessor :imageArray, :angleIncrement

    def initialize_fields
        @imageArray = NullImage::NULL_IMAGE_ARRAY
        @angleIncrement = 0
    end
    

    def initialize(vectorInfo, basicColor, animationBehaviorFactory)
        super(AnimationFrameToImageUtil.getInstance().getInstanceTranslate(vectorInfo.getWidth(), vectorInfo.getHeight(), VectorAnimation.createVectorAnimation(vectorInfo.getPoints(), basicColor, animationBehaviorFactory.getOrCreateInstance())), PrimitiveIntUtil.getArrayInstance(), 0, 0, 0, 0, animationBehaviorFactory)
        initialize_fields
        self.init()
    end
    

    # throws Exception
    def init()
        angleFactory = AngleFactory.getInstance()
        @angleIncrement = angleFactory.TOTAL_ANGLE / GameConfigurationCentral.getInstance().getGameControlFidelity()
        @imageArray = ImageToRotationImageArrayUtil.getInstance().generate(self.getImage(), self.getAngleIncrement(), (angleFactory.TOTAL_ANGLE).to_i)
    end
    

    # throws Exception
    def getInstance(instanceId)
        if @animationFactoryInitializationVisitor.dx != 0 || @animationFactoryInitializationVisitor.dy != 0
            return AdjustedImageArrayRotationAnimation.new(@imageArray, AngleInfo.getInstance((((self.getAngleIncrement()).to_i + 32768) % 65536 - 32768)), (AngleFactory.getInstance().TOTAL_ANGLE).to_i, @animationFactoryInitializationVisitor.dx, @animationFactoryInitializationVisitor.dy, @animationBehaviorFactory.getOrCreateInstance())
        else
            return AdjustedImageArrayRotationAnimation.createAnimation(@imageArray, AngleInfo.getInstance((((@angleIncrement).to_i + 32768) % 65536 - 32768)), (AngleFactory.getInstance().TOTAL_ANGLE).to_i, @animationBehaviorFactory.getOrCreateInstance())
        end
    end
    

    def getAngleIncrement()
        return @angleIncrement
    end
    

    def setInitialScale(scaleProperties)
    end
end

require "org/allbinary/animation/Animation"
require "org/allbinary/animation/AnimationBehaviorFactory"
require "org/allbinary/animation/VectorAnimation"
require "org/allbinary/game/configuration/GameConfigurationCentral"
require "org/allbinary/graphics/color/BasicColor"
require "org/allbinary/image/AnimationFrameToImageUtil"
require "org/allbinary/logic/math/PrimitiveIntUtil"
require "org/allbinary/math/AngleFactory"
require "org/allbinary/math/AngleInfo"
require "org/allbinary/media/ScaleProperties"
require "org/allbinary/media/image/ImageToRotationImageArrayUtil"
require "org/allbinary/vector/VectorInfo"
require "org/allbinary/animation/image/AdjustedImageArrayRotationAnimation"

