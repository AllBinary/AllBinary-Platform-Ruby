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

# require "javax/microedition/lcdui/Canvas"
require "org/allbinary/game/ai/BasicAI"

class SpinnerAI < BasicAI
    attr_accessor :isEven, :direction

    def initialize_fields
        @isEven = false
        @direction = nil
    end
    

    def initialize(direction, ownerLayerInterface, gameInput)
        super(ownerLayerInterface, gameInput)
        initialize_fields
        @direction = direction
    end
    

    # throws Exception
    def processAI(allBinaryLayerManager)
        if @isEven
            self.class.superclass.instance_method(:processKeyAI).bind(self).call(@direction[0])
            @isEven = false
        else
            self.class.superclass.instance_method(:processKeyAI).bind(self).call(Canvas::KEY_NUM1)
            @isEven = true
        end
    end
end

require "org/allbinary/game/input/GameInput"
require "org/allbinary/layer/AllBinaryLayer"
require "org/allbinary/layer/AllBinaryLayerManager"

