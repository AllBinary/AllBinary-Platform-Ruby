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

autoload :IndexedAnimation, "org/allbinary/animation/IndexedAnimation"
autoload :RotationAnimationInterface, "org/allbinary/animation/RotationAnimationInterface"
autoload :RotationAnimationInterfaceCompositeInterface, "org/allbinary/animation/RotationAnimationInterfaceCompositeInterface"
autoload :GameInput, "org/allbinary/game/input/GameInput"
autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer"
autoload :AngleIncrementInfo, "org/allbinary/math/AngleIncrementInfo"

