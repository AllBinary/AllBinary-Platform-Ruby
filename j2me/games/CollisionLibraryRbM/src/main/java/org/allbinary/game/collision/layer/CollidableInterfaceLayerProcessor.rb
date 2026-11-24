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
# package org.allbinary.game.collision.layer

require "java/lang/JavaOverload"
require "org/allbinary/layer/LayerProcessor"

module ::Org; module Allbinary; module Game; module Collision; module Layer

class CollidableInterfaceLayerProcessor < ::Org::Allbinary::Layer::LayerProcessor
    

    def initialize()
        super(CollidableInterfaceLayerManager.new())
    end
    

    # throws Exception
    def processAt(allBinaryLayerManager, layerInterface, index)
        collidableInterfaceCompositeInterface = layerInterface
        if collidableInterfaceCompositeInterface.getCollidableInferface().isCollidable(collidableInterfaceCompositeInterface)
            AllBinaryCollisionManager.getInstance().process(self.getLayerManager(), collidableInterfaceCompositeInterface, index)
        end
    end
    java_overload :processAt, 3
    

    def isProcessorLayer(layerInterface)
        if layerInterface.implmentsCollidableInterface()
            return true
        else
            return false
        end
    end
    java_overload :isProcessorLayer, 1
end

module ::Org; module Allbinary; module Game; module Collision; autoload :CollidableInterfaceCompositeInterface, "org/allbinary/game/collision/CollidableInterfaceCompositeInterface" unless const_defined?(:CollidableInterfaceCompositeInterface, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :CollidableCompositeLayer, "org/allbinary/game/layer/CollidableCompositeLayer" unless const_defined?(:CollidableCompositeLayer, false); end; end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayerManager, "org/allbinary/layer/AllBinaryLayerManager" unless const_defined?(:AllBinaryLayerManager, false); end; end; end
autoload :AllBinaryCollisionManager, "org/allbinary/game/collision/layer/AllBinaryCollisionManager" unless const_defined?(:AllBinaryCollisionManager, false)
autoload :CollidableInterfaceLayerManager, "org/allbinary/game/collision/layer/CollidableInterfaceLayerManager" unless const_defined?(:CollidableInterfaceLayerManager, false)

end; end; end; end; end

