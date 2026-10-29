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

require "org/allbinary/game/configuration/GameConfigurationCentral"
require "org/allbinary/math/AngleFactory"
require "org/allbinary/math/AngleInfo"
require "org/allbinary/media/ScaleProperties"
require "org/allbinary/animation/Animation"
require "org/allbinary/animation/AnimationBehavior"
require "org/allbinary/animation/NullRotationAnimation"

