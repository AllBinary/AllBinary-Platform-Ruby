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

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:NULL_AI, NullAI.new())
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "NullAIFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NULL_AI].include?(name)
        end
        super
    end
end

autoload :ArtificialIntelligenceInterface, "org/allbinary/ai/ArtificialIntelligenceInterface"
autoload :GameInput, "org/allbinary/game/input/GameInput"
autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer"
autoload :ABHashtable, "org/allbinary/util/ABHashtable"
autoload :NullAI, "org/allbinary/game/ag/ai/NullAI"

begin
    NullAIFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

