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
# package org.allbinary.game.combat.destroy

require "org/allbinary/game/combat/destroy/DestroyableBaseBehavior"

class DestroyableSimpleBehavior < DestroyableBaseBehavior
    attr_accessor :ownerLayer, :destroyed

    def initialize_fields
        @ownerLayer = nil
        @destroyed = false
    end
    

    def initialize(ownerLayer)
        super()
        initialize_fields
        @ownerLayer = ownerLayer
    end
    

    def isDestroyed()
        return @destroyed
    end
    

    def setDestroyed(destroyed)
        @destroyed = destroyed
        if self.isDestroyed()
            DestroyedLayerProcessor.getInstance().add(@ownerLayer)
        end
    end
end

require "org/allbinary/game/layer/CollidableCompositeLayer"
require "org/allbinary/game/combat/destroy/DestroyedLayerProcessor"

