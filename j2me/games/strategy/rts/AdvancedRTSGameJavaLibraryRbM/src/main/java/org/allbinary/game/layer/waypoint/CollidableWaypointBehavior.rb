# 
# AllBinary Open License Version 1 
# Copyright (c) 2006 AllBinary 
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
# package org.allbinary.game.layer.waypoint

require "org/allbinary/game/layer/CollidableRTSBehavior"

class CollidableWaypointBehavior < CollidableRTSBehavior
    

    def initialize(collidable)
        super(collidable)
    end
    

    def isCollision(ownerLayer, collisionLayer)
        return false
    end
    

    # throws Exception
    def collide(ownerLayer, collisionLayer)
    end
    

    def isCollisionInterface(ownerLayer, collidableInterface)
        return false
    end
    

    # throws Exception
    def collideInterface(ownerLayer, collidableInterface)
    end
end

require "org/allbinary/game/layer/CollidableCompositeLayer"
require "org/allbinary/game/collision/CollidableInterfaceCompositeInterface"

