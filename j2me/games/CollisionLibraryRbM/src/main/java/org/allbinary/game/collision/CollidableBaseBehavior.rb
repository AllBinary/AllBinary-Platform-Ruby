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

require "org/allbinary/game/collision/CollidableInterface"

class CollidableBaseBehavior
    include CollidableInterface
    attr_accessor :logUtil, :commonStrings, :layerCollisionUtil, :collidable

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @layerCollisionUtil = LayerCollisionUtil.getInstance()
        @collidable = true
    end
    

    def initialize(collidable)
        initialize_fields
        @collidable = collidable
    end
    

    def update()
    end
    

    def getName()
        return self.class.name
    end
    

    def setCollidable(collidable)
        @collidable = collidable
    end
    

    def isCollidable(ownerLayer)
        return @collidable
    end
    

    # throws Exception
    def collide(ownerLayer, allbinaryCollidableLayer)
        raise StandardError.new(StringMaker.new().append(@commonStrings.NOT_IMPLEMENTED).append(CommonLabels.getInstance().COLON_SEP).append(self.class.name).to_s)
    end
    

    def isCollision(ownerLayer, collisionLayer)
        return @layerCollisionUtil.isCollision(ownerLayer, collisionLayer)
    end
    

    def isCollisionInterface(ownerLayer, collidableInterfaceCompositeInterface)
        return @layerCollisionUtil.isCollision(ownerLayer, collidableInterfaceCompositeInterface)
    end
    

    # throws Exception
    def collideInterface(ownerLayer, collidableInterfaceCompositeInterface)
        raise StandardError.new(@commonStrings.NOT_IMPLEMENTED)
    end
    

    def paint(ownerLayer, graphics)
    end
    

    def getCollisionTypeWith(layerInterface)
        return CollisionTypeFactory.getInstance().NONE
    end
end

autoload :Graphics, "javax/microedition/lcdui/Graphics"
autoload :CollidableCompositeLayer, "org/allbinary/game/layer/CollidableCompositeLayer"
autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :CommonLabels, "org/allbinary/string/CommonLabels"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :CollidableInterfaceCompositeInterface, "org/allbinary/game/collision/CollidableInterfaceCompositeInterface"
autoload :CollisionType, "org/allbinary/game/collision/CollisionType"
autoload :CollisionTypeFactory, "org/allbinary/game/collision/CollisionTypeFactory"
autoload :LayerCollisionUtil, "org/allbinary/game/collision/LayerCollisionUtil"

