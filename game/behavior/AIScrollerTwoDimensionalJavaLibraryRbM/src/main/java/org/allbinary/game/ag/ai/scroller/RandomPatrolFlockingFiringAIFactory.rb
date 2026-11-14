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

autoload :ArtificialIntelligenceInterface, "org/allbinary/ai/ArtificialIntelligenceInterface"
autoload :ArrayAI, "org/allbinary/game/ag/ai/ArrayAI"
autoload :GameInput, "org/allbinary/game/input/GameInput"
autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer"
autoload :ABHashtable, "org/allbinary/util/ABHashtable"
autoload :RandomPatrolAI, "org/allbinary/game/ag/ai/scroller/RandomPatrolAI"
autoload :TimedFireAI, "org/allbinary/game/ag/ai/scroller/TimedFireAI"

