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

autoload :Image, "javax/microedition/lcdui/Image"
autoload :NullImage, "javax/microedition/lcdui/NullImage"
autoload :Animation, "org/allbinary/animation/Animation"
autoload :AnimationBehaviorFactory, "org/allbinary/animation/AnimationBehaviorFactory"
autoload :VectorAnimation, "org/allbinary/animation/VectorAnimation"
autoload :GameConfigurationCentral, "org/allbinary/game/configuration/GameConfigurationCentral"
autoload :BasicColor, "org/allbinary/graphics/color/BasicColor"
autoload :AnimationFrameToImageUtil, "org/allbinary/image/AnimationFrameToImageUtil"
autoload :PrimitiveIntUtil, "org/allbinary/logic/math/PrimitiveIntUtil"
autoload :AngleFactory, "org/allbinary/math/AngleFactory"
autoload :AngleInfo, "org/allbinary/math/AngleInfo"
autoload :ScaleProperties, "org/allbinary/media/ScaleProperties"
autoload :ImageToRotationImageArrayUtil, "org/allbinary/media/image/ImageToRotationImageArrayUtil"
autoload :VectorInfo, "org/allbinary/vector/VectorInfo"
autoload :AdjustedImageArrayRotationAnimation, "org/allbinary/animation/image/AdjustedImageArrayRotationAnimation"

