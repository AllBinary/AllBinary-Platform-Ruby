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


module ::Org; module Allbinary; module Game; module Collision

class CollisionHelper
    attr_accessor :sourceLayerInterface

    def jfields_org_allbinary_game_collision_CollisionHelper
        @sourceLayerInterface = nil unless instance_variable_defined?(:@sourceLayerInterface)
    end
    

    def initialize(sourceLayerInterface)
        jfields_org_allbinary_game_collision_CollisionHelper
        @sourceLayerInterface = sourceLayerInterface
    end
    

    def isCollidable(layerInterface)
        return true
    end
    

    def getOwnerLayerInterface()
        return @sourceLayerInterface
    end
    

    def setOwnerLayerInterface(sourceLayerInterface)
        @sourceLayerInterface = sourceLayerInterface
    end
end

module ::Org; module Allbinary; module Game; module Layer; autoload :CollidableCompositeLayer, "org/allbinary/game/layer/CollidableCompositeLayer" unless const_defined?(:CollidableCompositeLayer, false); end; end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end

end; end; end; end

