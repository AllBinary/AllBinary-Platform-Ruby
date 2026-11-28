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

require "java/lang/JavaOverload"
require "org/allbinary/game/combat/damage/DamageableInterface"
require "org/allbinary/game/combat/destroy/DestroyableInterface"
require "org/allbinary/game/layer/CollidableCompositeLayer"
require "org/allbinary/game/layer/pickup/PickupCompositeInterface"
require "org/allbinary/game/layer/special/SpecialGameInputInterface"

module ::Org; module Allbinary; module Game; module Layer; module Special

class CollidableDestroyableDamageableLayer < ::Org::Allbinary::Game::Layer::CollidableCompositeLayer
    include ::Org::Allbinary::Game::Combat::Destroy::DestroyableInterface
    include ::Org::Allbinary::Game::Combat::Damage::DamageableInterface
    include ::Org::Allbinary::Game::Layer::Pickup::PickupCompositeInterface
    include SpecialGameInputInterface
    attr_accessor :groupInterface, :readyForExplosion, :initWidth, :initHeight, :initX, :initY, :initZ, :partInterfaceArrayP, :pickupBehavior, :allBinaryGameLayerManagerP, :isDraggable, :isDragged, :isDropped

    def jfields_org_allbinary_game_layer_special_CollidableDestroyableDamageableLayer
        @groupInterface = nil unless instance_variable_defined?(:@groupInterface)
        @readyForExplosion = false unless instance_variable_defined?(:@readyForExplosion)
        @initWidth = nil unless instance_variable_defined?(:@initWidth)
        @initHeight = nil unless instance_variable_defined?(:@initHeight)
        @initX = 0 unless instance_variable_defined?(:@initX)
        @initY = 0 unless instance_variable_defined?(:@initY)
        @initZ = 0 unless instance_variable_defined?(:@initZ)
        @partInterfaceArrayP = ::Org::Allbinary::Game::Part::PartInterfaceUtil.getZeroArray()
        @pickupBehavior = nil unless instance_variable_defined?(:@pickupBehavior)
        @allBinaryGameLayerManagerP = ::Org::Allbinary::Game::Layer::AllBinaryGameLayerManager.getNullInstance()
        @isDraggable = false
        @isDragged = false
        @isDropped = false
    end
    

    def self.getNullInstance()
        if NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER == ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT
            (CollidableDestroyableDamageableLayer.instance_exec(CollidableDestroyableDamageableLayer.new(::Org::Allbinary::Game::Identification::BasicGroupFactory.getInstance().NONE_ARRAY, ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING, ::Org::Allbinary::Graphics::RectangleFactory::SINGLETON, ::Org::Allbinary::View::ViewPositionBase::NULL_VIEW_POSITION)) { |java_value| remove_const(:NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER) if const_defined?(:NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER, false); const_set(:NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER, java_value) })
        end
        return NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER
    end
    

    def initialize(groupInterface, name, layerInfo, viewPosition)
        super(name, layerInfo, viewPosition, ::Org::Allbinary::Game::Collision::CollidableNeverCollideBehaviorFactory.getInstance())
        jfields_org_allbinary_game_layer_special_CollidableDestroyableDamageableLayer
        @initWidth = layerInfo.getWidth()
        @initHeight = layerInfo.getHeight()
        @groupInterface = groupInterface
        @pickupBehavior = ::Org::Allbinary::Game::Layer::Pickup::PickupBehavior.getNullInstance()
    end
    

    # throws Exception
    def initPosition()
        self.setPosition(@initX, @initY, @initZ)
    end
    java_overload :initPosition, 0
    

    # throws Exception
    def initPositionXYZ(x, y, z)
        @initX = x
        @initY = y
        @initZ = z
    end
    java_overload :initPositionXYZ, 3
    

    def paint(graphics)
        CollidableDestroyableDamageableLayer.superclass.java_super_method(:paint, 1).bind(self).call(graphics)
    end
    java_overload :paint, 1
    

    # throws Exception
    def damage(damage, damageType)
        raise StandardError.new(@commonStrings.NOT_IMPLEMENTED)
    end
    java_overload :damage, 2
    

    # throws Exception
    def getDamage(damageType)
        raise StandardError.new(@commonStrings.NOT_IMPLEMENTED)
    end
    java_overload :getDamage, 1
    

    # throws Exception
    def isDestroyed()
        raise StandardError.new(@commonStrings.NOT_IMPLEMENTED)
    end
    java_overload :isDestroyed, 0
    

    def getGroupInterface()
        return @groupInterface
    end
    java_overload :getGroupInterface, 0
    

    def setGroupInterface(teamInterface)
        @groupInterface = teamInterface
    end
    java_overload :setGroupInterface, 1
    

    # throws Exception
    def setAllBinaryGameLayerManager(allBinaryGameLayerManager)
        @allBinaryGameLayerManagerP = allBinaryGameLayerManager
        if @allBinaryGameLayerManagerP == nil
            raise RuntimeError.new()
        end
    end
    java_overload :setAllBinaryGameLayerManager, 1
    

    def isReadyForExplosion()
        return @readyForExplosion
    end
    java_overload :isReadyForExplosion, 0
    

    def setReadyForExplosion(isReadyForExplosion)
        @readyForExplosion = isReadyForExplosion
    end
    java_overload :setReadyForExplosion, 1
    

    def getInitWidth()
        return @initWidth
    end
    java_overload :getInitWidth, 0
    

    def getInitHeight()
        return @initHeight
    end
    java_overload :getInitHeight, 0
    

    def getInitX()
        return @initX
    end
    java_overload :getInitX, 0
    

    def getInitY()
        return @initY
    end
    java_overload :getInitY, 0
    

    # throws Exception
    def up()
    end
    java_overload :up, 0
    

    # throws Exception
    def down()
    end
    java_overload :down, 0
    

    # throws Exception
    def right()
    end
    java_overload :right, 0
    

    # throws Exception
    def left()
    end
    java_overload :left, 0
    

    # throws Exception
    def strafeLeft()
    end
    java_overload :strafeLeft, 0
    

    # throws Exception
    def strafeRight()
    end
    java_overload :strafeRight, 0
    

    # throws Exception
    def fire(layerManager, gameKeyEvent)
    end
    java_overload :fire, 2
    

    # throws Exception
    def special1(layerManager, gameKeyEvent)
    end
    java_overload :special1, 2
    

    # throws Exception
    def special2(layerManager, gameKeyEvent)
    end
    java_overload :special2, 2
    

    # throws Exception
    def special3(layerManager, gameKeyEvent)
    end
    java_overload :special3, 2
    

    # throws Exception
    def special4(layerManager, gameKeyEvent)
    end
    java_overload :special4, 2
    

    # throws Exception
    def special5(layerManager, gameKeyEvent)
    end
    java_overload :special5, 2
    

    # throws Exception
    def upAnalog(yAnalogValue)
    end
    java_overload :upAnalog, 1
    

    # throws Exception
    def downAnalog(yAnalogValue)
    end
    java_overload :downAnalog, 1
    

    # throws Exception
    def rightAnalog(xAnalogValue)
    end
    java_overload :rightAnalog, 1
    

    # throws Exception
    def leftAnalog(xAnalogValue)
    end
    java_overload :leftAnalog, 1
    

    # throws Exception
    def rightTrigger(layerManager, gameKeyEvent, xAnalogValue)
    end
    java_overload :rightTrigger, 3
    

    # throws Exception
    def leftTrigger(layerManager, gameKeyEvent, xAnalogValue)
    end
    java_overload :leftTrigger, 3
    

    def onDestroyed(destroyedEvent)
    end
    java_overload :onDestroyed, 1
    

    def getPickupBehavior()
        return @pickupBehavior
    end
    java_overload :getPickupBehavior, 0
    

    def setPickupBehavior(pickupBehavior)
        @pickupBehavior = pickupBehavior
    end
    java_overload :setPickupBehavior, 1
    

    # throws Exception
    def addPart(pickedUpLayerInterfaceFactoryInterface)
    end
    java_overload :addPart, 1
    

    def setPartInterfaceArray(partInterfaceArray)
        @partInterfaceArrayP = partInterfaceArray
    end
    java_overload :setPartInterfaceArray, 1
    

    def getPartInterfaceArray()
        return @partInterfaceArrayP
    end
    java_overload :getPartInterfaceArray, 0
    

    def toStringAppend(stringBuffer)
        commonSeps = ::Org::Allbinary::StringPackage::CommonSeps.getInstance()
        positionStrings = ::Org::Allbinary::MathPackage::PositionStrings.getInstance()
        CollidableDestroyableDamageableLayer.superclass.java_super_method(:toStringAppend, 1).bind(self).call(stringBuffer)
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
        stringBuffer.append(READYFOREXPLOSION)
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
    java_overload :toStringAppend, 1
    

    def toString()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        self.toStringAppend(stringBuffer)
        return stringBuffer.to_s
    end
    java_overload :toString, 0
    alias_method :to_s, :toString

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:READYFOREXPLOSION, "ReadyForExplosion: ")
        begin
            const_set(:NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER, ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT)
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "CollidableDestroyableDamageableLayer"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER, :READYFOREXPLOSION].include?(name)
        end
        super
    end
