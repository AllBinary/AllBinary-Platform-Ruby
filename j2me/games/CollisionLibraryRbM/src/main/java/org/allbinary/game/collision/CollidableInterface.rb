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

require "org/allbinary/layer/NamedInterface"

module CollidableInterface
    include NamedInterface
    

    # throws Exception
    def isCollidable(ownerLayer)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    # throws Exception
    def isCollision(ownerLayer, collidableInterfaceCompositeInterface)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    # throws Exception
    def collide(ownerLayer, collidableInterfaceCompositeInterface)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getCollisionTypeWith(layerInterface)
        return super if defined?(super)
        raise NotImplementedError
    end
end

autoload :CollidableCompositeLayer, "org/allbinary/game/layer/CollidableCompositeLayer"
autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer"
autoload :CollisionType, "org/allbinary/game/collision/CollisionType"

