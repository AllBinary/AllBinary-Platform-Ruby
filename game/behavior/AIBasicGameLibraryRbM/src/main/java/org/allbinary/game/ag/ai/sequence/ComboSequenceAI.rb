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
# package org.allbinary.game.ag.ai.sequence

require "org/allbinary/game/ag/ai/sequence/SequenceAI"

class ComboSequenceAI < SequenceAI
    

    def initialize(artificialIntelligenceInterface, ownerLayerInterface, gameInput)
        super(artificialIntelligenceInterface, ownerLayerInterface, gameInput)
    end
    

    # throws Exception
    def processAI(allBinaryLayerManager)
        artificialIntelligenceInterfaceArray = self.getArtificialIntelligenceInterface()
        size = artificialIntelligenceInterfaceArray.length
        (0...size).each do |index|
            self.setIndex(index)
            super(allBinaryLayerManager)
        end
    end
end

require "org/allbinary/ai/ArtificialIntelligenceInterface"
require "org/allbinary/game/input/GameInput"
require "org/allbinary/layer/AllBinaryLayer"
require "org/allbinary/layer/AllBinaryLayerManager"

