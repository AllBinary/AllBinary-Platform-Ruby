# 
# AllBinary Open License Version 1 
# Copyright (c) 2002 AllBinary 
#  
# By agreeing to this license you and any business entity you represent are 
# legally bound to the AllBinary Open License Version 1 legal agreement. 
#  
# You may obtain the AllBinary Open License Version 1 legal agreement from 
# AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
#  
# Created By: Travis Berthelot  
# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.game.input.form

require "java/lang/JavaOverload"
require "java/lang/JavaClass"
require "org/allbinary/game/input/form/BuildingRTSFormInput"

module ::Org; module Allbinary; module Game; module Input; module Form

class BuildingAdvancedRTSFormInput < BuildingRTSFormInput
    attr_accessor :atLeastOneHouseGameNotificationEvent, :BUILD_BUILDING_RTS_LAYER_EVENT

    def jfields_org_allbinary_game_input_form_BuildingAdvancedRTSFormInput
        @atLeastOneHouseGameNotificationEvent = nil unless instance_variable_defined?(:@atLeastOneHouseGameNotificationEvent)
        @BUILD_BUILDING_RTS_LAYER_EVENT = ::Org::Allbinary::Game::Layer::RTSLayerEvent.new(::Org::Allbinary::Game::Layer::NullPathFindingLayer::NULL_PATH_FINDING_LAYER)
    end
    

    def initialize(groupInterface, isUnitProducer)
        super(groupInterface, isUnitProducer)
        jfields_org_allbinary_game_input_form_BuildingAdvancedRTSFormInput
        basicColorFactory = ::Org::Allbinary::Graphics::Color::BasicColorFactory.getInstance()
        @atLeastOneHouseGameNotificationEvent = ::Org::Allbinary::Game::Layer::Hud::Event::GameNotificationEvent.new(self, "Build At Least One House First", ::Org::Allbinary::Logic::MathPackage::SmallIntegerSingletonFactory.getInstance().getAt(2), basicColorFactory.WHITE, ::Org::Allbinary::Logic::Java::Bool::BooleanFactory.getInstance().FALSE)
    end
    

    # throws Exception
    def setAllBinaryGameLayerManager(allBinaryGameLayerManager)
        BuildingAdvancedRTSFormInput.superclass.java_super_method(:setAllBinaryGameLayerManager, 1).bind(self).call(allBinaryGameLayerManager)
        geographicMapCompositeInterface = allBinaryGameLayerManager
        geographicMapInterface = geographicMapCompositeInterface.getGeographicMapInterface()[0]
        @atLeastOneHouseGameNotificationEvent.setBasicColorP(geographicMapInterface.getForegroundBasicColor())
    end
    java_overload :setAllBinaryGameLayerManager, 1
    

    def isPositionBlocked()
        if ::Org::Allbinary::Media::Graphics::Geography::Map::Drop::DropCellPositionHistory.getInstance().isCellPositionWithDrop(self.getSelectedGeographicCellPosition()) || ::Org::Allbinary::Game::Layer::Waypoint::WaypointCellPositionHistory.getInstance().isCellPositionWithDrop(self.getSelectedGeographicCellPosition())
            return true
        else
            return false
        end
    end
    java_overload :isPositionBlocked, 0
    

    # throws Exception
    def isBuildAttemptValid(rtsPlayerLayerInterface, layerInterface)
        advancedRTSPlayerLayerInterface = rtsPlayerLayerInterface
        advancedPlayerOwnedRTSLayers = advancedRTSPlayerLayerInterface.getAdvancedPlayerOwnedRTSLayers()
        totalHouses = advancedPlayerOwnedRTSLayers.getHouseList().size()
        if totalHouses < 1 && layerInterface.getName().indexOf(" House") < 0
            rtsPlayerLayerInterface.add(::Org::Allbinary::Media::Audio::ErrorSound.getInstance())
            if !rtsPlayerLayerInterface.implmentsArtificialIntelligenceCompositeInterface()
                ::Org::Allbinary::Game::Layer::Hud::Event::GameNotificationEventHandler.getInstance().fireEvent(@atLeastOneHouseGameNotificationEvent)
            end
            return false
        end
        return BuildingAdvancedRTSFormInput.superclass.java_super_method(:isBuildAttemptValid, 2).bind(self).call(rtsPlayerLayerInterface, layerInterface)
    end
    java_overload :isBuildAttemptValid, 2
    

    # throws Exception
    def add(rtsPlayerLayerInterface, layerManager, layerInterface)
        @BUILD_BUILDING_RTS_LAYER_EVENT.setRtsLayer(layerInterface)
        ::Org::Allbinary::Game::Layer::Building::Event::BuildingEventHandler.getInstance().fireEvent(@BUILD_BUILDING_RTS_LAYER_EVENT)
        if (rtsPlayerLayerInterface).isLocalPlayer()
            ::Org::Allbinary::Game::Layer::Building::Event::LocalPlayerBuildingEventHandler.getInstance().fireEvent(@BUILD_BUILDING_RTS_LAYER_EVENT)
        end
        BuildingAdvancedRTSFormInput.superclass.java_super_method(:add, 3).bind(self).call(rtsPlayerLayerInterface, layerManager, layerInterface)
    end
    java_overload :add, 3
