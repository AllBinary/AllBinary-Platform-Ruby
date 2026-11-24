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


module ::Org; module Allbinary; module Game; module Ag; module Ai; module Sequence

class NumberLayersSequenceAIFactory
    

    def getInstance(numberOfEnemiesLeft, artificialIntelligenceInterface, ownerLayerInterface, gameInput)
        return NumberLayersSequenceAI.new(numberOfEnemiesLeft, artificialIntelligenceInterface, ownerLayerInterface, gameInput)
    end
end

module ::Org; module Allbinary; module Ai; autoload :ArtificialIntelligenceInterface, "org/allbinary/ai/ArtificialIntelligenceInterface" unless const_defined?(:ArtificialIntelligenceInterface, false); end; end; end
module ::Org; module Allbinary; module Game; module Input; autoload :GameInput, "org/allbinary/game/input/GameInput" unless const_defined?(:GameInput, false); end; end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end
autoload :NumberLayersSequenceAI, "org/allbinary/game/ag/ai/sequence/NumberLayersSequenceAI" unless const_defined?(:NumberLayersSequenceAI, false)

end; end; end; end; end; end

