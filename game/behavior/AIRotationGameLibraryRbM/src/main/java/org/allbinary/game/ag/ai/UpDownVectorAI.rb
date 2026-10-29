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

require "org/allbinary/game/ai/BasicAI"

class UpDownVectorAI < BasicAI
    attr_accessor :velocityInterface, :index

    def initialize_fields
        @velocityInterface = nil
        @index = 0
    end
    

    def initialize(ownerLayerInterface, gameInput)
        super(ownerLayerInterface, gameInput)
        initialize_fields
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
end

require "org/allbinary/game/input/GameInput"
require "org/allbinary/game/physics/velocity/BasicVelocityProperties"
require "org/allbinary/game/physics/velocity/VelocityInterfaceCompositeInterface"
require "org/allbinary/layer/AllBinaryLayer"
require "org/allbinary/layer/AllBinaryLayerManager"
require "org/allbinary/logic/math/BasicDecimal"

