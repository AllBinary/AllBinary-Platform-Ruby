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

class ArrayAI < BasicAI
    attr_accessor :artificialIntelligenceInterfaceArray

    def initialize_fields
        @artificialIntelligenceInterfaceArray = nil
    end
    

    def initialize(artificialIntelligenceInterface, ownerLayerInterface, gameInput)
        super(ownerLayerInterface, gameInput)
        initialize_fields
        @artificialIntelligenceInterfaceArray = artificialIntelligenceInterface
    end
    

    # throws Exception
    def processAI(allBinaryLayerManager)
        size = @artificialIntelligenceInterfaceArray.length
        (0...size).each do |index|
            @artificialIntelligenceInterfaceArray[index].processAI(allBinaryLayerManager)
        end
    end
    

    def getArtificialIntelligenceInterface()
        return @artificialIntelligenceInterfaceArray
    end
end

require "org/allbinary/ai/ArtificialIntelligenceInterface"
require "org/allbinary/game/input/GameInput"
require "org/allbinary/layer/AllBinaryLayer"
require "org/allbinary/layer/AllBinaryLayerManager"

