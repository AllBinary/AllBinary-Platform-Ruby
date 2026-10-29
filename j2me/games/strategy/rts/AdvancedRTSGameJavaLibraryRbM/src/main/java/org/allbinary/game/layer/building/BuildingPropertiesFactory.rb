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


class BuildingPropertiesFactory
    attr_accessor :damageFloatersPaintableInterface

    def initialize_fields
        @damageFloatersPaintableInterface = NullPaintable.getInstance()
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return BuildingPropertiesFactory.instance
    end
    

    def getEfficiencyPerLevel(buildingLayer)
        return 10000 / buildingLayer.getMaxLevel() + 10000 % buildingLayer.getMaxLevel()
    end
    

    def getDamageFloaters(buildingLayer)
        damageFloaters = DamageFloaters.getInstance()
        if Features.getInstance().isFeature(GameFeatureFactory.getInstance().DAMAGE_FLOATERS)
            damageFloaters = PtsDamageFloaters.new(buildingLayer)
            @damageFloatersPaintableInterface = damageFloaters
        else
            damageFloaters = DamageFloaters.new()
        end
        return damageFloaters
    end
    

    # throws Exception
    def getHealthBar(buildingLayer)
        healthBar = NullPaintable.getInstance()
        if Features.getInstance().isFeature(GameFeatureFactory.getInstance().HEALTH_BARS)
            healthBar = HealthBar.new(buildingLayer, buildingLayer.getHealthInterface(), HealthBarTwodAnimation.new(buildingLayer, BasicHudFactory.getInstance().BOTTOMLEFT), -1)
        end
        return healthBar
    end
    

    def getHashtable()
        return StdUtil.getInstance().createHashtable()
    end
    

    def getTrackingEvent(buildingLayer)
        return TrackingEvent.new(buildingLayer)
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/game/combat/damage/DamageFloaters"
require "org/allbinary/game/combat/damage/PtsDamageFloaters"
require "org/allbinary/game/configuration/feature/Features"
require "org/allbinary/game/configuration/feature/GameFeatureFactory"
require "org/allbinary/game/graphics/hud/BasicHudFactory"
require "org/allbinary/game/health/HealthBar"
require "org/allbinary/game/health/HealthBarTwodAnimation"
require "org/allbinary/game/tracking/TrackingEvent"
require "org/allbinary/graphics/paint/NullPaintable"
require "org/allbinary/graphics/paint/Paintable"
require "org/allbinary/layer/AllBinaryLayer"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/util/ABHashtable"
require "org/allbinary/game/layer/building/BuildingLayer"

class BuildingPropertiesFactory
    @@instance = BuildingPropertiesFactory.new()
end

