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
require "java/lang/JavaClass"
require "org/allbinary/game/collision/CollidableInterface"

module ::Org; module Allbinary; module Game; module Collision

class CollidableBaseBehavior
    include CollidableInterface
    attr_accessor :logUtil, :commonStrings, :layerCollisionUtil, :collidable

    def jfields_org_allbinary_game_collision_CollidableBaseBehavior
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @layerCollisionUtil = LayerCollisionUtil.getInstance()
        @collidable = true
    end
    

    def initialize(collidable)
        jfields_org_allbinary_game_collision_CollidableBaseBehavior
        @collidable = collidable
    end
    

    def update()
    end
    java_overload :update, 0
    

    def getName()
        return self.class.java_name
    end
    java_overload :getName, 0
    

    def setCollidable(collidable)
        @collidable = collidable
    end
    java_overload :setCollidable, 1
    

    def isCollidable(ownerLayer)
        return @collidable
    end
    java_overload :isCollidable, 1
    

    # throws Exception
    def collide(ownerLayer, allbinaryCollidableLayer)
        raise StandardError.new(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(@commonStrings.NOT_IMPLEMENTED).append(::Org::Allbinary::StringPackage::CommonLabels.getInstance().COLON_SEP).append(self.class.java_name).to_s)
    end
    java_overload :collide, 2
    

    def isCollision(ownerLayer, collisionLayer)
        return @layerCollisionUtil.isCollision(ownerLayer, collisionLayer)
    end
    java_overload :isCollision, 2
    

    def isCollisionInterface(ownerLayer, collidableInterfaceCompositeInterface)
        return @layerCollisionUtil.isCollision(ownerLayer, collidableInterfaceCompositeInterface)
    end
    java_overload :isCollisionInterface, 2
    

    # throws Exception
    def collideInterface(ownerLayer, collidableInterfaceCompositeInterface)
        raise StandardError.new(@commonStrings.NOT_IMPLEMENTED)
    end
    java_overload :collideInterface, 2
    

    def paint(ownerLayer, graphics)
    end
    java_overload :paint, 2
    

    def getCollisionTypeWith(layerInterface)
        return CollisionTypeFactory.getInstance().NONE
    end
    java_overload :getCollisionTypeWith, 1
end

module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :CollidableCompositeLayer, "org/allbinary/game/layer/CollidableCompositeLayer" unless const_defined?(:CollidableCompositeLayer, false); end; end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonLabels, "org/allbinary/string/CommonLabels" unless const_defined?(:CommonLabels, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
autoload :CollidableInterfaceCompositeInterface, "org/allbinary/game/collision/CollidableInterfaceCompositeInterface" unless const_defined?(:CollidableInterfaceCompositeInterface, false)
autoload :CollisionType, "org/allbinary/game/collision/CollisionType" unless const_defined?(:CollisionType, false)
autoload :CollisionTypeFactory, "org/allbinary/game/collision/CollisionTypeFactory" unless const_defined?(:CollisionTypeFactory, false)
autoload :LayerCollisionUtil, "org/allbinary/game/collision/LayerCollisionUtil" unless const_defined?(:LayerCollisionUtil, false)

end; end; end; end

