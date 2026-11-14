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

require "org/allbinary/game/layer/pickup/PickupBehaviorInterface"

class PickupBehavior
    include PickupBehaviorInterface
    attr_accessor :logUtil, :countedIndex, :ownerLayerInterface

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @countedIndex = nil
        @ownerLayerInterface = nil
    end
    

    def self.getNullInstance()
        if PickupBehavior::NULL_PICKUP_BEHAVIOR == NullUtil.getInstance().NULL_OBJECT
            (PickupBehavior.send(:remove_const, :NULL_PICKUP_BEHAVIOR) if PickupBehavior.const_defined?(:NULL_PICKUP_BEHAVIOR, false); PickupBehavior.const_set(:NULL_PICKUP_BEHAVIOR, PickupBehavior.new(CollidableCompositeLayer.getNullInstance(), 0)))
        end
        return PickupBehavior::NULL_PICKUP_BEHAVIOR
    end
    

    def initialize(ownerLayerInterface, countedIndex)
        initialize_fields
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
            commonStrings = CommonStrings.getInstance()
            @logUtil.put(commonStrings.EXCEPTION, self, "doPickup", e)
        end
    end
    

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
            commonStrings = CommonStrings.getInstance()
            PreLogUtil.putOE(commonStrings.EXCEPTION, self, "doPickup", e)
        end
    end
    

    def add(countedPickedUpLayerInterfaceFactoryInterface)
        partIndex = countedPickedUpLayerInterfaceFactoryInterface.getId() + @countedIndex
        self.addAt(countedPickedUpLayerInterfaceFactoryInterface, partIndex)
    end
    

    def addAt(countedPickedUpLayerInterfaceFactoryInterface, partIndex)
        collidableDestroyableDamageableLayer = @ownerLayerInterface
        countedLayerInterfaceFactory = collidableDestroyableDamageableLayer.getPartInterfaceArray()[partIndex]
        countedLayerInterfaceFactory.setTotal(countedLayerInterfaceFactory.getTotal() + countedPickedUpLayerInterfaceFactoryInterface.getTotal())
    end
    

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
        return CountedLayerInterfaceFactoryPart::NULL_COUNTED_LAYER_INTERFACE_FACTORY
    end
    

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
        return CountedLayerInterfaceFactoryPart::NULL_COUNTED_LAYER_INTERFACE_FACTORY
    end
    

    def getCountedIndex()
        return @countedIndex
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:NULL_PICKUP_BEHAVIOR, NullUtil.getInstance().NULL_OBJECT)
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

autoload :HealthInterfaceCompositeInterface, "org/allbinary/game/health/HealthInterfaceCompositeInterface"
autoload :CollidableCompositeLayer, "org/allbinary/game/layer/CollidableCompositeLayer"
autoload :CollidableDestroyableDamageableLayer, "org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer"
autoload :CountedLayerInterfaceFactoryPart, "org/allbinary/game/part/CountedLayerInterfaceFactoryPart"
autoload :PartInterface, "org/allbinary/game/part/PartInterface"
autoload :NullUtil, "org/allbinary/logic/NullUtil"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :PreLogUtil, "org/allbinary/logic/communication/log/PreLogUtil"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :CountedPickedUpLayerInterfaceFactory, "org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactory"
autoload :CountedPickedUpLayerInterfaceFactoryInterface, "org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactoryInterface"
autoload :PickedUpLayerInterface, "org/allbinary/game/layer/pickup/PickedUpLayerInterface"
autoload :PickedUpLayerInterfaceFactoryInterface, "org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactoryInterface"
autoload :PickedUpLayerType, "org/allbinary/game/layer/pickup/PickedUpLayerType"
autoload :PickedUpLayerTypeFactory, "org/allbinary/game/layer/pickup/PickedUpLayerTypeFactory"
autoload :PickupProcessorInterface, "org/allbinary/game/layer/pickup/PickupProcessorInterface"

begin
    PickupBehavior.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

