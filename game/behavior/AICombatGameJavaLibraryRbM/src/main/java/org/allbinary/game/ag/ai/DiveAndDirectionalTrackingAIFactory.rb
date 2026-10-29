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

require "org/allbinary/game/ai/ArtificialIntelligenceInterfaceFactoryInterface"

class DiveAndDirectionalTrackingAIFactory
    include ArtificialIntelligenceInterfaceFactoryInterface
    

    # throws Exception
    def getInstance(hashtable, ownerLayerInterface, gameInput)
        visitorCanBeNull = hashtable.get(BasicAI::AI_VISITOR)
        if visitorCanBeNull == nil
            visitorCanBeNull = ThrustAIVisitorFactory.getInstance()
        end
        hashtable2 = BasicProbabilityAIDataFactory.new().getInstance()
        hashtable2.put(BasicAI::AI_VISITOR, LastKeyAIVisitorFactory.getInstance())
        artificialIntelligenceInterface = BasicRandomAIFactory.new().getInstance(hashtable2, ownerLayerInterface, gameInput)
        return DiveAndDirectionalTrackingAI.new(ownerLayerInterface, artificialIntelligenceInterface, gameInput, visitorCanBeNull)
    end
end

require "org/allbinary/ai/ArtificialIntelligenceInterface"
require "org/allbinary/game/ag/ai/tactical/BasicRandomAIFactory"
require "org/allbinary/game/ai/BasicAI"
require "org/allbinary/game/input/GameInput"
require "org/allbinary/layer/AllBinaryLayer"
require "org/allbinary/logic/util/visitor/Visitor"
require "org/allbinary/util/ABHashtable"
require "org/allbinary/game/ag/ai/BasicProbabilityAIDataFactory"
require "org/allbinary/game/ag/ai/DiveAndDirectionalTrackingAI"
require "org/allbinary/game/ag/ai/LastKeyAIVisitorFactory"
require "org/allbinary/game/ag/ai/ThrustAIVisitorFactory"

