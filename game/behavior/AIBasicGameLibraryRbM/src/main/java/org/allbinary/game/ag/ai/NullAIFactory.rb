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

class NullAIFactory
    include ArtificialIntelligenceInterfaceFactoryInterface
    

    def getInstance(hashtable, ownerLayerInterface, gameInput)
        return NullAIFactory::NULL_AI
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def self.getInstance()
        return NullAIFactory::NULL_AI
    end
end

require "org/allbinary/ai/ArtificialIntelligenceInterface"
require "org/allbinary/game/input/GameInput"
require "org/allbinary/layer/AllBinaryLayer"
require "org/allbinary/util/ABHashtable"
require "org/allbinary/game/ag/ai/NullAI"

class NullAIFactory
    NULL_AI = NullAI.new()
end

