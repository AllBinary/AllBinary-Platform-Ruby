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
            PickupBehavior::NULL_PICKUP_BEHAVIOR = PickupBehavior.new(CollidableCompositeLayer.getNullInstance(), 0)
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
end

require "org/allbinary/game/health/HealthInterfaceCompositeInterface"
require "org/allbinary/game/layer/CollidableCompositeLayer"
require "org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer"
require "org/allbinary/game/part/CountedLayerInterfaceFactoryPart"
require "org/allbinary/game/part/PartInterface"
require "org/allbinary/logic/NullUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/communication/log/PreLogUtil"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactory"
require "org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactoryInterface"
require "org/allbinary/game/layer/pickup/PickedUpLayerInterface"
require "org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactoryInterface"
require "org/allbinary/game/layer/pickup/PickedUpLayerType"
require "org/allbinary/game/layer/pickup/PickedUpLayerTypeFactory"
require "org/allbinary/game/layer/pickup/PickupProcessorInterface"

class PickupBehavior
    NULL_PICKUP_BEHAVIOR = NullUtil.getInstance().NULL_OBJECT
end