end

module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Game; module Collision; autoload :CollidableNeverCollideBehaviorFactory, "org/allbinary/game/collision/CollidableNeverCollideBehaviorFactory" unless const_defined?(:CollidableNeverCollideBehaviorFactory, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Combat; module Destroy; module Event; autoload :DestroyedEvent, "org/allbinary/game/combat/destroy/event/DestroyedEvent" unless const_defined?(:DestroyedEvent, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Game; module Identification; autoload :BasicGroupFactory, "org/allbinary/game/identification/BasicGroupFactory" unless const_defined?(:BasicGroupFactory, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Identification; autoload :Group, "org/allbinary/game/identification/Group" unless const_defined?(:Group, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Input; module Event; autoload :GameKeyEvent, "org/allbinary/game/input/event/GameKeyEvent" unless const_defined?(:GameKeyEvent, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :AllBinaryGameLayerManager, "org/allbinary/game/layer/AllBinaryGameLayerManager" unless const_defined?(:AllBinaryGameLayerManager, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Pickup; autoload :PickedUpLayerInterfaceFactoryInterface, "org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactoryInterface" unless const_defined?(:PickedUpLayerInterfaceFactoryInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Pickup; autoload :PickupBehavior, "org/allbinary/game/layer/pickup/PickupBehavior" unless const_defined?(:PickupBehavior, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Part; autoload :PartInterface, "org/allbinary/game/part/PartInterface" unless const_defined?(:PartInterface, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Part; autoload :PartInterfaceUtil, "org/allbinary/game/part/PartInterfaceUtil" unless const_defined?(:PartInterfaceUtil, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; autoload :Rectangle, "org/allbinary/graphics/Rectangle" unless const_defined?(:Rectangle, false); end; end; end
module ::Org; module Allbinary; module Graphics; autoload :RectangleFactory, "org/allbinary/graphics/RectangleFactory" unless const_defined?(:RectangleFactory, false); end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayerManager, "org/allbinary/layer/AllBinaryLayerManager" unless const_defined?(:AllBinaryLayerManager, false); end; end; end
module ::Org; module Allbinary; module Logic; autoload :NullUtil, "org/allbinary/logic/NullUtil" unless const_defined?(:NullUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module MathPackage; autoload :PositionStrings, "org/allbinary/math/PositionStrings" unless const_defined?(:PositionStrings, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
module ::Org; module Allbinary; module View; autoload :ViewPositionBase, "org/allbinary/view/ViewPositionBase" unless const_defined?(:ViewPositionBase, false); end; end; end

begin
    CollidableDestroyableDamageableLayer.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

