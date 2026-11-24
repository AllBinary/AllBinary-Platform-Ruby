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

require "java/lang/JavaOverload"
require "org/allbinary/game/ai/ArtificialIntelligenceInterfaceFactoryInterface"

module ::Org; module Allbinary; module Game; module Ag; module Ai; module Scroller

class RandomPatrolFlockingFiringAIFactory
    include ::Org::Allbinary::Game::Ai::ArtificialIntelligenceInterfaceFactoryInterface
    

    # throws Exception
    def getInstance(hashtable, ownerLayerInterface, gameInput)
        artificialIntelligenceInterface = Array.new(2, nil)
        artificialIntelligenceInterface[0] = RandomPatrolAI.new(hashtable, ownerLayerInterface, gameInput)
        artificialIntelligenceInterface[1] = TimedFireAI.new(1800, ownerLayerInterface, gameInput)
        return ::Org::Allbinary::Game::Ag::Ai::ArrayAI.new(artificialIntelligenceInterface, ownerLayerInterface, gameInput)
    end
    java_overload :getInstance, 3
end

module ::Org; module Allbinary; module Ai; autoload :ArtificialIntelligenceInterface, "org/allbinary/ai/ArtificialIntelligenceInterface" unless const_defined?(:ArtificialIntelligenceInterface, false); end; end; end
module ::Org; module Allbinary; module Game; module Ag; module Ai; autoload :ArrayAI, "org/allbinary/game/ag/ai/ArrayAI" unless const_defined?(:ArrayAI, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Input; autoload :GameInput, "org/allbinary/game/input/GameInput" unless const_defined?(:GameInput, false); end; end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :ABHashtable, "org/allbinary/util/ABHashtable" unless const_defined?(:ABHashtable, false); end; end; end
autoload :RandomPatrolAI, "org/allbinary/game/ag/ai/scroller/RandomPatrolAI" unless const_defined?(:RandomPatrolAI, false)
autoload :TimedFireAI, "org/allbinary/game/ag/ai/scroller/TimedFireAI" unless const_defined?(:TimedFireAI, false)

end; end; end; end; end; end

