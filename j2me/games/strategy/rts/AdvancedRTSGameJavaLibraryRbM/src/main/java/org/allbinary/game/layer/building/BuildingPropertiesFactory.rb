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


module ::Org; module Allbinary; module Game; module Layer; module Building

class BuildingPropertiesFactory
    attr_accessor :damageFloatersPaintableInterface

    def jfields_org_allbinary_game_layer_building_BuildingPropertiesFactory
        @damageFloatersPaintableInterface = ::Org::Allbinary::Graphics::Paint::NullPaintable.getInstance()
    end

    def initialize
        jfields_org_allbinary_game_layer_building_BuildingPropertiesFactory
    end
    

    def self.getInstance()
        return BuildingPropertiesFactory.instance
    end
    

    def getEfficiencyPerLevel(buildingLayer)
        return 10000 / buildingLayer.getMaxLevel() + 10000 % buildingLayer.getMaxLevel()
    end
    

    def getDamageFloaters(buildingLayer)
        damageFloaters = ::Org::Allbinary::Game::Combat::Damage::DamageFloaters.getInstance()
        if ::Org::Allbinary::Game::Configuration::Feature::Features.getInstance().isFeature(::Org::Allbinary::Game::Configuration::Feature::GameFeatureFactory.getInstance().DAMAGE_FLOATERS)
            damageFloaters = ::Org::Allbinary::Game::Combat::Damage::PtsDamageFloaters.new(buildingLayer)
            @damageFloatersPaintableInterface = damageFloaters
        else
            damageFloaters = ::Org::Allbinary::Game::Combat::Damage::DamageFloaters.new()
        end
        return damageFloaters
    end
    

    # throws Exception
    def getHealthBar(buildingLayer)
        healthBar = ::Org::Allbinary::Graphics::Paint::NullPaintable.getInstance()
        if ::Org::Allbinary::Game::Configuration::Feature::Features.getInstance().isFeature(::Org::Allbinary::Game::Configuration::Feature::GameFeatureFactory.getInstance().HEALTH_BARS)
            healthBar = ::Org::Allbinary::Game::Health::HealthBar.new(buildingLayer, buildingLayer.getHealthInterface(), ::Org::Allbinary::Game::Health::HealthBarTwodAnimation.new(buildingLayer, ::Org::Allbinary::Game::Graphics::Hud::BasicHudFactory.getInstance().BOTTOMLEFT), -1)
        end
        return healthBar
    end
    

    def getHashtable()
        return ::Org::Allbinary::Logic::StdUtil.getInstance().createHashtable()
    end
    

    def getTrackingEvent(buildingLayer)
        return ::Org::Allbinary::Game::Tracking::TrackingEvent.new(buildingLayer)
    end

    def self.instance()
        BuildingPropertiesFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        BuildingPropertiesFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = BuildingPropertiesFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "BuildingPropertiesFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Game; module Combat; module Damage; autoload :DamageFloaters, "org/allbinary/game/combat/damage/DamageFloaters" unless const_defined?(:DamageFloaters, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Combat; module Damage; autoload :PtsDamageFloaters, "org/allbinary/game/combat/damage/PtsDamageFloaters" unless const_defined?(:PtsDamageFloaters, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :Features, "org/allbinary/game/configuration/feature/Features" unless const_defined?(:Features, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :GameFeatureFactory, "org/allbinary/game/configuration/feature/GameFeatureFactory" unless const_defined?(:GameFeatureFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Graphics; module Hud; autoload :BasicHudFactory, "org/allbinary/game/graphics/hud/BasicHudFactory" unless const_defined?(:BasicHudFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Health; autoload :HealthBar, "org/allbinary/game/health/HealthBar" unless const_defined?(:HealthBar, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Health; autoload :HealthBarTwodAnimation, "org/allbinary/game/health/HealthBarTwodAnimation" unless const_defined?(:HealthBarTwodAnimation, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Tracking; autoload :TrackingEvent, "org/allbinary/game/tracking/TrackingEvent" unless const_defined?(:TrackingEvent, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Paint; autoload :NullPaintable, "org/allbinary/graphics/paint/NullPaintable" unless const_defined?(:NullPaintable, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Paint; autoload :Paintable, "org/allbinary/graphics/paint/Paintable" unless const_defined?(:Paintable, false); end; end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :ABHashtable, "org/allbinary/util/ABHashtable" unless const_defined?(:ABHashtable, false); end; end; end
autoload :BuildingLayer, "org/allbinary/game/layer/building/BuildingLayer" unless const_defined?(:BuildingLayer, false)

begin
    BuildingPropertiesFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

