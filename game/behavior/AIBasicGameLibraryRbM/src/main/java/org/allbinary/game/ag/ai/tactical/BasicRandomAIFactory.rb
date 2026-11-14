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
# package org.allbinary.game.ag.ai.tactical

require "org/allbinary/game/ai/ArtificialIntelligenceInterfaceFactoryInterface"

class BasicRandomAIFactory
    include ArtificialIntelligenceInterfaceFactoryInterface
    

    # throws Exception
    def getInstance(hashtable, ownerLayerInterface, gameInput)
        visitor = hashtable.get(BasicAI::AI_VISITOR)
        if visitor == nil
            raise StandardError.new("No Visitor Provided")
        end
        inputProbability = hashtable.get(InputProbability::INPUT_PROBABILITY)
        return BasicRandomAI.new(ownerLayerInterface, gameInput, inputProbability, visitor)
    end
end

autoload :ArtificialIntelligenceInterface, "org/allbinary/ai/ArtificialIntelligenceInterface"
autoload :BasicAI, "org/allbinary/game/ai/BasicAI"
autoload :InputProbability, "org/allbinary/game/ag/ai/InputProbability"
autoload :GameInput, "org/allbinary/game/input/GameInput"
autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer"
autoload :Visitor, "org/allbinary/logic/util/visitor/Visitor"
autoload :ABHashtable, "org/allbinary/util/ABHashtable"
autoload :BasicRandomAI, "org/allbinary/game/ag/ai/tactical/BasicRandomAI"