end

module ::Org; module Allbinary; module Game; module Layer; autoload :AdvancedPlayerOwnedRTSLayers, "org/allbinary/game/layer/AdvancedPlayerOwnedRTSLayers" unless const_defined?(:AdvancedPlayerOwnedRTSLayers, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :AdvancedRTSPlayerLayerInterface, "org/allbinary/game/layer/AdvancedRTSPlayerLayerInterface" unless const_defined?(:AdvancedRTSPlayerLayerInterface, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :RTSLayer, "org/allbinary/game/layer/RTSLayer" unless const_defined?(:RTSLayer, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :RTSLayerEvent, "org/allbinary/game/layer/RTSLayerEvent" unless const_defined?(:RTSLayerEvent, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :RTSPlayerLayerInterface, "org/allbinary/game/layer/RTSPlayerLayerInterface" unless const_defined?(:RTSPlayerLayerInterface, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Building; module Event; autoload :BuildingEventHandler, "org/allbinary/game/layer/building/event/BuildingEventHandler" unless const_defined?(:BuildingEventHandler, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Building; module Event; autoload :LocalPlayerBuildingEventHandler, "org/allbinary/game/layer/building/event/LocalPlayerBuildingEventHandler" unless const_defined?(:LocalPlayerBuildingEventHandler, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Waypoint; autoload :WaypointCellPositionHistory, "org/allbinary/game/layer/waypoint/WaypointCellPositionHistory" unless const_defined?(:WaypointCellPositionHistory, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Java; module Bool; autoload :BooleanFactory, "org/allbinary/logic/java/bool/BooleanFactory" unless const_defined?(:BooleanFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Identification; autoload :Group, "org/allbinary/game/identification/Group" unless const_defined?(:Group, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :AllBinaryGameLayerManager, "org/allbinary/game/layer/AllBinaryGameLayerManager" unless const_defined?(:AllBinaryGameLayerManager, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :NullPathFindingLayer, "org/allbinary/game/layer/NullPathFindingLayer" unless const_defined?(:NullPathFindingLayer, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Hud; module Event; autoload :GameNotificationEvent, "org/allbinary/game/layer/hud/event/GameNotificationEvent" unless const_defined?(:GameNotificationEvent, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Hud; module Event; autoload :GameNotificationEventHandler, "org/allbinary/game/layer/hud/event/GameNotificationEventHandler" unless const_defined?(:GameNotificationEventHandler, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColorFactory, "org/allbinary/graphics/color/BasicColorFactory" unless const_defined?(:BasicColorFactory, false); end; end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayerManager, "org/allbinary/layer/AllBinaryLayerManager" unless const_defined?(:AllBinaryLayerManager, false); end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :SmallIntegerSingletonFactory, "org/allbinary/logic/math/SmallIntegerSingletonFactory" unless const_defined?(:SmallIntegerSingletonFactory, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Audio; autoload :ErrorSound, "org/allbinary/media/audio/ErrorSound" unless const_defined?(:ErrorSound, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :BasicGeographicMap, "org/allbinary/media/graphics/geography/map/BasicGeographicMap" unless const_defined?(:BasicGeographicMap, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCompositeInterface, "org/allbinary/media/graphics/geography/map/GeographicMapCompositeInterface" unless const_defined?(:GeographicMapCompositeInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; module Drop; autoload :DropCellPositionHistory, "org/allbinary/media/graphics/geography/map/drop/DropCellPositionHistory" unless const_defined?(:DropCellPositionHistory, false); end; end; end; end; end; end; end

end; end; end; end; end

