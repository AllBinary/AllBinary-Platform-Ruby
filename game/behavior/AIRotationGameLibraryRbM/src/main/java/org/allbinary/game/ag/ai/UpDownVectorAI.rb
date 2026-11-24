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
require "org/allbinary/game/ai/BasicAI"

module ::Org; module Allbinary; module Game; module Ag; module Ai

class UpDownVectorAI < ::Org::Allbinary::Game::Ai::BasicAI
    attr_accessor :velocityInterface, :index

    def jfields_org_allbinary_game_ag_ai_UpDownVectorAI
        @velocityInterface = nil unless instance_variable_defined?(:@velocityInterface)
        @index = 0
    end
    

    def initialize(ownerLayerInterface, gameInput)
        super(ownerLayerInterface, gameInput)
        jfields_org_allbinary_game_ag_ai_UpDownVectorAI
        velocityInterfaceCompositeInterface = self.getOwnerLayerInterface()
        @velocityInterface = velocityInterfaceCompositeInterface.getVelocityProperties()
        @velocityInterface.getVelocityYBasicDecimalP().setint(0)
    end
    

    # throws Exception
    def processAI(allBinaryLayerManager)
        y = self.getOwnerLayerInterface().getHeight() * 270
        if @index < 5
            basicDecimal = @velocityInterface.getVelocityYBasicDecimalP()
            basicDecimal.setint(0)
            basicDecimal.addint(y)
            @index += 1
        elsif @index < 10
            basicDecimal = @velocityInterface.getVelocityYBasicDecimalP()
            basicDecimal.setint(0)
            basicDecimal.subtractint(y)
            @index += 1
        else
            @index = 0
            self.processAI(allBinaryLayerManager)
        end
    end
    java_overload :processAI, 1
end

module ::Org; module Allbinary; module Game; module Input; autoload :GameInput, "org/allbinary/game/input/GameInput" unless const_defined?(:GameInput, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Physics; module Velocity; autoload :BasicVelocityProperties, "org/allbinary/game/physics/velocity/BasicVelocityProperties" unless const_defined?(:BasicVelocityProperties, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Physics; module Velocity; autoload :VelocityInterfaceCompositeInterface, "org/allbinary/game/physics/velocity/VelocityInterfaceCompositeInterface" unless const_defined?(:VelocityInterfaceCompositeInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayerManager, "org/allbinary/layer/AllBinaryLayerManager" unless const_defined?(:AllBinaryLayerManager, false); end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :BasicDecimal, "org/allbinary/logic/math/BasicDecimal" unless const_defined?(:BasicDecimal, false); end; end; end; end

end; end; end; end; end

