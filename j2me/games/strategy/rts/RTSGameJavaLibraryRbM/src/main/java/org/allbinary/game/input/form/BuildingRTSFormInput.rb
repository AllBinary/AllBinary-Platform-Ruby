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
# package org.allbinary.game.input.form

require "org/allbinary/game/input/form/RTSFormInput"

class BuildingRTSFormInput < RTSFormInput
    attr_accessor :isUnitProducer, :buildOnPathGameNotificationEvent, :spotTakenGameNotificationEvent, :selectBuildSpotGameNotificationEvent, :roadCollisionGameNotificationEvent, :noMoneyGameNotificationEvent, :buildingCollisionGameNotificationEvent, :structureToCloseCollisionGameNotificationEvent, :buildingGameNotificationEvent, :mapEdgeGameNotificationEvent, :dropCellPositionHistory

    def initialize_fields
        @isUnitProducer = nil
        @buildOnPathGameNotificationEvent = nil
        @spotTakenGameNotificationEvent = nil
        @selectBuildSpotGameNotificationEvent = nil
        @roadCollisionGameNotificationEvent = nil
        @noMoneyGameNotificationEvent = nil
        @buildingCollisionGameNotificationEvent = nil
        @structureToCloseCollisionGameNotificationEvent = nil
        @buildingGameNotificationEvent = nil
        @mapEdgeGameNotificationEvent = nil
        @dropCellPositionHistory = DropCellPositionHistory.getInstance()
    end
    

    def initialize(groupInterface, isUnitProducer)
        super(groupInterface)
        initialize_fields
        @isUnitProducer = isUnitProducer
        smallIntegerSingletonFactory = SmallIntegerSingletonFactory.getInstance()
        basicColorFactory = BasicColorFactory.getInstance()
        @buildOnPathGameNotificationEvent = GameNotificationEvent.new(self, RTSGameStrings.getInstance().BUILD_ON_PATH, smallIntegerSingletonFactory.getAt(2), basicColorFactory.PINK, BooleanFactory.getInstance().FALSE)
        @spotTakenGameNotificationEvent = GameNotificationEvent.new(self, RTSGameStrings.getInstance().SPOT_TAKEN, smallIntegerSingletonFactory.getAt(2), basicColorFactory.PINK, BooleanFactory.getInstance().FALSE)
        @selectBuildSpotGameNotificationEvent = GameNotificationEvent.new(self, RTSGameStrings.getInstance().SELECT_BUILD_SPOT, smallIntegerSingletonFactory.getAt(2), basicColorFactory.PINK, BooleanFactory.getInstance().FALSE)
        @roadCollisionGameNotificationEvent = GameNotificationEvent.new(self, RTSGameStrings.getInstance().ROAD_COLLISION, smallIntegerSingletonFactory.getAt(2), basicColorFactory.PINK, BooleanFactory.getInstance().FALSE)
        @noMoneyGameNotificationEvent = GameNotificationEvent.new(self, RTSGameStrings.getInstance().NO_MONEY, smallIntegerSingletonFactory.getAt(2), basicColorFactory.PINK, BooleanFactory.getInstance().FALSE)
        @buildingCollisionGameNotificationEvent = GameNotificationEvent.new(self, RTSGameStrings.getInstance().BUILDING_COLLISION, smallIntegerSingletonFactory.getAt(2), basicColorFactory.PINK, BooleanFactory.getInstance().FALSE)
        @structureToCloseCollisionGameNotificationEvent = GameNotificationEvent.new(self, RTSGameStrings.getInstance().STRUCTURE_TO_CLOSE, smallIntegerSingletonFactory.getAt(2), basicColorFactory.PINK, BooleanFactory.getInstance().FALSE)
        @buildingGameNotificationEvent = GameNotificationEvent.new(self, RTSGameStrings.getInstance().BUILDING, smallIntegerSingletonFactory.getAt(2), basicColorFactory.PINK, BooleanFactory.getInstance().FALSE)
        @mapEdgeGameNotificationEvent = GameNotificationEvent.new(self, RTSGameStrings.getInstance().MAP_EDGE, smallIntegerSingletonFactory.getAt(2), basicColorFactory.PINK, BooleanFactory.getInstance().FALSE)
    end
    

    # throws Exception
    def setAllBinaryGameLayerManager(allBinaryGameLayerManager)
        super(allBinaryGameLayerManager)
        geographicMapCompositeInterface = allBinaryGameLayerManager
        geographicMapInterface = geographicMapCompositeInterface.getGeographicMapInterface()[0]
        @buildOnPathGameNotificationEvent.setBasicColorP(geographicMapInterface.getForegroundBasicColor())
        @spotTakenGameNotificationEvent.setBasicColorP(geographicMapInterface.getForegroundBasicColor())
        @selectBuildSpotGameNotificationEvent.setBasicColorP(geographicMapInterface.getForegroundBasicColor())
        @roadCollisionGameNotificationEvent.setBasicColorP(geographicMapInterface.getForegroundBasicColor())
        @noMoneyGameNotificationEvent.setBasicColorP(geographicMapInterface.getForegroundBasicColor())
        @buildingCollisionGameNotificationEvent.setBasicColorP(geographicMapInterface.getForegroundBasicColor())
        @structureToCloseCollisionGameNotificationEvent.setBasicColorP(geographicMapInterface.getForegroundBasicColor())
        @buildingGameNotificationEvent.setBasicColorP(geographicMapInterface.getForegroundBasicColor())
        @mapEdgeGameNotificationEvent.setBasicColorP(geographicMapInterface.getForegroundBasicColor())
    end
    

    # throws Exception
    def processGameSpecific(associatedRtsLayer, rtsPlayerLayerInterface, layerManager, item, itemIndex)
        self.class.superclass.instance_method(:process).bind(self).call(layerManager)
        self.buildFromMotionInput(rtsPlayerLayerInterface, layerManager, item, itemIndex)
    end
    

    def isPositionBlocked()
        return @dropCellPositionHistory.isCellPositionWithDrop(self.getSelectedGeographicCellPosition())
    end
    

    def isDemoLocked(item)
        factoryItem = item
        layerInterfaceFactoryInterface = factoryItem.getLayerInterfaceFactoryInterface()
        if LockedUtil.getInstance().isLocked() && layerInterfaceFactoryInterface.isDemoLocked()
            return true
        else
            return false
        end
    end
    

    # throws Exception
    def buildFromMotionInput(rtsPlayerLayerInterface, layerManager, item, itemIndex)
        commonStrings = CommonStrings.getInstance()
        @logUtil.putF(commonStrings.START, self, "buildFromMotionInput")
        if layerManager == nil
            raise RuntimeError.new()
        end
        geographicMapCompositeInterface = layerManager
        geographicMapInterface = geographicMapCompositeInterface.getGeographicMapInterface()[0]
        if self.isDemoLocked(item)
            rtsPlayerLayerInterface.add(ErrorSound.getInstance())
            LockedFeatureNotificationUtil.getInstance().fireWithColor(geographicMapInterface.getForegroundBasicColor())
            return
        end
        geographicMapCellPosition = self.getSelectedGeographicCellPosition()
        if geographicMapCellPosition != SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
            if !self.isPositionBlocked()
                geographicMapCellType = geographicMapInterface.getCellTypeAt(geographicMapCellPosition)
                raceTrackGeographicMapCellTypeFactory = geographicMapInterface.getGeographicMapCellTypeFactory()
                if !raceTrackGeographicMapCellTypeFactory.isPath(geographicMapCellType)
                    if @newUnconstructedRTSLayerInterfaceArray[itemIndex] == CollidableDestroyableDamageableLayer.getNullInstance()
                        @newUnconstructedRTSLayerInterfaceArray[itemIndex] = self.getInstance(layerManager, item, geographicMapCellPosition)
                    else
                        rtsLayer = @newUnconstructedRTSLayerInterfaceArray[itemIndex]
                        cellPoint = geographicMapCellPosition.getPoint()
                        rtsLayer.setPosition(cellPoint.getX(), cellPoint.getY(), cellPoint.getZ())
                        rtsLayer.geographicMapCellPositionAreaBase.update(geographicMapInterface)
                    end
                    rtsLayer = @newUnconstructedRTSLayerInterfaceArray[itemIndex]
                    self.attemptBuild(rtsPlayerLayerInterface, layerManager, rtsLayer, itemIndex)
                else
                    rtsPlayerLayerInterface.add(ErrorSound.getInstance())
                    if !rtsPlayerLayerInterface.implmentsArtificialIntelligenceCompositeInterface()
                        GameNotificationEventHandler.getInstance().fireEvent(@buildOnPathGameNotificationEvent)
                    end
                end
            else
                rtsPlayerLayerInterface.add(ErrorSound.getInstance())
                if !rtsPlayerLayerInterface.implmentsArtificialIntelligenceCompositeInterface()
                    GameNotificationEventHandler.getInstance().fireEvent(@spotTakenGameNotificationEvent)
                end
            end
        else
            rtsPlayerLayerInterface.add(ErrorSound.getInstance())
            if !rtsPlayerLayerInterface.implmentsArtificialIntelligenceCompositeInterface()
                GameNotificationEventHandler.getInstance().fireEvent(@selectBuildSpotGameNotificationEvent)
            end
        end
    end
    

    # throws Exception
    def attemptBuild(rtsPlayerLayerInterface, layerManager, layerInterface, itemIndex)
        @logUtil.putF(StringMaker.new().append("Layer: ").append(StringUtil.getInstance().toString(layerInterface)).to_s, self, "attemptBuild")
        geographicMapCellPositionArea = layerInterface.geographicMapCellPositionAreaBase
        occupyList = geographicMapCellPositionArea.getOccupyingGeographicMapCellPositionList()
        if !self.isBuildAttemptValid(rtsPlayerLayerInterface, layerInterface)
            return false
        end
        geographicMapCellType = nil
        (occupyList.size() - 1).step(0, -(1)) do |index|
            geographicMapCompositeInterface = layerManager
            geographicMapInterface = geographicMapCompositeInterface.getGeographicMapInterface()[0]
            geographicMapCellType = geographicMapInterface.getCellTypeAt(occupyList.get(index))
            raceTrackGeographicMapCellTypeFactory = geographicMapInterface.getGeographicMapCellTypeFactory()
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
            self.add(rtsPlayerLayerInterface, layerManager, layerInterface)
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
    def isBuildAttemptValid(rtsPlayerLayerInterface, layerInterface)
        geographicMapCellPositionArea = layerInterface.geographicMapCellPositionAreaBase
        occupyList = geographicMapCellPositionArea.getOccupyingGeographicMapCellPositionList()
        if @dropCellPositionHistory.anyCellPositionWithDrop(occupyList)
            rtsPlayerLayerInterface.add(ErrorSound.getInstance())
            if !rtsPlayerLayerInterface.implmentsArtificialIntelligenceCompositeInterface()
                GameNotificationEventHandler.getInstance().fireEvent(@buildingCollisionGameNotificationEvent)
            end
            return false
        end
        if @isUnitProducer && @dropCellPositionHistory.anyCellPositionWithDrop(geographicMapCellPositionArea.getSurroundingGeographicMapCellPositionList())
            rtsPlayerLayerInterface.add(ErrorSound.getInstance())
            if !rtsPlayerLayerInterface.implmentsArtificialIntelligenceCompositeInterface()
                GameNotificationEventHandler.getInstance().fireEvent(@structureToCloseCollisionGameNotificationEvent)
            end
            return false
        else
            if self.isSurroundingCellsOffMap(layerInterface)
                rtsPlayerLayerInterface.add(ErrorSound.getInstance())
                if !rtsPlayerLayerInterface.implmentsArtificialIntelligenceCompositeInterface()
                    GameNotificationEventHandler.getInstance().fireEvent(@mapEdgeGameNotificationEvent)
                end
                return false
            end
        end
        return true
    end
    

    # throws Exception
    def add(rtsPlayerLayerInterface, layerManager, layerInterface)
        geographicMapCellPositionArea = layerInterface.geographicMapCellPositionAreaBase
        occupyList = geographicMapCellPositionArea.getOccupyingGeographicMapCellPositionList()
        @dropCellPositionHistory.addAll(occupyList, layerInterface)
        rtsPlayerGameInput = rtsPlayerLayerInterface.getPlayerGameInput()
        rtsPlayerGameInput.setSelectedRTSLayer(layerInterface, self.getSelectedGeographicCellPosition())
        layerManager.append(layerInterface)
        rtsPlayerLayerInterface.add(BuildingSound.getInstance())
        if !rtsPlayerLayerInterface.implmentsArtificialIntelligenceCompositeInterface()
            GameNotificationEventHandler.getInstance().fireEvent(@buildingGameNotificationEvent)
        end
    end
    

    def isSurroundingCellsOffMap(layerInterface)
        geographicMapCellPositionArea = layerInterface.geographicMapCellPositionAreaBase
        occupyList = geographicMapCellPositionArea.getOccupyingGeographicMapCellPositionList()
        surroundList = geographicMapCellPositionArea.getSurroundingGeographicMapCellPositionList()
        occupySize = occupyList.size()
        surroundSize = surroundList.size()
        stringBuffer = StringMaker.new()
        stringBuffer.append("occupySize: ")
        stringBuffer.appendint(occupySize)
        stringBuffer.append(" surroundSize: ")
        stringBuffer.appendint(surroundSize)
        stringBuffer.append(" surroundList: ")
        stringBuffer.append(StringUtil.getInstance().toString(surroundList))
        @logUtil.putF(stringBuffer.to_s, self, "isSurroundingCellsOffMap")
        isSurroundOffMap = false
        if occupySize == 1 && surroundSize != 8
            isSurroundOffMap = true
        elsif occupySize == 4 && surroundSize != 12
            isSurroundOffMap = true
        end
        if occupySize == 0 || isSurroundOffMap
            return true
        else
            return false
        end
    end
