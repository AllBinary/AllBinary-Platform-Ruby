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

require "org/allbinary/game/input/form/BuildingRTSFormInput"

class BuildingAdvancedRTSFormInput < BuildingRTSFormInput
    attr_accessor :atLeastOneHouseGameNotificationEvent, :BUILD_BUILDING_RTS_LAYER_EVENT

    def initialize_fields
        @atLeastOneHouseGameNotificationEvent = nil
        @BUILD_BUILDING_RTS_LAYER_EVENT = RTSLayerEvent.new(NullPathFindingLayer::NULL_PATH_FINDING_LAYER)
    end
    

    def initialize(groupInterface, isUnitProducer)
        super(groupInterface, isUnitProducer)
        initialize_fields
        basicColorFactory = BasicColorFactory.getInstance()
        @atLeastOneHouseGameNotificationEvent = GameNotificationEvent.new(self, "Build At Least One House First", SmallIntegerSingletonFactory.getInstance().getAt(2), basicColorFactory.WHITE, BooleanFactory.getInstance().FALSE)
    end
    

    # throws Exception
    def setAllBinaryGameLayerManager(allBinaryGameLayerManager)
        super(allBinaryGameLayerManager)
        geographicMapCompositeInterface = allBinaryGameLayerManager
        geographicMapInterface = geographicMapCompositeInterface.getGeographicMapInterface()[0]
        @atLeastOneHouseGameNotificationEvent.setBasicColorP(geographicMapInterface.getForegroundBasicColor())
    end
    

    def isPositionBlocked()
        if DropCellPositionHistory.getInstance().isCellPositionWithDrop(self.getSelectedGeographicCellPosition()) || WaypointCellPositionHistory.getInstance().isCellPositionWithDrop(self.getSelectedGeographicCellPosition())
            return true
        else
            return false
        end
    end
    

    # throws Exception
    def isBuildAttemptValid(rtsPlayerLayerInterface, layerInterface)
        advancedRTSPlayerLayerInterface = rtsPlayerLayerInterface
        advancedPlayerOwnedRTSLayers = advancedRTSPlayerLayerInterface.getAdvancedPlayerOwnedRTSLayers()
        totalHouses = advancedPlayerOwnedRTSLayers.getHouseList().size()
        if totalHouses < 1 && layerInterface.getName().indexOf(" House") < 0
            rtsPlayerLayerInterface.add(ErrorSound.getInstance())
            if !rtsPlayerLayerInterface.implmentsArtificialIntelligenceCompositeInterface()
                GameNotificationEventHandler.getInstance().fireEvent(@atLeastOneHouseGameNotificationEvent)
            end
            return false
        end
        return super(rtsPlayerLayerInterface, layerInterface)
    end
    

    # throws Exception
    def add(rtsPlayerLayerInterface, layerManager, layerInterface)
        @BUILD_BUILDING_RTS_LAYER_EVENT.setRtsLayer(layerInterface)
        BuildingEventHandler.getInstance().fireEvent(@BUILD_BUILDING_RTS_LAYER_EVENT)
        if (rtsPlayerLayerInterface).isLocalPlayer()
            LocalPlayerBuildingEventHandler.getInstance().fireEvent(@BUILD_BUILDING_RTS_LAYER_EVENT)
        end
        super(rtsPlayerLayerInterface, layerManager, layerInterface)
    end
end

require "org/allbinary/game/layer/AdvancedPlayerOwnedRTSLayers"
require "org/allbinary/game/layer/AdvancedRTSPlayerLayerInterface"
require "org/allbinary/game/layer/RTSLayer"
require "org/allbinary/game/layer/RTSLayerEvent"
require "org/allbinary/game/layer/RTSPlayerLayerInterface"
require "org/allbinary/game/layer/building/event/BuildingEventHandler"
require "org/allbinary/game/layer/building/event/LocalPlayerBuildingEventHandler"
require "org/allbinary/game/layer/waypoint/WaypointCellPositionHistory"
require "org/allbinary/logic/java/bool/BooleanFactory"
require "org/allbinary/game/identification/Group"
require "org/allbinary/game/layer/AllBinaryGameLayerManager"
require "org/allbinary/game/layer/NullPathFindingLayer"
require "org/allbinary/game/layer/hud/event/GameNotificationEvent"
require "org/allbinary/game/layer/hud/event/GameNotificationEventHandler"
require "org/allbinary/graphics/color/BasicColorFactory"
require "org/allbinary/layer/AllBinaryLayerManager"
require "org/allbinary/logic/math/SmallIntegerSingletonFactory"
require "org/allbinary/media/audio/ErrorSound"
require "org/allbinary/media/graphics/geography/map/BasicGeographicMap"
require "org/allbinary/media/graphics/geography/map/GeographicMapCompositeInterface"
require "org/allbinary/media/graphics/geography/map/drop/DropCellPositionHistory"

