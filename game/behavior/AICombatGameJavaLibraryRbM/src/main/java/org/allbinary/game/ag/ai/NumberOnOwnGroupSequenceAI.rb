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

require "org/allbinary/game/ag/ai/sequence/SequenceAI"

class NumberOnOwnGroupSequenceAI < SequenceAI
    attr_accessor :numberOnSameTeam

    def initialize_fields
        @numberOnSameTeam = nil
    end
    

    def initialize(numberOnSameTeam, artificialIntelligenceInterface, ownerLayerInterface, gameInput)
        super(artificialIntelligenceInterface, ownerLayerInterface, gameInput)
        initialize_fields
        @numberOnSameTeam = numberOnSameTeam
    end
    

    # throws Exception
    def processAI(allBinaryLayerManager)
        layerInterface = self.getOwnerLayerInterface()
        index = self.getIndex()
        if @numberOnSameTeam.length > index
            size = GroupLayerManagerListener.getInstance().getGroupSizeFromInterface(layerInterface)
            if @numberOnSameTeam[index].to_i > size
                self.next_()
            end
        end
        super(allBinaryLayerManager)
    end
end

require "org/allbinary/ai/ArtificialIntelligenceInterface"
require "org/allbinary/game/input/GameInput"
require "org/allbinary/game/layer/identification/GroupLayerManagerListener"
require "org/allbinary/layer/AllBinaryLayer"
require "org/allbinary/layer/AllBinaryLayerManager"

