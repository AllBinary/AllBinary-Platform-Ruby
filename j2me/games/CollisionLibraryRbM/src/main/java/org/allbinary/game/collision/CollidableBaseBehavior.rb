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

# require "javax/microedition/lcdui/Graphics"
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

require "org/allbinary/game/layer/CollidableCompositeLayer"
require "org/allbinary/layer/AllBinaryLayer"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/string/CommonLabels"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/game/collision/CollidableInterfaceCompositeInterface"
require "org/allbinary/game/collision/CollisionType"
require "org/allbinary/game/collision/CollisionTypeFactory"
require "org/allbinary/game/collision/LayerCollisionUtil"

