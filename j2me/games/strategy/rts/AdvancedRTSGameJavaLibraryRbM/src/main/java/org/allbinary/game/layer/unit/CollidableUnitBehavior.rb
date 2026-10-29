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
# package org.allbinary.game.layer.unit

# require "javax/microedition/lcdui/Canvas"
require "org/allbinary/game/layer/SteeringVisitor"
require "org/allbinary/game/layer/CollidableRTSBehavior"

class CollidableUnitBehavior < CollidableRTSBehavior
    attr_accessor :layerPartialCellPositionsUtil, :simpleSteeringVisitor
    class SimpleSteeringVisitor < SteeringVisitor
        

        def visit(anyType)
            logUtil = LogUtil.getInstance()
            begin
                ownerLayer = anyType
                if self.getList().size() > 0
                    allbinaryLayer = self.getList().get(0)
                    clear = self.steer(ownerLayer, allbinaryLayer)
                    if clear
                        self.getList().clear()
                        return NullUtil.getInstance().NULL_OBJECT
                    end
                    return BooleanFactory.getInstance().TRUE
                end
                return NullUtil.getInstance().NULL_OBJECT
            rescue StandardError => e
                commonStrings = CommonStrings.getInstance()
                logUtil.put(commonStrings.EXCEPTION, self, "visit", e)
                return NullUtil.getInstance().NULL_OBJECT
            end
        end
    end

    def initialize_fields
        @layerPartialCellPositionsUtil = LayerPartialCellPositionsUtil.getInstance()
        @simpleSteeringVisitor = SimpleSteeringVisitor.new()
    end
    

    def initialize(collidable)
        super(collidable)
        initialize_fields
    end
    

    # throws Exception
    def collideNone(ownerLayer, collidableInterfaceCompositeInterface)
        self.chase(ownerLayer, collidableInterfaceCompositeInterface)
        rtsLayer = collidableInterfaceCompositeInterface
        if rtsLayer.getType() == UnitLayer.getStaticType()
            self.collideUnit(ownerLayer, rtsLayer)
        end
    end
    

    # throws Exception
    def steer(ownerLayer, collidableInterfaceCompositeInterface)
        ownerUnitLayer = ownerLayer
        unitLayer = collidableInterfaceCompositeInterface
        angleInfo2 = unitLayer.getRotationAnimationInterface().getAngleInfoP()
        angleInfo = ownerUnitLayer.getRotationAnimationInterface().getAngleInfoP()
        angle = angleInfo.getAngle() - angleInfo2.getAngle()
        if angle < 90 || angle > 270
            return true
        elsif angle >= 90 || angle <= 270
            ownerUnitLayer.getGameKeyEventList().add(GameKeyEventFactory.getInstance().getInstanceForKey(ownerUnitLayer, Canvas::RIGHT))
            return false
        end
        raise StandardError.new("Error")
    end
    

    # throws Exception
    def chase(ownerLayer, collidableInterfaceCompositeInterface)
        rtsLayer = collidableInterfaceCompositeInterface
        if rtsLayer.getType() == UnitLayer.getStaticType()
            if !@simpleSteeringVisitor.getList().contains(collidableInterfaceCompositeInterface)
                @simpleSteeringVisitor.getList().add(collidableInterfaceCompositeInterface)
            end
            ownerUnitLayer = ownerLayer
            list = ownerUnitLayer.getUnitWaypointBehavior().getSteeringVisitorList()
            if !list.contains(@simpleSteeringVisitor)
                list.add(@simpleSteeringVisitor)
            end
        end
    end
    

    # throws Exception
    def collideUnit(ownerLayer, unitLayer)
        ownerUnitLayer = ownerLayer
        partialPositionList = UnitLayer.getPartialpositionlist()
        geographicMapCompositeInterface = ownerUnitLayer.allBinaryGameLayerManagerP
        geographicMapInterface = geographicMapCompositeInterface.getGeographicMapInterface()[0]
        basicGeographicMap = geographicMapInterface
        dropCellPositionHistory = DropCellPositionHistory.getInstance()
        tiledLayerUtil = TiledLayerUtil.getInstance()
        tiledLayer = basicGeographicMap.getAllBinaryTiledLayer()
        if ownerLayer.getXP() < unitLayer.getXP() && ownerLayer.getX2() > unitLayer.getXP()
            diff = ownerLayer.getWidth() + 1
            @layerPartialCellPositionsUtil.getAllDXY(basicGeographicMap, ownerLayer, -diff, 0, partialPositionList)
            if !dropCellPositionHistory.anyCellPositionWithDrop(partialPositionList)
                x = unitLayer.getXP() - diff
                y = ownerLayer.getYP()
                x = tiledLayerUtil.keepOnMapX(tiledLayer, x, ownerLayer.getWidth())
                y = tiledLayerUtil.keepOnMapY(tiledLayer, y, ownerLayer.getHeight())
                ownerLayer.setPosition(x, y, ownerLayer.getZP())
            end
            @layerPartialCellPositionsUtil.getAllDXY(basicGeographicMap, unitLayer, diff, 0, partialPositionList)
            if !dropCellPositionHistory.anyCellPositionWithDrop(partialPositionList)
                x = unitLayer.getXP() + diff
                y = unitLayer.getYP()
                x = tiledLayerUtil.keepOnMapX(tiledLayer, x, unitLayer.getWidth())
                y = tiledLayerUtil.keepOnMapY(tiledLayer, y, unitLayer.getHeight())
                unitLayer.setPosition(x, y, unitLayer.getZP())
            end
        end
        if ownerLayer.getYP() < unitLayer.getYP() && ownerLayer.getY2() > unitLayer.getYP()
            diff = ownerLayer.getHeight() + 1
            @layerPartialCellPositionsUtil.getAllDXY(basicGeographicMap, ownerLayer, 0, -diff, partialPositionList)
            if !dropCellPositionHistory.anyCellPositionWithDrop(partialPositionList)
                x = ownerLayer.getXP()
                y = unitLayer.getYP() - diff
                x = tiledLayerUtil.keepOnMapX(tiledLayer, x, ownerLayer.getWidth())
                y = tiledLayerUtil.keepOnMapY(tiledLayer, y, ownerLayer.getHeight())
                ownerLayer.setPosition(x, y, ownerLayer.getZP())
            end
            @layerPartialCellPositionsUtil.getAllDXY(basicGeographicMap, unitLayer, 0, diff, partialPositionList)
            if !dropCellPositionHistory.anyCellPositionWithDrop(partialPositionList)
                x = unitLayer.getXP()
                y = unitLayer.getYP() + diff
                x = tiledLayerUtil.keepOnMapX(tiledLayer, x, unitLayer.getWidth())
                y = tiledLayerUtil.keepOnMapY(tiledLayer, y, unitLayer.getHeight())
                unitLayer.setPosition(x, y, unitLayer.getZP())
            end
        end
    end
end

require "org/allbinary/game/layer/AdvancedRTSGameLayer"
require "org/allbinary/game/layer/CollidableCompositeLayer"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/game/input/event/GameKeyEventFactory"
require "org/allbinary/game/layer/AllBinaryTiledLayer"
require "org/allbinary/game/layer/TiledLayerUtil"
require "org/allbinary/game/layer/geographic/map/LayerPartialCellPositionsUtil"
require "org/allbinary/logic/NullUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/java/bool/BooleanFactory"
require "org/allbinary/math/AngleInfo"
require "org/allbinary/media/graphics/geography/map/BasicGeographicMap"
require "org/allbinary/media/graphics/geography/map/GeographicMapCompositeInterface"
require "org/allbinary/media/graphics/geography/map/drop/DropCellPositionHistory"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/game/layer/unit/UnitLayer"

