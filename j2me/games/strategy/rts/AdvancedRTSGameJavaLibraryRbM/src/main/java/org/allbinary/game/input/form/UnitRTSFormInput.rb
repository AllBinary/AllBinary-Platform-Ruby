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

require "org/allbinary/game/input/form/RTSFormInput"

class UnitRTSFormInput < RTSFormInput
    attr_accessor :noMoneyGameNotificationEvent, :newUnitGameNotificationEvent

    def initialize_fields
        @noMoneyGameNotificationEvent = nil
        @newUnitGameNotificationEvent = nil
    end
    

    def initialize(groupInterface)
        super(groupInterface)
        initialize_fields
        smallIntegerSingletonFactory = SmallIntegerSingletonFactory.getInstance()
        basicColorFactory = BasicColorFactory.getInstance()
        @noMoneyGameNotificationEvent = GameNotificationEvent.new(self, RTSGameStrings.getInstance().NO_MONEY, smallIntegerSingletonFactory.getAt(2), basicColorFactory.WHITE, BooleanFactory.getInstance().FALSE)
        @newUnitGameNotificationEvent = GameNotificationEvent.new(self, RTSGameStrings.getInstance().NEW_UNIT, smallIntegerSingletonFactory.getAt(2), basicColorFactory.WHITE, BooleanFactory.getInstance().FALSE)
        self.getHashtable().put(WorkWaypoint::ID, smallIntegerSingletonFactory.getAt(50))
    end
    

    # throws Exception
    def setAllBinaryGameLayerManager(allBinaryGameLayerManager)
        super(allBinaryGameLayerManager)
        geographicMapCompositeInterface = allBinaryGameLayerManager
        geographicMapInterface = geographicMapCompositeInterface.getGeographicMapInterface()[0]
        @noMoneyGameNotificationEvent.setBasicColorP(geographicMapInterface.getForegroundBasicColor())
        @newUnitGameNotificationEvent.setBasicColorP(geographicMapInterface.getForegroundBasicColor())
    end
    

    # throws Exception
    def processGameSpecific(associatedRtsLayer, rtsPlayerLayerInterface, layerManager, item, itemIndex)
        self.class.superclass.instance_method(:process).bind(self).call(layerManager)
        associatedRtsLayer2 = associatedRtsLayer
        geographicMapCellPositionArea = associatedRtsLayer2.geographicMapCellPositionAreaBase
        geographicMapCellPosition = geographicMapCellPositionArea.getNextSurroundingGeographicMapCellPosition()
        self.getHashtable().put(Layer::ID, associatedRtsLayer)
        self.getHashtable().put(UnitRTSFormInput::DECAL_ID, (rtsPlayerLayerInterface).getDecalBasicColor())
        if @newUnconstructedRTSLayerInterfaceArray[itemIndex] == CollidableDestroyableDamageableLayer.getNullInstance()
            @newUnconstructedRTSLayerInterfaceArray[itemIndex] = self.getInstance(layerManager, item, geographicMapCellPosition)
        else
            cellPoint = geographicMapCellPosition.getPoint()
            rtsLayer = @newUnconstructedRTSLayerInterfaceArray[itemIndex]
            rtsLayer.setPosition(cellPoint.getX(), cellPoint.getY(), rtsLayer.getZP())
            geographicMapCompositeInterface = rtsLayer.allBinaryGameLayerManagerP
            geographicMapInterface = geographicMapCompositeInterface.getGeographicMapInterface()[0]
            rtsLayer.geographicMapCellPositionAreaBase.update(geographicMapInterface)
        end
        cellPoint = geographicMapCellPosition.getMidPoint()
        rtsLayer = @newUnconstructedRTSLayerInterfaceArray[itemIndex]
        rtsLayer.setPosition(cellPoint.getX() - rtsLayer.getHalfWidth(), cellPoint.getY() - rtsLayer.getHalfHeight(), rtsLayer.getZP())
        self.attemptBuild(associatedRtsLayer2, rtsPlayerLayerInterface, layerManager, rtsLayer, itemIndex)
    end
    

    # throws Exception
    def attemptBuild(associatedRtsLayer, rtsPlayerLayerInterface, layerManager, layerInterface, itemIndex)
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
            rtsPlayerLayerInterface.add(BuildingSound.getInstance())
            capital.removeMoney(cost)
            AssignWaypointsUtil.getInstance().set(layerInterface, associatedRtsLayer)
            layerManager.appendAt(layerInterface, PlayersSingletonFactory.total)
            advancedRTSPlayerLayerInterface = rtsPlayerLayerInterface
            advancedPlayerOwnedRTSLayers = advancedRTSPlayerLayerInterface.getAdvancedPlayerOwnedRTSLayers()
            advancedPlayerOwnedRTSLayers.addUnit(layerInterface)
            if !rtsPlayerLayerInterface.implmentsArtificialIntelligenceCompositeInterface()
                GameNotificationEventHandler.getInstance().fireEvent(@newUnitGameNotificationEvent)
            end
        else
            rtsPlayerLayerInterface.add(ErrorSound.getInstance())
            if !rtsPlayerLayerInterface.implmentsArtificialIntelligenceCompositeInterface()
                GameNotificationEventHandler.getInstance().fireEvent(@noMoneyGameNotificationEvent)
            end
        end
    end
end

require "org/allbinary/graphics/form/item/ABCustomItem"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/game/layer/AdvancedPlayerOwnedRTSLayers"
require "org/allbinary/game/layer/AdvancedRTSGameLayer"
require "org/allbinary/game/layer/AdvancedRTSPlayerLayerInterface"
require "org/allbinary/game/layer/RTSGameStrings"
require "org/allbinary/game/layer/RTSLayer"
require "org/allbinary/game/layer/RTSPlayerLayerInterface"
require "org/allbinary/game/layer/capital/Capital"
require "org/allbinary/game/layer/unit/UnitLayer"
require "org/allbinary/game/layer/waypoint/WorkWaypoint"
require "org/allbinary/media/audio/BuildingSound"
require "org/allbinary/logic/java/bool/BooleanFactory"
require "org/allbinary/game/identification/Group"
require "org/allbinary/game/layer/AllBinaryGameLayerManager"
require "org/allbinary/game/layer/GeographicMapCellPositionAreaBase"
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
require "org/allbinary/media/graphics/geography/map/GeographicMapCompositeInterface"
require "org/allbinary/game/input/form/AssignWaypointsUtil"
require "org/allbinary/game/input/form/PlayersSingletonFactory"

class UnitRTSFormInput
    DECAL_ID = SmallIntegerSingletonFactory.getInstance().getAt(23)
end

