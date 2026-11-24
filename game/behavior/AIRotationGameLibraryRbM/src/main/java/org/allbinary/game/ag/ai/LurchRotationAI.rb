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

require "java/lang/JavaOverload"
require "org/allbinary/game/ag/ai/tactical/LurchAI"

module ::Org; module Allbinary; module Game; module Ag; module Ai

class LurchRotationAI < ::Org::Allbinary::Game::Ag::Ai::Tactical::LurchAI
    attr_accessor :rotationAnimationInterface

    def jfields_org_allbinary_game_ag_ai_LurchRotationAI
        @rotationAnimationInterface = nil unless instance_variable_defined?(:@rotationAnimationInterface)
    end
    

    def initialize(ownerLayerInterface, gameInput)
        super(ownerLayerInterface, gameInput)
        jfields_org_allbinary_game_ag_ai_LurchRotationAI
        rotationAnimationInterfaceCompositeInterface = self.getOwnerLayerInterface()
        @rotationAnimationInterface = rotationAnimationInterfaceCompositeInterface.getRotationAnimationInterface()
        self.update()
    end
    

    def reverse()
        LurchRotationAI.superclass.java_super_method(:reverse, 0).bind(self).call()
        self.update()
    end
    java_overload :reverse, 0
    

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
    java_overload :update, 0
end

module ::Org; module Allbinary; module Animation; autoload :IndexedAnimation, "org/allbinary/animation/IndexedAnimation" unless const_defined?(:IndexedAnimation, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :RotationAnimationInterface, "org/allbinary/animation/RotationAnimationInterface" unless const_defined?(:RotationAnimationInterface, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :RotationAnimationInterfaceCompositeInterface, "org/allbinary/animation/RotationAnimationInterfaceCompositeInterface" unless const_defined?(:RotationAnimationInterfaceCompositeInterface, false); end; end; end
module ::Org; module Allbinary; module Game; module Input; autoload :GameInput, "org/allbinary/game/input/GameInput" unless const_defined?(:GameInput, false); end; end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end
module ::Org; module Allbinary; module MathPackage; autoload :AngleIncrementInfo, "org/allbinary/math/AngleIncrementInfo" unless const_defined?(:AngleIncrementInfo, false); end; end; end

end; end; end; end; end

