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

require "org/allbinary/game/collision/CollidableNeverCollideBehavior"

class CollidableAlwaysPickupNeverCollideBehavior < CollidableNeverCollideBehavior
    

    def initialize()
        super(true)
    end
    

    def getCollisionTypeWith(layerInterface)
        return CollisionTypeFactory.getInstance().PICKUP
    end
end

require "org/allbinary/layer/AllBinaryLayer"
require "org/allbinary/game/collision/CollisionType"
require "org/allbinary/game/collision/CollisionTypeFactory"

