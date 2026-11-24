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
# package org.allbinary.game.layer.pickup

require "java/lang/JavaOverload"
require "org/allbinary/game/layer/pickup/PickupBehaviorInterface"

module ::Org; module Allbinary; module Game; module Layer; module Pickup

class PickupBehavior
    include PickupBehaviorInterface
    attr_accessor :logUtil, :countedIndex, :ownerLayerInterface

    def jfields_org_allbinary_game_layer_pickup_PickupBehavior
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @countedIndex = nil unless instance_variable_defined?(:@countedIndex)
        @ownerLayerInterface = nil unless instance_variable_defined?(:@ownerLayerInterface)
    end
    

    def self.getNullInstance()
        if PickupBehavior::NULL_PICKUP_BEHAVIOR == ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT
            (PickupBehavior.instance_exec(PickupBehavior.new(::Org::Allbinary::Game::Layer::CollidableCompositeLayer.getNullInstance(), 0)) { |java_value| remove_const(:NULL_PICKUP_BEHAVIOR) if const_defined?(:NULL_PICKUP_BEHAVIOR, false); const_set(:NULL_PICKUP_BEHAVIOR, java_value) })
        end
        return PickupBehavior::NULL_PICKUP_BEHAVIOR
    end
    

    def initialize(ownerLayerInterface, countedIndex)
        jfields_org_allbinary_game_layer_pickup_PickupBehavior
        @ownerLayerInterface = ownerLayerInterface
        @countedIndex = countedIndex
    end
    

    def doPickup(pickupProcessorInterface)
        begin
            healthInterfaceCompositeInterface = @ownerLayerInterface
            if healthInterfaceCompositeInterface.getHealthInterface().isAlive()
                pickupProcessorInterface.process(@ownerLayerInterface)
            end
        rescue StandardError => e
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
            @logUtil.put(commonStrings.EXCEPTION, self, "doPickup", e)
        end
    end
    java_overload :doPickup, 1
    

    def doPickupLayer(pickupLayerInterface)
        begin
            pickedUpLayerInterfaceFactoryInterface = pickupLayerInterface.getPickedUpLayerInterfaceFactoryInterface()
            pickedUpLayerType = pickedUpLayerInterfaceFactoryInterface.getPickedUpLayerType()
            pickedUpLayerTypeFactory = PickedUpLayerTypeFactory.getInstance()
            if pickedUpLayerType == pickedUpLayerTypeFactory.BEAM || pickedUpLayerType == pickedUpLayerTypeFactory.MINE || pickedUpLayerType == pickedUpLayerTypeFactory.PROJECTILE || pickedUpLayerType == pickedUpLayerTypeFactory.ENHANCEMENT
                self.add(pickedUpLayerInterfaceFactoryInterface)
            elsif pickedUpLayerInterfaceFactoryInterface.getPickedUpLayerType() == pickedUpLayerTypeFactory.PART
                collidableDestroyableDamageableLayer = @ownerLayerInterface
                collidableDestroyableDamageableLayer.addPart(pickedUpLayerInterfaceFactoryInterface)
            elsif pickedUpLayerType == pickedUpLayerTypeFactory.NONE
            else
                pickupProcessorInterface = pickedUpLayerInterfaceFactoryInterface
                self.doPickup(pickupProcessorInterface)
            end
            pickupLayerInterface.setPickedUp()
        rescue StandardError => e
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
            ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.putOE(commonStrings.EXCEPTION, self, "doPickup", e)
        end
    end
    java_overload :doPickupLayer, 1
    

    def add(countedPickedUpLayerInterfaceFactoryInterface)
        partIndex = countedPickedUpLayerInterfaceFactoryInterface.getId() + @countedIndex
        self.addAt(countedPickedUpLayerInterfaceFactoryInterface, partIndex)
    end
    java_overload :add, 1
    

    def addAt(countedPickedUpLayerInterfaceFactoryInterface, partIndex)
        collidableDestroyableDamageableLayer = @ownerLayerInterface
        countedLayerInterfaceFactory = collidableDestroyableDamageableLayer.getPartInterfaceArray()[partIndex]
        countedLayerInterfaceFactory.setTotal(countedLayerInterfaceFactory.getTotal() + countedPickedUpLayerInterfaceFactoryInterface.getTotal())
    end
    java_overload :addAt, 2
    

    def getFirstAvailableCountedLayerInterfaceFactory(pickedUpLayerTypeArray)
        collidableDestroyableDamageableLayer = @ownerLayerInterface
        partInterfaceArray = collidableDestroyableDamageableLayer.getPartInterfaceArray()
        size = partInterfaceArray.length
        nextCountedLayerInterfaceFactory = nil
        countedPickedUpLayerInterfaceFactory = nil
        (@countedIndex...size).each do |index|
            nextCountedLayerInterfaceFactory = collidableDestroyableDamageableLayer.getPartInterfaceArray()[index]
            countedPickedUpLayerInterfaceFactory = nextCountedLayerInterfaceFactory.getCountedPickedUpLayerInterfaceFactory()
            index2 = pickedUpLayerTypeArray.length
            while (index2 -= 1) >= 0
                if countedPickedUpLayerInterfaceFactory.getPickedUpLayerType() == pickedUpLayerTypeArray[index2]
                    if nextCountedLayerInterfaceFactory.getTotal() > 0
                        return nextCountedLayerInterfaceFactory
                    end
                end
            end
        end
        return ::Org::Allbinary::Game::Part::CountedLayerInterfaceFactoryPart::NULL_COUNTED_LAYER_INTERFACE_FACTORY
    end
    java_overload :getFirstAvailableCountedLayerInterfaceFactory, 1
    

    # throws Exception
    def getCountedLayerInterfaceFactoryForSlot(slotIndex)
        currentSlot = 0
        collidableDestroyableDamageableLayer = @ownerLayerInterface
        partInterfaceArray = collidableDestroyableDamageableLayer.getPartInterfaceArray()
        size = partInterfaceArray.length
        nextCountedLayerInterfaceFactory = nil
        (@countedIndex...size).each do |index|
            nextCountedLayerInterfaceFactory = collidableDestroyableDamageableLayer.getPartInterfaceArray()[index]
            if nextCountedLayerInterfaceFactory.getTotal() > 0
                if currentSlot == slotIndex
                    return nextCountedLayerInterfaceFactory
                else
                    currentSlot += 1
                end
            end
        end
        return ::Org::Allbinary::Game::Part::CountedLayerInterfaceFactoryPart::NULL_COUNTED_LAYER_INTERFACE_FACTORY
    end
    java_overload :getCountedLayerInterfaceFactoryForSlot, 1
    

    def getCountedIndex()
        return @countedIndex
    end
    java_overload :getCountedIndex, 0

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:NULL_PICKUP_BEHAVIOR, ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT)
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "PickupBehavior"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NULL_PICKUP_BEHAVIOR].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Game; module Health; autoload :HealthInterfaceCompositeInterface, "org/allbinary/game/health/HealthInterfaceCompositeInterface" unless const_defined?(:HealthInterfaceCompositeInterface, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :CollidableCompositeLayer, "org/allbinary/game/layer/CollidableCompositeLayer" unless const_defined?(:CollidableCompositeLayer, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Special; autoload :CollidableDestroyableDamageableLayer, "org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer" unless const_defined?(:CollidableDestroyableDamageableLayer, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Part; autoload :CountedLayerInterfaceFactoryPart, "org/allbinary/game/part/CountedLayerInterfaceFactoryPart" unless const_defined?(:CountedLayerInterfaceFactoryPart, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Part; autoload :PartInterface, "org/allbinary/game/part/PartInterface" unless const_defined?(:PartInterface, false); end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :NullUtil, "org/allbinary/logic/NullUtil" unless const_defined?(:NullUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :PreLogUtil, "org/allbinary/logic/communication/log/PreLogUtil" unless const_defined?(:PreLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
autoload :CountedPickedUpLayerInterfaceFactory, "org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactory" unless const_defined?(:CountedPickedUpLayerInterfaceFactory, false)
autoload :CountedPickedUpLayerInterfaceFactoryInterface, "org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactoryInterface" unless const_defined?(:CountedPickedUpLayerInterfaceFactoryInterface, false)
autoload :PickedUpLayerInterface, "org/allbinary/game/layer/pickup/PickedUpLayerInterface" unless const_defined?(:PickedUpLayerInterface, false)
autoload :PickedUpLayerInterfaceFactoryInterface, "org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactoryInterface" unless const_defined?(:PickedUpLayerInterfaceFactoryInterface, false)
autoload :PickedUpLayerType, "org/allbinary/game/layer/pickup/PickedUpLayerType" unless const_defined?(:PickedUpLayerType, false)
autoload :PickedUpLayerTypeFactory, "org/allbinary/game/layer/pickup/PickedUpLayerTypeFactory" unless const_defined?(:PickedUpLayerTypeFactory, false)
autoload :PickupProcessorInterface, "org/allbinary/game/layer/pickup/PickupProcessorInterface" unless const_defined?(:PickupProcessorInterface, false)

begin
    PickupBehavior.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

