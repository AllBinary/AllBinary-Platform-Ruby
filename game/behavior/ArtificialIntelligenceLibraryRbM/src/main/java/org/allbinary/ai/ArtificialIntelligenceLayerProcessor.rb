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

require "java/lang/JavaOverload"
require "org/allbinary/layer/LayerProcessor"

module ::Org; module Allbinary; module Ai

class ArtificialIntelligenceLayerProcessor < ::Org::Allbinary::Layer::LayerProcessor
    

    def initialize()
        super(ArtificialIntelligenceLayerManager.new())
    end
    

    # throws Exception
    def processAt(allBinaryLayerManager, layerInterface, index)
        artificialIntelligenceCompositeInterface = layerInterface
        artificialIntelligenceCompositeInterface.getArtificialIntelligenceInterface().processAI(allBinaryLayerManager)
    end
    java_overload :processAt, 3
    

    # throws Exception
    def isProcessorLayer(layerInterface)
        if layerInterface.implmentsArtificialIntelligenceCompositeInterface()
            return true
        else
            return false
        end
    end
    java_overload :isProcessorLayer, 1
end

module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayerManager, "org/allbinary/layer/AllBinaryLayerManager" unless const_defined?(:AllBinaryLayerManager, false); end; end; end
autoload :ArtificialIntelligenceCompositeInterface, "org/allbinary/ai/ArtificialIntelligenceCompositeInterface" unless const_defined?(:ArtificialIntelligenceCompositeInterface, false)
autoload :ArtificialIntelligenceLayerManager, "org/allbinary/ai/ArtificialIntelligenceLayerManager" unless const_defined?(:ArtificialIntelligenceLayerManager, false)

end; end; end

