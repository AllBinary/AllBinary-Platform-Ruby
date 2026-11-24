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

require "java/lang/JavaOverload"
require "org/allbinary/game/layer/CollidableRTSBehavior"

module ::Org; module Allbinary; module Game; module Layer; module Waypoint

class CollidableWaypointBehavior < ::Org::Allbinary::Game::Layer::CollidableRTSBehavior
    

    def initialize(collidable)
        super(collidable)
    end
    

    def isCollision(ownerLayer, collisionLayer)
        return false
    end
    java_overload :isCollision, 2
    

    # throws Exception
    def collide(ownerLayer, collisionLayer)
    end
    java_overload :collide, 2
    

    def isCollisionInterface(ownerLayer, collidableInterface)
        return false
    end
    java_overload :isCollisionInterface, 2
    

    # throws Exception
    def collideInterface(ownerLayer, collidableInterface)
    end
    java_overload :collideInterface, 2
end

module ::Org; module Allbinary; module Game; module Layer; autoload :CollidableCompositeLayer, "org/allbinary/game/layer/CollidableCompositeLayer" unless const_defined?(:CollidableCompositeLayer, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Collision; autoload :CollidableInterfaceCompositeInterface, "org/allbinary/game/collision/CollidableInterfaceCompositeInterface" unless const_defined?(:CollidableInterfaceCompositeInterface, false); end; end; end; end

end; end; end; end; end

