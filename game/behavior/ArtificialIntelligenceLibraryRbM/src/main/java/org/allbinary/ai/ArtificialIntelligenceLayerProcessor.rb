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
# package org.allbinary.ai

require "org/allbinary/layer/LayerProcessor"

class ArtificialIntelligenceLayerProcessor < LayerProcessor
    

    def initialize()
        super(ArtificialIntelligenceLayerManager.new())
    end
    

    # throws Exception
    def processAt(allBinaryLayerManager, layerInterface, index)
        artificialIntelligenceCompositeInterface = layerInterface
        artificialIntelligenceCompositeInterface.getArtificialIntelligenceInterface().processAI(allBinaryLayerManager)
    end
    

    # throws Exception
    def isProcessorLayer(layerInterface)
        if layerInterface.implmentsArtificialIntelligenceCompositeInterface()
            return true
        else
            return false
        end
    end
end

autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer"
autoload :AllBinaryLayerManager, "org/allbinary/layer/AllBinaryLayerManager"
autoload :ArtificialIntelligenceCompositeInterface, "org/allbinary/ai/ArtificialIntelligenceCompositeInterface"
autoload :ArtificialIntelligenceLayerManager, "org/allbinary/ai/ArtificialIntelligenceLayerManager"

