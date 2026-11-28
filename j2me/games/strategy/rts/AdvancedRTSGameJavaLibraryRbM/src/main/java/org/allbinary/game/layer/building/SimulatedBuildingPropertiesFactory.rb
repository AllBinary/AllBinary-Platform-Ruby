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

require "java/lang/JavaOverload"
require "org/allbinary/game/layer/building/BuildingPropertiesFactory"

module ::Org; module Allbinary; module Game; module Layer; module Building

class SimulatedBuildingPropertiesFactory < BuildingPropertiesFactory
    

    def self.getInstance()
        return @@instanceC
    end
    

    def getEfficiencyPerLevel(buildingLayer)
        return 0
    end
    java_overload :getEfficiencyPerLevel, 1
    

    def getDamageFloaters(buildingLayer)
        damageFloaters = ::Org::Allbinary::Game::Combat::Damage::DamageFloaters.getInstance()
        @damageFloatersPaintableInterface = damageFloaters
        return damageFloaters
    end
    java_overload :getDamageFloaters, 1
    

    # throws Exception
    def getHealthBar(buildingLayer)
        return ::Org::Allbinary::Graphics::Paint::NullPaintable.getInstance()
    end
    java_overload :getHealthBar, 1
    

    def getHashtable()
        return ::Org::Allbinary::Logic::StdUtil.getInstance().NULL_TABLE
    end
    java_overload :getHashtable, 0
    

    def getTrackingEvent(buildingLayer)
        return ::Org::Allbinary::Game::Tracking::TrackingEvent.new(::Org::Allbinary::Game::Tracking::TrackingEventHandler.getInstance())
    end
    java_overload :getTrackingEvent, 1

    def self.instanceC()
        SimulatedBuildingPropertiesFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instanceC) ? @@instanceC : nil
    end

    def self.instanceC=(value)
        SimulatedBuildingPropertiesFactory.java_static_fields unless @java_static_fields_started
        @@instanceC = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instanceC = SimulatedBuildingPropertiesFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "SimulatedBuildingPropertiesFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Game; module Combat; module Damage; autoload :DamageFloaters, "org/allbinary/game/combat/damage/DamageFloaters" unless const_defined?(:DamageFloaters, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Tracking; autoload :TrackingEvent, "org/allbinary/game/tracking/TrackingEvent" unless const_defined?(:TrackingEvent, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Tracking; autoload :TrackingEventHandler, "org/allbinary/game/tracking/TrackingEventHandler" unless const_defined?(:TrackingEventHandler, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Paint; autoload :NullPaintable, "org/allbinary/graphics/paint/NullPaintable" unless const_defined?(:NullPaintable, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Paint; autoload :Paintable, "org/allbinary/graphics/paint/Paintable" unless const_defined?(:Paintable, false); end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :ABHashtable, "org/allbinary/util/ABHashtable" unless const_defined?(:ABHashtable, false); end; end; end
autoload :BuildingLayer, "org/allbinary/game/layer/building/BuildingLayer" unless const_defined?(:BuildingLayer, false)

begin
    SimulatedBuildingPropertiesFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

