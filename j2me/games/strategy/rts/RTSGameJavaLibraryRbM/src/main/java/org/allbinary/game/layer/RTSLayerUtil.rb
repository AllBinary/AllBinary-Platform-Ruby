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


module ::Org; module Allbinary; module Game; module Layer

class RTSLayerUtil
    attr_accessor :logUtil, :groupCommonFactory, :MAX_RELOAD_TIME

    def jfields_org_allbinary_game_layer_RTSLayerUtil
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @groupCommonFactory = ::Org::Allbinary::Game::Identification::GroupCommonFactory.getInstance()
        @MAX_RELOAD_TIME = ((2147483647).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }) / 100000
    end

    def initialize
        jfields_org_allbinary_game_layer_RTSLayerUtil
    end
    

    def self.getInstance()
        return @@instance
    end
    

    def createWeaponProperties(weaponProperties, currentLevel, lastLevel)
        reloadTime = weaponProperties.getReloadTime()
        if lastLevel > currentLevel
            reloadTime = reloadTime + 50
        elsif lastLevel < currentLevel
            reloadTime = reloadTime - 50
        end
        newWeaponProperties = ::Org::Allbinary::Game::Combat::Weapon::WeaponProperties.new(reloadTime, weaponProperties.getTargetingTime(), weaponProperties.getSpeed().getUnscaled(), weaponProperties.getDamage() / lastLevel * currentLevel, weaponProperties.getDissipation())
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
        @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append("Total Cost: ").appendint(downgradeCost).to_s, self, "getDowngradeCost")
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
        @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append("Total Cost: ").appendint(upgradeCost).to_s, self, "getUpgradeCost")
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
        hashtable = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashtable()
        layerManager = FakeLayerManager.new(::Org::Allbinary::Game::GameInfo::NONE)
        layerManager.setGeographicMapInterface([baseRaceTrackGeographicMap])
        hashtable.put(AllBinaryGameLayerManager::ID, layerManager)
        hashtable.put(::Org::Allbinary::Direction::DirectionFactory.getInstance().NAME, ::Org::Allbinary::Direction::DirectionFactory.getInstance().LEFT)
        hashtable.put(@groupCommonFactory.ID, ::Org::Allbinary::Game::Identification::BasicGroupFactory.getInstance().NONE_ARRAY)
        return hashtable
    end

    def self.instance()
        RTSLayerUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        RTSLayerUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = RTSLayerUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "RTSLayerUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Game; module Identification; autoload :GroupCommonFactory, "org/allbinary/game/identification/GroupCommonFactory" unless const_defined?(:GroupCommonFactory, false); end; end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Direction; autoload :DirectionFactory, "org/allbinary/direction/DirectionFactory" unless const_defined?(:DirectionFactory, false); end; end; end
module ::Org; module Allbinary; module Game; autoload :GameInfo, "org/allbinary/game/GameInfo" unless const_defined?(:GameInfo, false); end; end; end
module ::Org; module Allbinary; module Game; module Combat; module Weapon; autoload :WeaponProperties, "org/allbinary/game/combat/weapon/WeaponProperties" unless const_defined?(:WeaponProperties, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Identification; autoload :BasicGroupFactory, "org/allbinary/game/identification/BasicGroupFactory" unless const_defined?(:BasicGroupFactory, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Part; autoload :PartInterface, "org/allbinary/game/part/PartInterface" unless const_defined?(:PartInterface, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Part; module Weapon; autoload :BasicWeaponPart, "org/allbinary/game/part/weapon/BasicWeaponPart" unless const_defined?(:BasicWeaponPart, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :BasicGeographicMap, "org/allbinary/media/graphics/geography/map/BasicGeographicMap" unless const_defined?(:BasicGeographicMap, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; module Racetrack; autoload :BaseRaceTrackGeographicMap, "org/allbinary/media/graphics/geography/map/racetrack/BaseRaceTrackGeographicMap" unless const_defined?(:BaseRaceTrackGeographicMap, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Util; autoload :ABHashtable, "org/allbinary/util/ABHashtable" unless const_defined?(:ABHashtable, false); end; end; end
autoload :AllBinaryGameLayerManager, "org/allbinary/game/layer/AllBinaryGameLayerManager" unless const_defined?(:AllBinaryGameLayerManager, false)
autoload :FakeLayerManager, "org/allbinary/game/layer/FakeLayerManager" unless const_defined?(:FakeLayerManager, false)
autoload :RTSLayer, "org/allbinary/game/layer/RTSLayer" unless const_defined?(:RTSLayer, false)

begin
    RTSLayerUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

