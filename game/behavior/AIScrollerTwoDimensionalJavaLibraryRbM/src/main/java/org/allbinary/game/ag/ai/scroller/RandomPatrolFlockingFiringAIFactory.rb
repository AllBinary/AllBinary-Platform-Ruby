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
# package org.allbinary.game.ag.ai.scroller

require "org/allbinary/game/ai/ArtificialIntelligenceInterfaceFactoryInterface"

class RandomPatrolFlockingFiringAIFactory
    include ArtificialIntelligenceInterfaceFactoryInterface
    

    # throws Exception
    def getInstance(hashtable, ownerLayerInterface, gameInput)
        artificialIntelligenceInterface = Array.new(2, nil)
        artificialIntelligenceInterface[0] = RandomPatrolAI.new(hashtable, ownerLayerInterface, gameInput)
        artificialIntelligenceInterface[1] = TimedFireAI.new(1800, ownerLayerInterface, gameInput)
        return ArrayAI.new(artificialIntelligenceInterface, ownerLayerInterface, gameInput)
    end
end

require "org/allbinary/ai/ArtificialIntelligenceInterface"
require "org/allbinary/game/ag/ai/ArrayAI"
require "org/allbinary/game/input/GameInput"
require "org/allbinary/layer/AllBinaryLayer"
require "org/allbinary/util/ABHashtable"
require "org/allbinary/game/ag/ai/scroller/RandomPatrolAI"
require "org/allbinary/game/ag/ai/scroller/TimedFireAI"

