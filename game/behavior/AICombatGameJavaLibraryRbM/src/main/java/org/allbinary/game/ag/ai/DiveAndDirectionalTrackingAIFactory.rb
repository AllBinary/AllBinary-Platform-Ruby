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

class DiveAndDirectionalTrackingAIFactory
    include ::Org::Allbinary::Game::Ai::ArtificialIntelligenceInterfaceFactoryInterface
    

    # throws Exception
    def getInstance(hashtable, ownerLayerInterface, gameInput)
        visitorCanBeNull = hashtable.get(::Org::Allbinary::Game::Ai::BasicAI::AI_VISITOR)
        if visitorCanBeNull == nil
            visitorCanBeNull = ThrustAIVisitorFactory.getInstance()
        end
        hashtable2 = BasicProbabilityAIDataFactory.new().getInstance()
        hashtable2.put(::Org::Allbinary::Game::Ai::BasicAI::AI_VISITOR, LastKeyAIVisitorFactory.getInstance())
        artificialIntelligenceInterface = ::Org::Allbinary::Game::Ag::Ai::Tactical::BasicRandomAIFactory.new().getInstance(hashtable2, ownerLayerInterface, gameInput)
        return DiveAndDirectionalTrackingAI.new(ownerLayerInterface, artificialIntelligenceInterface, gameInput, visitorCanBeNull)
    end
    java_overload :getInstance, 3
end

module ::Org; module Allbinary; module Ai; autoload :ArtificialIntelligenceInterface, "org/allbinary/ai/ArtificialIntelligenceInterface" unless const_defined?(:ArtificialIntelligenceInterface, false); end; end; end
module ::Org; module Allbinary; module Game; module Ag; module Ai; module Tactical; autoload :BasicRandomAIFactory, "org/allbinary/game/ag/ai/tactical/BasicRandomAIFactory" unless const_defined?(:BasicRandomAIFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Game; module Ai; autoload :BasicAI, "org/allbinary/game/ai/BasicAI" unless const_defined?(:BasicAI, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Input; autoload :GameInput, "org/allbinary/game/input/GameInput" unless const_defined?(:GameInput, false); end; end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Visitor; autoload :Visitor, "org/allbinary/logic/util/visitor/Visitor" unless const_defined?(:Visitor, false); end; end; end; end; end
module ::Org; module Allbinary; module Util; autoload :ABHashtable, "org/allbinary/util/ABHashtable" unless const_defined?(:ABHashtable, false); end; end; end
autoload :BasicProbabilityAIDataFactory, "org/allbinary/game/ag/ai/BasicProbabilityAIDataFactory" unless const_defined?(:BasicProbabilityAIDataFactory, false)
autoload :DiveAndDirectionalTrackingAI, "org/allbinary/game/ag/ai/DiveAndDirectionalTrackingAI" unless const_defined?(:DiveAndDirectionalTrackingAI, false)
autoload :LastKeyAIVisitorFactory, "org/allbinary/game/ag/ai/LastKeyAIVisitorFactory" unless const_defined?(:LastKeyAIVisitorFactory, false)
autoload :ThrustAIVisitorFactory, "org/allbinary/game/ag/ai/ThrustAIVisitorFactory" unless const_defined?(:ThrustAIVisitorFactory, false)

end; end; end; end; end

