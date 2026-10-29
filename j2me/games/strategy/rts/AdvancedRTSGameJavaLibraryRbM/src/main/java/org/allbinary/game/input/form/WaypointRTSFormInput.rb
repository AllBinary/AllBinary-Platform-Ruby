# 
# AllBinary Open License Version 1 
# Copyright (c) 2006 AllBinary 
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
# package org.allbinary.game.input.form

require "org/allbinary/game/input/form/RTSFormInput"

class WaypointRTSFormInput < RTSFormInput
    attr_accessor :WAYPOINT_EVENT, :dragToSpotGameNotificationEvent, :spotTakenGameNotificationEvent, :buildingCollisionGameNotificationEvent, :roadCollisionGameNotificationEvent, :newWaypointGameNotificationEvent, :noMoneyGameNotificationEvent, :isPrimaryWaypointCreator, :stickyAssociatedRtsLayer

    def initialize_fields
        @WAYPOINT_EVENT = RTSLayerEvent.new(NullRTSLayer::NULL_RTS_LAYER)
        @dragToSpotGameNotificationEvent = nil
        @spotTakenGameNotificationEvent = nil
        @buildingCollisionGameNotificationEvent = nil
        @roadCollisionGameNotificationEvent = nil
        @newWaypointGameNotificationEvent = nil
        @noMoneyGameNotificationEvent = nil
        @isPrimaryWaypointCreator = nil
        @stickyAssociatedRtsLayer = NullPathFindingLayer::NULL_PATH_FINDING_LAYER
    end
    

    def initialize(groupInterface, isPrimaryWaypointCreator)
        super(groupInterface)
        initialize_fields
        @isPrimaryWaypointCreator = isPrimaryWaypointCreator
        smallIntegerSingletonFactory = SmallIntegerSingletonFactory.getInstance()
        basicColorFactory = BasicColorFactory.getInstance()
        @dragToSpotGameNotificationEvent = GameNotificationEvent.new(self, RTSGameStrings.getInstance().DRAG_TO_SPOT, smallIntegerSingletonFactory.getAt(2), basicColorFactory.WHITE, BooleanFactory.getInstance().FALSE)
        @spotTakenGameNotificationEvent = GameNotificationEvent.new(self, RTSGameStrings.getInstance().SPOT_TAKEN, smallIntegerSingletonFactory.getAt(2), basicColorFactory.WHITE, BooleanFactory.getInstance().FALSE)
        @buildingCollisionGameNotificationEvent = GameNotificationEvent.new(self, RTSGameStrings.getInstance().BUILDING_COLLISION, smallIntegerSingletonFactory.getAt(2), basicColorFactory.WHITE, BooleanFactory.getInstance().FALSE)
        @roadCollisionGameNotificationEvent = GameNotificationEvent.new(self, RTSGameStrings.getInstance().ROAD_COLLISION, smallIntegerSingletonFactory.getAt(2), basicColorFactory.WHITE, BooleanFactory.getInstance().FALSE)
        @newWaypointGameNotificationEvent = GameNotificationEvent.new(self, RTSGameStrings.getInstance().NEW_WAYPOINT, smallIntegerSingletonFactory.getAt(2), basicColorFactory.WHITE, BooleanFactory.getInstance().FALSE)
        @noMoneyGameNotificationEvent = GameNotificationEvent.new(self, RTSGameStrings.getInstance().NO_MONEY, smallIntegerSingletonFactory.getAt(2), basicColorFactory.WHITE, BooleanFactory.getInstance().FALSE)
    end
    

    # throws Exception
    def setAllBinaryGameLayerManager(allBinaryGameLayerManager)
        super(allBinaryGameLayerManager)
        geographicMapCompositeInterface = allBinaryGameLayerManager
        geographicMapInterface = geographicMapCompositeInterface.getGeographicMapInterface()[0]
        @dragToSpotGameNotificationEvent.setBasicColorP(geographicMapInterface.getForegroundBasicColor())
        @spotTakenGameNotificationEvent.setBasicColorP(geographicMapInterface.getForegroundBasicColor())
        @buildingCollisionGameNotificationEvent.setBasicColorP(geographicMapInterface.getForegroundBasicColor())
        @roadCollisionGameNotificationEvent.setBasicColorP(geographicMapInterface.getForegroundBasicColor())
        @newWaypointGameNotificationEvent.setBasicColorP(geographicMapInterface.getForegroundBasicColor())
        @noMoneyGameNotificationEvent.setBasicColorP(geographicMapInterface.getForegroundBasicColor())
    end
    

    # throws Exception
    def processAtPoint(associatedRtsLayer, rtsPlayerLayerInterface, layerManager, point)
        self.class.superclass.instance_method(:process).bind(self).call(layerManager)
        if self.isStickyItemSelected() || associatedRtsLayer == CollidableDestroyableDamageableLayer.getNullInstance()
            if self.isStickyItemSelected() && associatedRtsLayer == CollidableDestroyableDamageableLayer.getNullInstance()
                geographicMapCompositeInterface = layerManager
                geographicMapInterface = geographicMapCompositeInterface.getGeographicMapInterface()[0]
                allBinaryTiledLayer = geographicMapInterface.getAllBinaryTiledLayer()
                x = point.getX() + allBinaryTiledLayer.getXP()
                y = point.getY() + allBinaryTiledLayer.getYP()
                geographicMapCellPosition = geographicMapInterface.getCellPositionAtXY(x, y)
                self.processCellPosition(rtsPlayerLayerInterface, layerManager, geographicMapCellPosition)
            else
                if !rtsPlayerLayerInterface.implmentsArtificialIntelligenceCompositeInterface()
                    GameNotificationEventHandler.getInstance().fireEvent(@dragToSpotGameNotificationEvent)
                end
            end
        else
            if !rtsPlayerLayerInterface.implmentsArtificialIntelligenceCompositeInterface()
                GameNotificationEventHandler.getInstance().fireEvent(@spotTakenGameNotificationEvent)
            end
        end
    end
    

    # throws Exception
    def processCellPosition(rtsPlayerLayerInterface, layerManager, geographicMapCellPosition)
        itemIndex = self.getSelectedStickyItemIndex()
        if @newUnconstructedRTSLayerInterfaceArray[itemIndex] == CollidableDestroyableDamageableLayer.getNullInstance()
            @newUnconstructedRTSLayerInterfaceArray[itemIndex] = self.getInstance(layerManager, self.getSelectedStickyItem(), geographicMapCellPosition)
        else
            cellPoint = geographicMapCellPosition.getPoint()
            rtsLayer = @newUnconstructedRTSLayerInterfaceArray[itemIndex]
            rtsLayer.setPosition(cellPoint.getX(), cellPoint.getY(), rtsLayer.getZP())
            geographicMapCompositeInterface = rtsLayer.allBinaryGameLayerManagerP
            geographicMapInterface = geographicMapCompositeInterface.getGeographicMapInterface()[0]
            rtsLayer.geographicMapCellPositionAreaBase.update(geographicMapInterface)
        end
        self.attemptBuild(rtsPlayerLayerInterface, layerManager, @newUnconstructedRTSLayerInterfaceArray[itemIndex], itemIndex)
    end
    

    # throws Exception
    def processStickyGameSpecific(associatedRtsLayer, rtsPlayerLayerInterface, layerManager, item, index)
        @logUtil.putF("Set Sticking Item: " + (item).to_s, self, "processSticky")
        self.setSelectedStickyItem(item)
        self.setSelectedStickyItemIndex(index)
        self.setStickyItemSelected(true)
        @stickyAssociatedRtsLayer = associatedRtsLayer
        self.getHashtable().put(Layer::ID, associatedRtsLayer)
    end
    

    # throws Exception
    def attemptBuild(rtsPlayerLayerInterface, layerManager, layerInterface, itemIndex)
        @logUtil.putF("Layer: " + (layerInterface).to_s, self, "attemptBuild")
        if layerInterface == nil
            @logUtil.put("Layer was null", self, "attemptBuild", StandardError.new())
            return false
        end
        geographicMapCellPositionArea = layerInterface.geographicMapCellPositionAreaBase
        list = geographicMapCellPositionArea.getOccupyingGeographicMapCellPositionList()
        if DropCellPositionHistory.getInstance().anyCellPositionWithDrop(list) || WaypointCellPositionHistory.getInstance().anyCellPositionWithDrop(list)
            rtsPlayerLayerInterface.add(ErrorSound.getInstance())
            if !rtsPlayerLayerInterface.implmentsArtificialIntelligenceCompositeInterface()
                GameNotificationEventHandler.getInstance().fireEvent(@buildingCollisionGameNotificationEvent)
            end
            return false
        end
        geographicMapCompositeInterface = layerManager
        geographicMapInterface = geographicMapCompositeInterface.getGeographicMapInterface()[0]
        raceTrackGeographicMapCellTypeFactory = geographicMapInterface.getGeographicMapCellTypeFactory()
        geographicMapCellType = nil
        index = list.size()
        while (index -= 1) >= 0
            geographicMapCellType = geographicMapInterface.getCellTypeAt(list.get(index))
            if raceTrackGeographicMapCellTypeFactory.isPath(geographicMapCellType)
                rtsPlayerLayerInterface.add(ErrorSound.getInstance())
                if !rtsPlayerLayerInterface.implmentsArtificialIntelligenceCompositeInterface()
                    GameNotificationEventHandler.getInstance().fireEvent(@roadCollisionGameNotificationEvent)
                end
                return false
            end
        end
        cost = layerInterface.getCost()
        capital = rtsPlayerLayerInterface.getCapital()
        stringBuffer = StringMaker.new()
        stringBuffer.append("Trying to Build: ")
        stringBuffer.append(layerInterface.getName())
        stringBuffer.append(" for: $")
        stringBuffer.appendint(cost)
        stringBuffer.append(" with ")
        stringBuffer.appendint((capital.getTotalMoney()).to_i)
        @logUtil.putF(stringBuffer.to_s, self, "attemptBuild")
        if cost <= capital.getTotalMoney()
            layerInterface.construct(rtsPlayerLayerInterface)
            @newUnconstructedRTSLayerInterfaceArray[itemIndex] = CollidableDestroyableDamageableLayer.getNullInstance()
            capital.removeMoney(cost)
            WaypointCellPositionHistory.getInstance().addList(list, layerInterface)
            geographicMapCellPosition = geographicMapInterface.getCellPositionAtXY(layerInterface.getXP(), layerInterface.getYP())
            waypointLayer = layerInterface
            self.addWayPoint(waypointLayer)
            rtsPlayerGameInput = rtsPlayerLayerInterface.getPlayerGameInput()
            rtsPlayerGameInput.setSelectedRTSLayer(layerInterface, geographicMapCellPosition)
            advancedRTSPlayerLayerInterface = rtsPlayerLayerInterface
            advancedRTSPlayerLayerInterface.getAdvancedPlayerOwnedRTSLayers().addWaypoint(layerInterface)
            layerManager.append(layerInterface)
            waypointAvancedRTSGameLayer = waypointLayer
            rtsPlayerLayerInterface.add(waypointAvancedRTSGameLayer.getWaypointBehavior().getWaypoint().getSound())
            if !rtsPlayerLayerInterface.implmentsArtificialIntelligenceCompositeInterface()
                GameNotificationEventHandler.getInstance().fireEvent(@newWaypointGameNotificationEvent)
            end
            return true
        else
            rtsPlayerLayerInterface.add(ErrorSound.getInstance())
            if !rtsPlayerLayerInterface.implmentsArtificialIntelligenceCompositeInterface()
                GameNotificationEventHandler.getInstance().fireEvent(@noMoneyGameNotificationEvent)
            end
            return false
        end
    end
    

    # throws Exception
    def addWayPoint(layerInterface)
        stickyAssociatedAdvandedRtsLayer = @stickyAssociatedRtsLayer
        list = stickyAssociatedAdvandedRtsLayer.getWaypointBehavior().getOwnedWaypointList()
        RTSLayerUtil.getInstance().destroyAndClear(list)
        list.add(layerInterface)
        if @isPrimaryWaypointCreator
            PrimaryWaypointHelper.getInstance().setWaypointLayer(layerInterface)
        end
        @WAYPOINT_EVENT.setRtsLayer(layerInterface)
        WaypointEventHandlerFactory.getInstance(layerInterface.getGroupInterface()[0]).fireEvent(@WAYPOINT_EVENT)
    end
