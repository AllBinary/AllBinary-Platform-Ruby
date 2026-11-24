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
require "org/allbinary/layer/NamedInterface"

module ::Org; module Allbinary; module Game; module Collision

module CollidableInterface
    include ::Org::Allbinary::Layer::NamedInterface
    

    # throws Exception
    def isCollidable(ownerLayer)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :isCollidable, 1
    

    # throws Exception
    def isCollision(ownerLayer, collidableInterfaceCompositeInterface)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :isCollision, 2
    

    # throws Exception
    def collide(ownerLayer, collidableInterfaceCompositeInterface)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :collide, 2
    

    def getCollisionTypeWith(layerInterface)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getCollisionTypeWith, 1
end

module ::Org; module Allbinary; module Game; module Layer; autoload :CollidableCompositeLayer, "org/allbinary/game/layer/CollidableCompositeLayer" unless const_defined?(:CollidableCompositeLayer, false); end; end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end
autoload :CollisionType, "org/allbinary/game/collision/CollisionType" unless const_defined?(:CollisionType, false)

end; end; end; end

