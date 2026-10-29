# 
# AllBinary Open License Version 1 
# Copyright (c) 2003 AllBinary 
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
# package org.allbinary.game.layer


class RTSLayerUtil
    attr_accessor :logUtil, :groupCommonFactory, :MAX_RELOAD_TIME

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @groupCommonFactory = GroupCommonFactory.getInstance()
        @MAX_RELOAD_TIME = (2147483647).to_i / 100000
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return RTSLayerUtil.instance
    end
    

    def createWeaponProperties(weaponProperties, currentLevel, lastLevel)
        reloadTime = weaponProperties.getReloadTime()
        if lastLevel > currentLevel
            reloadTime = reloadTime + 50
        elsif lastLevel < currentLevel
            reloadTime = reloadTime - 50
        end
        newWeaponProperties = WeaponProperties.new(reloadTime, weaponProperties.getTargetingTime(), weaponProperties.getSpeed().getUnscaled(), weaponProperties.getDamage() / lastLevel * currentLevel, weaponProperties.getDissipation())
        return newWeaponProperties
    end
    

    def downgrade(rtsLayer)
        rtsLayer.setLevel(rtsLayer.getLevel() - 1)
        partInterfaceArray = rtsLayer.getPartInterfaceArray()
        size = partInterfaceArray.length
        partInterface = nil
        index = size
        while (index -= 1) >= 0
            partInterface = partInterfaceArray[index]
            partInterface.setWeaponProperties(self.createWeaponProperties(partInterface.getWeaponProperties(), rtsLayer.getLevel(), rtsLayer.getLevel() + 1))
        end
        rtsLayer.select()
    end
    

    def upgrade(rtsLayer)
        rtsLayer.setLevel(rtsLayer.getLevel() + 1)
        partInterfaceArray = rtsLayer.getPartInterfaceArray()
        size = partInterfaceArray.length
        partInterface = nil
        index = size
        while (index -= 1) >= 0
            partInterface = partInterfaceArray[index]
            partInterface.setWeaponProperties(self.createWeaponProperties(partInterface.getWeaponProperties(), rtsLayer.getLevel(), rtsLayer.getLevel() - 1))
        end
        rtsLayer.select()
    end
    

    def getCostExponential(cost)
        return ((cost * cost * cost) / (cost * 1000))
    end
    

    def getWeaponPropertiesCost(weaponProperties)
        cost = (weaponProperties.getDamage() + weaponProperties.getRange() + ((@MAX_RELOAD_TIME / weaponProperties.getReloadTime()) >> 1))
        cost = self.getCostExponential(cost)
        return cost
    end
    

    def getCost(rtsLayer)
        total = 0
        partInterfaceArray = rtsLayer.getPartInterfaceArray()
        size = partInterfaceArray.length
        partInterface = nil
        weaponProperties = nil
        (size - 1).step(0, -(1)) do |index|
            partInterface = partInterfaceArray[index]
            weaponProperties = partInterface.getWeaponProperties()
            total += self.getWeaponPropertiesCost(weaponProperties)
        end
        return total
    end
    

    def getDowngradeCost(rtsLayer)
        partInterfaceArray = rtsLayer.getPartInterfaceArray()
        size = partInterfaceArray.length
        downgradeCost = 0
        partInterface = nil
        weaponProperties = nil
        downgradeWeaponCost = 0
        currentWeaponCost = 0
        (size - 1).step(0, -(1)) do |index|
            partInterface = partInterfaceArray[index]
            weaponProperties = partInterface.getWeaponProperties()
            downgradeWeaponCost = self.getWeaponPropertiesCost(self.createWeaponProperties(weaponProperties, rtsLayer.getLevel() - 1, rtsLayer.getLevel()))
            currentWeaponCost = self.getWeaponPropertiesCost(weaponProperties)
            downgradeCost += (currentWeaponCost - downgradeWeaponCost)
        end
        downgradeCost = downgradeCost * 9 / 10
        @logUtil.putF(StringMaker.new().append("Total Cost: ").appendint(downgradeCost).to_s, self, "getDowngradeCost")
        return downgradeCost
    end
    

    def getUpgradeCost(rtsLayer)
        upgradeCost = 0
        partInterfaceArray = rtsLayer.getPartInterfaceArray()
        size = partInterfaceArray.length
        partInterface = nil
        weaponProperties = nil
        upgradedWeaponCost = 0
        currentWeaponCost = 0
        (size - 1).step(0, -(1)) do |index|
            partInterface = partInterfaceArray[index]
            weaponProperties = partInterface.getWeaponProperties()
            upgradedWeaponCost = self.getWeaponPropertiesCost(self.createWeaponProperties(weaponProperties, rtsLayer.getLevel() + 1, rtsLayer.getLevel()))
            currentWeaponCost = self.getWeaponPropertiesCost(weaponProperties)
            upgradeCost += (upgradedWeaponCost - currentWeaponCost)
        end
        @logUtil.putF(StringMaker.new().append("Total Cost: ").appendint(upgradeCost).to_s, self, "getUpgradeCost")
        return upgradeCost
    end
    

    # throws Exception
    def destroyAndClear(list)
        rtsLayer = nil
        (list.size() - 1).step(0, -(1)) do |index|
            rtsLayer = list.get(index)
            rtsLayer.setDestroyed(true)
        end
        list.clear()
    end
    

    def createFakeRTSLayerHashtable(baseRaceTrackGeographicMap)
        hashtable = StdUtil.getInstance().createHashtable()
        layerManager = FakeLayerManager.new(GameInfo::NONE)
        layerManager.setGeographicMapInterface([baseRaceTrackGeographicMap])
        hashtable.put(AllBinaryGameLayerManager::ID, layerManager)
        hashtable.put(DirectionFactory.getInstance().NAME, DirectionFactory.getInstance().LEFT)
        hashtable.put(@groupCommonFactory.ID, BasicGroupFactory.getInstance().NONE_ARRAY)
        return hashtable
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/game/identification/GroupCommonFactory"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/direction/DirectionFactory"
require "org/allbinary/game/GameInfo"
require "org/allbinary/game/combat/weapon/WeaponProperties"
require "org/allbinary/game/identification/BasicGroupFactory"
require "org/allbinary/game/part/PartInterface"
require "org/allbinary/game/part/weapon/BasicWeaponPart"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/media/graphics/geography/map/BasicGeographicMap"
require "org/allbinary/media/graphics/geography/map/racetrack/BaseRaceTrackGeographicMap"
require "org/allbinary/util/ABHashtable"
require "org/allbinary/game/layer/AllBinaryGameLayerManager"
require "org/allbinary/game/layer/FakeLayerManager"
require "org/allbinary/game/layer/RTSLayer"

class RTSLayerUtil
    @@instance = RTSLayerUtil.new()
end

