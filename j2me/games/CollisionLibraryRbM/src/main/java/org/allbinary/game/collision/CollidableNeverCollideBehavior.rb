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

require "org/allbinary/game/collision/CollidableBaseBehavior"

class CollidableNeverCollideBehavior < CollidableBaseBehavior
    

    def initialize(isCollidable)
        super(isCollidable)
    end
    

    def isCollision(ownerLayer, allbinaryCollidableLayer)
        return false
    end
    

    # throws Exception
    def collide(ownerLayer, allbinaryCollidableLayer)
    end
    

    def collideInterface(ownerLayer, collidableInterfaceCompositeInterface)
    end
    

    def isCollisionInterface(ownerLayer, collidableInterfaceCompositeInterface)
        return false
    end
end

require "org/allbinary/game/layer/CollidableCompositeLayer"
require "org/allbinary/game/collision/CollidableInterfaceCompositeInterface"

