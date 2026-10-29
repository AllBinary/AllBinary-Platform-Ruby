# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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
# package org.allbinary.game.layer.building

require "org/allbinary/game/layer/building/BuildingPropertiesFactory"

class SimulatedBuildingPropertiesFactory < BuildingPropertiesFactory
    

    def self.getInstance()
        return SimulatedBuildingPropertiesFactory.instanceC
    end
    

    def getEfficiencyPerLevel(buildingLayer)
        return 0
    end
    

    def getDamageFloaters(buildingLayer)
        damageFloaters = DamageFloaters.getInstance()
        @damageFloatersPaintableInterface = damageFloaters
        return damageFloaters
    end
    

    # throws Exception
    def getHealthBar(buildingLayer)
        return NullPaintable.getInstance()
    end
    

    def getHashtable()
        return StdUtil.getInstance().NULL_TABLE
    end
    

    def getTrackingEvent(buildingLayer)
        return TrackingEvent.new(TrackingEventHandler.getInstance())
    end

    def self.instanceC()
        return defined?(@@instanceC) ? @@instanceC : nil
    end

    def self.instanceC=(value)
        @@instanceC = value
    end
end

require "org/allbinary/game/combat/damage/DamageFloaters"
require "org/allbinary/game/tracking/TrackingEvent"
require "org/allbinary/game/tracking/TrackingEventHandler"
require "org/allbinary/graphics/paint/NullPaintable"
require "org/allbinary/graphics/paint/Paintable"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/util/ABHashtable"
require "org/allbinary/game/layer/building/BuildingLayer"

class SimulatedBuildingPropertiesFactory
    @@instanceC = SimulatedBuildingPropertiesFactory.new()
end

