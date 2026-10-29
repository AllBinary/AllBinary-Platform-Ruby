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
# package org.allbinary.layer

require "org/allbinary/layer/LayerProcessor"

class SingleLayerLayerProcessor < LayerProcessor
    

    def initialize()
        super(SingleLayerLayerManager.new())
    end
    

    # throws Exception
    def process(allBinaryLayerManager)
        layerManager = self.getLayerManager()
        self.processAt(allBinaryLayerManager, layerManager.getLayerAt(0), 0)
    end
end

require "org/allbinary/layer/AllBinaryLayer"
require "org/allbinary/layer/AllBinaryLayerManager"
require "org/allbinary/layer/LayerManager"
require "org/allbinary/layer/SingleLayerLayerManager"

