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
# package org.allbinary.game.collision

require "java/lang/JavaOverload"
require "org/allbinary/layer/LayerProcessor"

module ::Org; module Allbinary; module Game; module Collision

class OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer < ::Org::Allbinary::Layer::LayerProcessor
    

    def initialize()
        super(OptimizedAllBinaryCollisionLayerManager.new())
    end
    

    # throws Exception
    def processAt(allBinaryLayerManager, layerInterface, startIndex)
        collidableInterfaceCompositeInterface = layerInterface
        collidableBase = collidableInterfaceCompositeInterface.getCollidableInferface()
        if collidableBase.isCollidable(collidableInterfaceCompositeInterface)
            layerManager = self.getLayerManager()
            size = layerManager.getSize()
            collidableInterfaceCompositeInterface2 = nil
            collidableBase2 = nil
            (startIndex + 1...size).each do |index|
                collidableInterfaceCompositeInterface2 = layerManager.getLayerAt(index)
                collidableBase2 = collidableInterfaceCompositeInterface2.getCollidableInferface()
                if collidableBase2.isCollidable(collidableInterfaceCompositeInterface) && collidableBase.isCollision(collidableInterfaceCompositeInterface, collidableInterfaceCompositeInterface2)
                    collidableBase.collide(collidableInterfaceCompositeInterface, collidableInterfaceCompositeInterface2)
                    collidableBase2.collide(collidableInterfaceCompositeInterface2, collidableInterfaceCompositeInterface)
                end
            end
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

module ::Org; module Allbinary; module Game; module Layer; autoload :CollidableCompositeLayer, "org/allbinary/game/layer/CollidableCompositeLayer" unless const_defined?(:CollidableCompositeLayer, false); end; end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayerManager, "org/allbinary/layer/AllBinaryLayerManager" unless const_defined?(:AllBinaryLayerManager, false); end; end; end
module ::Org; module Allbinary; module Layer; autoload :LayerManager, "org/allbinary/layer/LayerManager" unless const_defined?(:LayerManager, false); end; end; end
autoload :CollidableBaseBehavior, "org/allbinary/game/collision/CollidableBaseBehavior" unless const_defined?(:CollidableBaseBehavior, false)
autoload :OptimizedAllBinaryCollisionLayerManager, "org/allbinary/game/collision/OptimizedAllBinaryCollisionLayerManager" unless const_defined?(:OptimizedAllBinaryCollisionLayerManager, false)

end; end; end; end

