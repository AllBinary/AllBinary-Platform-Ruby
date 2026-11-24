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
require "org/allbinary/game/collision/CollidableBaseBehavior"

module ::Org; module Allbinary; module Game; module Collision

class CollidableNeverCollideBehavior < CollidableBaseBehavior
    

    def initialize(isCollidable)
        super(isCollidable)
    end
    

    def isCollision(ownerLayer, allbinaryCollidableLayer)
        return false
    end
    java_overload :isCollision, 2
    

    # throws Exception
    def collide(ownerLayer, allbinaryCollidableLayer)
    end
    java_overload :collide, 2
    

    def collideInterface(ownerLayer, collidableInterfaceCompositeInterface)
    end
    java_overload :collideInterface, 2
    

    def isCollisionInterface(ownerLayer, collidableInterfaceCompositeInterface)
        return false
    end
    java_overload :isCollisionInterface, 2
end

module ::Org; module Allbinary; module Game; module Layer; autoload :CollidableCompositeLayer, "org/allbinary/game/layer/CollidableCompositeLayer" unless const_defined?(:CollidableCompositeLayer, false); end; end; end; end
autoload :CollidableInterfaceCompositeInterface, "org/allbinary/game/collision/CollidableInterfaceCompositeInterface" unless const_defined?(:CollidableInterfaceCompositeInterface, false)

end; end; end; end