end

require "org/allbinary/game/input/RTSPlayerGameInput"
require "org/allbinary/game/layer/DemoLockedWithCostLayerInterfaceFactoryInterface"
require "org/allbinary/game/layer/GeographicMapCellPositionAreaBase"
require "org/allbinary/game/layer/RTSGameStrings"
require "org/allbinary/game/layer/RTSLayer"
require "org/allbinary/game/layer/RTSPlayerLayerInterface"
require "org/allbinary/game/layer/capital/Capital"
require "org/allbinary/game/layer/item/LayerInterfaceFactoryImageItem"
require "org/allbinary/graphics/form/item/ABCustomItem"
require "org/allbinary/media/audio/BuildingSound"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/java/bool/BooleanFactory"
require "org/allbinary/logic/system/security/licensing/LockedFeatureNotificationUtil"
require "org/allbinary/logic/system/security/licensing/LockedUtil"
require "org/allbinary/game/identification/Group"
require "org/allbinary/game/layer/AllBinaryGameLayerManager"
require "org/allbinary/game/layer/hud/event/GameNotificationEvent"
require "org/allbinary/game/layer/hud/event/GameNotificationEventHandler"
require "org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer"
require "org/allbinary/graphics/GPoint"
require "org/allbinary/graphics/color/BasicColorFactory"
require "org/allbinary/layer/AllBinaryLayerManager"
require "org/allbinary/logic/math/SmallIntegerSingletonFactory"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/media/audio/ErrorSound"
require "org/allbinary/media/graphics/geography/map/BasicGeographicMap"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellType"
require "org/allbinary/media/graphics/geography/map/GeographicMapCompositeInterface"
require "org/allbinary/media/graphics/geography/map/SimpleGeographicMapCellPositionFactory"
require "org/allbinary/media/graphics/geography/map/drop/DropCellPositionHistory"
require "org/allbinary/media/graphics/geography/map/racetrack/RaceTrackGeographicMapCellTypeFactory"