end

require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/game/input/RTSPlayerGameInput"
require "org/allbinary/game/layer/AdvancedRTSGameLayer"
require "org/allbinary/game/layer/AdvancedRTSPlayerLayerInterface"
require "org/allbinary/game/layer/RTSGameStrings"
require "org/allbinary/game/layer/RTSLayer"
require "org/allbinary/game/layer/RTSLayerEvent"
require "org/allbinary/game/layer/RTSLayerUtil"
require "org/allbinary/game/layer/RTSPlayerLayerInterface"
require "org/allbinary/game/layer/capital/Capital"
require "org/allbinary/game/layer/waypoint/WaypointCellPositionHistory"
require "org/allbinary/game/layer/waypoint/WaypointLayer"
require "org/allbinary/game/layer/waypoint/event/WaypointEventHandlerFactory"
require "org/allbinary/graphics/form/item/ABCustomItem"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/logic/java/bool/BooleanFactory"
require "org/allbinary/game/identification/Group"
require "org/allbinary/game/layer/AllBinaryGameLayerManager"
require "org/allbinary/game/layer/AllBinaryTiledLayer"
require "org/allbinary/game/layer/GeographicMapCellPositionAreaBase"
require "org/allbinary/game/layer/NullPathFindingLayer"
require "org/allbinary/game/layer/NullRTSLayer"
require "org/allbinary/game/layer/PathFindingLayerInterface"
require "org/allbinary/game/layer/hud/event/GameNotificationEvent"
require "org/allbinary/game/layer/hud/event/GameNotificationEventHandler"
require "org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer"
require "org/allbinary/graphics/GPoint"
require "org/allbinary/graphics/color/BasicColorFactory"
require "org/allbinary/layer/AllBinaryLayerManager"
require "org/allbinary/layer/Layer"
require "org/allbinary/logic/math/SmallIntegerSingletonFactory"
require "org/allbinary/media/audio/ErrorSound"
require "org/allbinary/media/graphics/geography/map/BasicGeographicMap"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellType"
require "org/allbinary/media/graphics/geography/map/GeographicMapCompositeInterface"
require "org/allbinary/media/graphics/geography/map/drop/DropCellPositionHistory"
require "org/allbinary/media/graphics/geography/map/racetrack/RaceTrackGeographicMapCellTypeFactory"
require "org/allbinary/game/input/form/PrimaryWaypointHelper"

