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
# package org.allbinary.game.ag.ai.sequence

require "java/lang/JavaOverload"
require "org/allbinary/game/ag/ai/sequence/SequenceAI"

module ::Org; module Allbinary; module Game; module Ag; module Ai; module Sequence

class NumberLayersSequenceAI < SequenceAI
    attr_accessor :numberOfLayersLeft

    def jfields_org_allbinary_game_ag_ai_sequence_NumberLayersSequenceAI
        @numberOfLayersLeft = nil unless instance_variable_defined?(:@numberOfLayersLeft)
    end
    

    def initialize(numberOfEnemiesLeft, artificialIntelligenceInterface, ownerLayerInterface, gameInput)
        super(artificialIntelligenceInterface, ownerLayerInterface, gameInput)
        jfields_org_allbinary_game_ag_ai_sequence_NumberLayersSequenceAI
        @numberOfLayersLeft = numberOfEnemiesLeft
    end
    

    # throws Exception
    def processAI(allBinaryLayerManager)
        if self.getIndex() == 0
            if allBinaryLayerManager.getSize() < @numberOfLayersLeft
                self.setIndex(1)
            end
        end
        NumberLayersSequenceAI.superclass.java_super_method(:processAI, 1).bind(self).call(allBinaryLayerManager)
    end
    java_overload :processAI, 1
end

module ::Org; module Allbinary; module Ai; autoload :ArtificialIntelligenceInterface, "org/allbinary/ai/ArtificialIntelligenceInterface" unless const_defined?(:ArtificialIntelligenceInterface, false); end; end; end
module ::Org; module Allbinary; module Game; module Input; autoload :GameInput, "org/allbinary/game/input/GameInput" unless const_defined?(:GameInput, false); end; end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayerManager, "org/allbinary/layer/AllBinaryLayerManager" unless const_defined?(:AllBinaryLayerManager, false); end; end; end

end; end; end; end; end; end

