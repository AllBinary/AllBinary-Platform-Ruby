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
# package org.allbinary.game.layer.special

# require "javax/microedition/lcdui/Graphics"
require "org/allbinary/game/combat/damage/DamageableInterface"
require "org/allbinary/game/combat/destroy/DestroyableInterface"
require "org/allbinary/game/layer/CollidableCompositeLayer"
require "org/allbinary/game/layer/pickup/PickupCompositeInterface"
require "org/allbinary/game/layer/special/SpecialGameInputInterface"

class CollidableDestroyableDamageableLayer < CollidableCompositeLayer
    include DestroyableInterface
    include DamageableInterface
    include PickupCompositeInterface
    include SpecialGameInputInterface
    attr_accessor :groupInterface, :readyForExplosion, :initWidth, :initHeight, :initX, :initY, :initZ, :partInterfaceArrayP, :pickupBehavior, :allBinaryGameLayerManagerP, :isDraggable, :isDragged, :isDropped

    def initialize_fields
        @groupInterface = nil
        @readyForExplosion = false
        @initWidth = nil
        @initHeight = nil
        @initX = 0
        @initY = 0
        @initZ = 0
        @partInterfaceArrayP = PartInterfaceUtil.getZeroArray()
        @pickupBehavior = nil
        @allBinaryGameLayerManagerP = AllBinaryGameLayerManager.getNullInstance()
        @isDraggable = false
        @isDragged = false
        @isDropped = false
    end
    

    def self.getNullInstance()
        if CollidableDestroyableDamageableLayer::NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER == NullUtil.getInstance().NULL_OBJECT
            CollidableDestroyableDamageableLayer::NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER = CollidableDestroyableDamageableLayer.new(BasicGroupFactory.getInstance().NONE_ARRAY, StringUtil.getInstance().EMPTY_STRING, RectangleFactory::SINGLETON, ViewPositionBase::NULL_VIEW_POSITION)
        end
        return CollidableDestroyableDamageableLayer::NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER
    end
    

    def initialize(groupInterface, name, layerInfo, viewPosition)
        super(name, layerInfo, viewPosition, CollidableNeverCollideBehaviorFactory.getInstance())
        initialize_fields
        @initWidth = layerInfo.getWidth()
        @initHeight = layerInfo.getHeight()
        @groupInterface = groupInterface
        @pickupBehavior = PickupBehavior.getNullInstance()
    end
    

    # throws Exception
    def initPosition()
        self.setPosition(@initX, @initY, @initZ)
    end
    

    # throws Exception
    def initPositionXYZ(x, y, z)
        @initX = x
        @initY = y
        @initZ = z
    end
    

    def paint(graphics)
        super(graphics)
    end
    

    # throws Exception
    def damage(damage, damageType)
        raise StandardError.new(@commonStrings.NOT_IMPLEMENTED)
    end
    

    # throws Exception
    def getDamage(damageType)
        raise StandardError.new(@commonStrings.NOT_IMPLEMENTED)
    end
    

    # throws Exception
    def isDestroyed()
        raise StandardError.new(@commonStrings.NOT_IMPLEMENTED)
    end
    

    def getGroupInterface()
        return @groupInterface
    end
    

    def setGroupInterface(teamInterface)
        @groupInterface = teamInterface
    end
    

    # throws Exception
    def setAllBinaryGameLayerManager(allBinaryGameLayerManager)
        @allBinaryGameLayerManagerP = allBinaryGameLayerManager
        if @allBinaryGameLayerManagerP == nil
            raise RuntimeError.new()
        end
    end
    

    def isReadyForExplosion()
        return @readyForExplosion
    end
    

    def setReadyForExplosion(isReadyForExplosion)
        @readyForExplosion = isReadyForExplosion
    end
    

    def getInitWidth()
        return @initWidth
    end
    

    def getInitHeight()
        return @initHeight
    end
    

    def getInitX()
        return @initX
    end
    

    def getInitY()
        return @initY
    end
    

    # throws Exception
    def up()
    end
    

    # throws Exception
    def down()
    end
    

    # throws Exception
    def right()
    end
    

    # throws Exception
    def left()
    end
    

    # throws Exception
    def strafeLeft()
    end
    

    # throws Exception
    def strafeRight()
    end
    

    # throws Exception
    def fire(layerManager, gameKeyEvent)
    end
    

    # throws Exception
    def special1(layerManager, gameKeyEvent)
    end
    

    # throws Exception
    def special2(layerManager, gameKeyEvent)
    end
    

    # throws Exception
    def special3(layerManager, gameKeyEvent)
    end
    

    # throws Exception
    def special4(layerManager, gameKeyEvent)
    end
    

    # throws Exception
    def special5(layerManager, gameKeyEvent)
    end
    

    # throws Exception
    def upAnalog(yAnalogValue)
    end
    

    # throws Exception
    def downAnalog(yAnalogValue)
    end
    

    # throws Exception
    def rightAnalog(xAnalogValue)
    end
    

    # throws Exception
    def leftAnalog(xAnalogValue)
    end
    

    # throws Exception
    def rightTrigger(layerManager, gameKeyEvent, xAnalogValue)
    end
    

    # throws Exception
    def leftTrigger(layerManager, gameKeyEvent, xAnalogValue)
    end
    

    def onDestroyed(destroyedEvent)
    end
    

    def getPickupBehavior()
        return @pickupBehavior
    end
    

    def setPickupBehavior(pickupBehavior)
        @pickupBehavior = pickupBehavior
    end
    

    # throws Exception
    def addPart(pickedUpLayerInterfaceFactoryInterface)
    end
    

    def setPartInterfaceArray(partInterfaceArray)
        @partInterfaceArrayP = partInterfaceArray
    end
    

    def getPartInterfaceArray()
        return @partInterfaceArrayP
    end
    

    def toStringAppend(stringBuffer)
        commonSeps = CommonSeps.getInstance()
        positionStrings = PositionStrings.getInstance()
        super(stringBuffer)
        stringBuffer.append(commonSeps.NEW_LINE)
        groupInterfaceArray = self.getGroupInterface()
        size = groupInterfaceArray.length
        (0...size).each do |index|
            stringBuffer.append(groupInterfaceArray[index].to_s)
            stringBuffer.append(commonSeps.COMMA)
        end
        pickupBehavior = self.getPickupBehavior()
        if pickupBehavior != nil
            stringBuffer.append(commonSeps.NEW_LINE)
            stringBuffer.append(pickupBehavior.to_s)
        end
        stringBuffer.append(commonSeps.NEW_LINE)
        stringBuffer.append(CollidableDestroyableDamageableLayer::READYFOREXPLOSION)
        stringBuffer.appendboolean(@readyForExplosion)
        stringBuffer.append(commonSeps.NEW_LINE)
        stringBuffer.append(@commonStrings.INIT)
        stringBuffer.append(commonSeps.SPACE)
        stringBuffer.append(positionStrings.X_LABEL)
        stringBuffer.appendint(@initX)
        stringBuffer.append(positionStrings.Y_LABEL)
        stringBuffer.appendint(@initX)
        stringBuffer.append(positionStrings.Z_LABEL)
        stringBuffer.appendint(@initZ)
    end
    

    def toString()
        stringBuffer = StringMaker.new()
        self.toStringAppend(stringBuffer)
        return stringBuffer.to_s
    end
    alias_method :to_s, :toString
end

require "org/allbinary/game/collision/CollidableNeverCollideBehaviorFactory"
require "org/allbinary/game/combat/destroy/event/DestroyedEvent"
require "org/allbinary/game/identification/BasicGroupFactory"
require "org/allbinary/game/identification/Group"
require "org/allbinary/game/input/event/GameKeyEvent"
require "org/allbinary/game/layer/AllBinaryGameLayerManager"
require "org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactoryInterface"
require "org/allbinary/game/layer/pickup/PickupBehavior"
require "org/allbinary/game/part/PartInterface"
require "org/allbinary/game/part/PartInterfaceUtil"
require "org/allbinary/graphics/Rectangle"
require "org/allbinary/graphics/RectangleFactory"
require "org/allbinary/layer/AllBinaryLayerManager"
require "org/allbinary/logic/NullUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/math/PositionStrings"
require "org/allbinary/string/CommonSeps"
require "org/allbinary/view/ViewPositionBase"

class CollidableDestroyableDamageableLayer
    NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER = NullUtil.getInstance().NULL_OBJECT
    READYFOREXPLOSION = "ReadyForExplosion: "
end

