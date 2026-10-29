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
# package org.allbinary.game.ag.ai

require "org/allbinary/game/ag/ai/tactical/LurchAI"

class LurchRotationAI < LurchAI
    attr_accessor :rotationAnimationInterface

    def initialize_fields
        @rotationAnimationInterface = nil
    end
    

    def initialize(ownerLayerInterface, gameInput)
        super(ownerLayerInterface, gameInput)
        initialize_fields
        rotationAnimationInterfaceCompositeInterface = self.getOwnerLayerInterface()
        @rotationAnimationInterface = rotationAnimationInterfaceCompositeInterface.getRotationAnimationInterface()
        self.update()
    end
    

    def reverse()
        super()
        self.update()
    end
    

    def update()
        if @currentRelativeAngle == 0
            rotationAnimationInterface = @rotationAnimationInterface
            angleIncrementInfo = rotationAnimationInterface.getAngleInfoP().getAngleIncrementInfo()
            rotationAnimationInterfaceCompositeInterface = self.getOwnerLayerInterface()
            rotationAnimationInterfaceCompositeInterface.setFrame(angleIncrementInfo.RIGHT_FRAME.to_i)
        elsif @currentRelativeAngle == 180
            rotationAnimationInterface = @rotationAnimationInterface
            angleIncrementInfo = rotationAnimationInterface.getAngleInfoP().getAngleIncrementInfo()
            rotationAnimationInterfaceCompositeInterface = self.getOwnerLayerInterface()
            rotationAnimationInterfaceCompositeInterface.setFrame(angleIncrementInfo.LEFT_FRAME.to_i)
        end
    end
end

require "org/allbinary/animation/IndexedAnimation"
require "org/allbinary/animation/RotationAnimationInterface"
require "org/allbinary/animation/RotationAnimationInterfaceCompositeInterface"
require "org/allbinary/game/input/GameInput"
require "org/allbinary/layer/AllBinaryLayer"
require "org/allbinary/math/AngleIncrementInfo"

