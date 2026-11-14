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
# package org.allbinary.animation

require "org/allbinary/animation/AnimationInterfaceFactoryInterface"
require "org/allbinary/animation/ProceduralAnimationInterfaceFactoryInterface"

class RotationAnimationFactory
    include AnimationInterfaceFactoryInterface
    include ProceduralAnimationInterfaceFactoryInterface
    attr_accessor :totalAngle, :angleIncrement

    def initialize_fields
        @totalAngle = nil
        @angleIncrement = nil
    end
    

    def self.createFactory()
        totalAngle = AngleFactory.getInstance().TOTAL_ANGLE
        return RotationAnimationFactory.new(totalAngle, ((((totalAngle / GameConfigurationCentral.getInstance().getGameControlFidelity())).to_i + 32768) % 65536 - 32768))
    end
    

    def initialize(totalAngle, angleIncrement)
        initialize_fields
        @totalAngle = totalAngle
        @angleIncrement = angleIncrement
    end
    

    # throws Exception
    def getInstance(instanceId)
        return NullRotationAnimation.createTotalAngle(AngleInfo.getInstance(@angleIncrement), @totalAngle, AnimationBehavior.getInstance())
    end
    

    # throws Exception
    def getInstanceAnimation(animationInterface)
        return NullRotationAnimation.createTotalAngle(AngleInfo.getInstance(@angleIncrement), @totalAngle, AnimationBehavior.getInstance())
    end
    

    def setInitialScale(scaleProperties)
    end
end

autoload :GameConfigurationCentral, "org/allbinary/game/configuration/GameConfigurationCentral"
autoload :AngleFactory, "org/allbinary/math/AngleFactory"
autoload :AngleInfo, "org/allbinary/math/AngleInfo"
autoload :ScaleProperties, "org/allbinary/media/ScaleProperties"
autoload :Animation, "org/allbinary/animation/Animation"
autoload :AnimationBehavior, "org/allbinary/animation/AnimationBehavior"
autoload :NullRotationAnimation, "org/allbinary/animation/NullRotationAnimation"

