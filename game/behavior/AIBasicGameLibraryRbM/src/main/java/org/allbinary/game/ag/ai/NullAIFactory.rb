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

require "java/lang/JavaOverload"
require "org/allbinary/game/ai/ArtificialIntelligenceInterfaceFactoryInterface"

module ::Org; module Allbinary; module Game; module Ag; module Ai

class NullAIFactory
    include ::Org::Allbinary::Game::Ai::ArtificialIntelligenceInterfaceFactoryInterface
    

    def getInstance(hashtable, ownerLayerInterface, gameInput)
        return NULL_AI
    end
    java_overload :getInstance, 3
    

    def self.getInstance()
        return NULL_AI
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

module ::Org; module Allbinary; module Ai; autoload :ArtificialIntelligenceInterface, "org/allbinary/ai/ArtificialIntelligenceInterface" unless const_defined?(:ArtificialIntelligenceInterface, false); end; end; end
module ::Org; module Allbinary; module Game; module Input; autoload :GameInput, "org/allbinary/game/input/GameInput" unless const_defined?(:GameInput, false); end; end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :ABHashtable, "org/allbinary/util/ABHashtable" unless const_defined?(:ABHashtable, false); end; end; end
autoload :NullAI, "org/allbinary/game/ag/ai/NullAI" unless const_defined?(:NullAI, false)

begin
    NullAIFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

