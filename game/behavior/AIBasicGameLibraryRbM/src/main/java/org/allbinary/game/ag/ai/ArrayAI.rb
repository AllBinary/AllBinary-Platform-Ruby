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
require "org/allbinary/game/ai/BasicAI"

module ::Org; module Allbinary; module Game; module Ag; module Ai

class ArrayAI < ::Org::Allbinary::Game::Ai::BasicAI
    attr_accessor :artificialIntelligenceInterfaceArray

    def jfields_org_allbinary_game_ag_ai_ArrayAI
        @artificialIntelligenceInterfaceArray = nil unless instance_variable_defined?(:@artificialIntelligenceInterfaceArray)
    end
    

    def initialize(artificialIntelligenceInterface, ownerLayerInterface, gameInput)
        super(ownerLayerInterface, gameInput)
        jfields_org_allbinary_game_ag_ai_ArrayAI
        @artificialIntelligenceInterfaceArray = artificialIntelligenceInterface
    end
    

    # throws Exception
    def processAI(allBinaryLayerManager)
        size = @artificialIntelligenceInterfaceArray.length
        (0...size).each do |index|
            @artificialIntelligenceInterfaceArray[index].processAI(allBinaryLayerManager)
        end
    end
    java_overload :processAI, 1
    

    def getArtificialIntelligenceInterface()
        return @artificialIntelligenceInterfaceArray
    end
    java_overload :getArtificialIntelligenceInterface, 0
end

module ::Org; module Allbinary; module Ai; autoload :ArtificialIntelligenceInterface, "org/allbinary/ai/ArtificialIntelligenceInterface" unless const_defined?(:ArtificialIntelligenceInterface, false); end; end; end
module ::Org; module Allbinary; module Game; module Input; autoload :GameInput, "org/allbinary/game/input/GameInput" unless const_defined?(:GameInput, false); end; end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayerManager, "org/allbinary/layer/AllBinaryLayerManager" unless const_defined?(:AllBinaryLayerManager, false); end; end; end

end; end; end; end; end

