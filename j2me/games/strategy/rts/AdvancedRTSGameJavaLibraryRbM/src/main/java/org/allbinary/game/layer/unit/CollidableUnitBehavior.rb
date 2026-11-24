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

require "java/lang/JavaOverload"
require "org/allbinary/game/layer/SteeringVisitor"
require "org/allbinary/game/layer/CollidableRTSBehavior"

module ::Org; module Allbinary; module Game; module Layer; module Unit

class CollidableUnitBehavior < ::Org::Allbinary::Game::Layer::CollidableRTSBehavior
    attr_accessor :layerPartialCellPositionsUtil, :simpleSteeringVisitor
    class SimpleSteeringVisitor < ::Org::Allbinary::Game::Layer::SteeringVisitor
        

        def visit(anyType)
            logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
            begin
                ownerLayer = anyType
                if self.getList().size() > 0
                    allbinaryLayer = self.getList().get(0)
                    clear = self.steer(ownerLayer, allbinaryLayer)
                    if clear
                        self.getList().clear()
                        return ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT
                    end
                    return ::Org::Allbinary::Logic::Java::Bool::BooleanFactory.getInstance().TRUE
                end
                return ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT
            rescue StandardError => e
                commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
                logUtil.put(commonStrings.EXCEPTION, self, "visit", e)
                return ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT
            end
        end
        java_overload :visit, 1
    end

    def jfields_org_allbinary_game_layer_unit_CollidableUnitBehavior
        @layerPartialCellPositionsUtil = ::Org::Allbinary::Game::Layer::Geographic::Map::LayerPartialCellPositionsUtil.getInstance()
        @simpleSteeringVisitor = SimpleSteeringVisitor.new()
    end
    

    def initialize(collidable)
        super(collidable)
        jfields_org_allbinary_game_layer_unit_CollidableUnitBehavior
    end
    

    # throws Exception
    def collideNone(ownerLayer, collidableInterfaceCompositeInterface)
        self.chase(ownerLayer, collidableInterfaceCompositeInterface)
        rtsLayer = collidableInterfaceCompositeInterface
        if rtsLayer.getType() == UnitLayer.getStaticType()
            self.collideUnit(ownerLayer, rtsLayer)
        end
    end
    java_overload :collideNone, 2
    

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
            ownerUnitLayer.getGameKeyEventList().add(::Org::Allbinary::Game::Input::Event::GameKeyEventFactory.getInstance().getInstanceForKey(ownerUnitLayer, ::Javax::Microedition::Lcdui::Canvas::RIGHT))
            return false
        end
        raise StandardError.new("Error")
    end
    java_overload :steer, 2
    

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
    java_overload :chase, 2
    

    # throws Exception
    def collideUnit(ownerLayer, unitLayer)
        ownerUnitLayer = ownerLayer
        partialPositionList = UnitLayer.getPartialpositionlist()
        geographicMapCompositeInterface = ownerUnitLayer.allBinaryGameLayerManagerP
        geographicMapInterface = geographicMapCompositeInterface.getGeographicMapInterface()[0]
        basicGeographicMap = geographicMapInterface
        dropCellPositionHistory = ::Org::Allbinary::Media::Graphics::Geography::Map::Drop::DropCellPositionHistory.getInstance()
        tiledLayerUtil = ::Org::Allbinary::Game::Layer::TiledLayerUtil.getInstance()
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
    java_overload :collideUnit, 2
end

module ::Javax; module Microedition; module Lcdui; autoload :Canvas, "javax/microedition/lcdui/Canvas" unless const_defined?(:Canvas, false); end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :AdvancedRTSGameLayer, "org/allbinary/game/layer/AdvancedRTSGameLayer" unless const_defined?(:AdvancedRTSGameLayer, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :CollidableCompositeLayer, "org/allbinary/game/layer/CollidableCompositeLayer" unless const_defined?(:CollidableCompositeLayer, false); end; end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Game; module Input; module Event; autoload :GameKeyEventFactory, "org/allbinary/game/input/event/GameKeyEventFactory" unless const_defined?(:GameKeyEventFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :AllBinaryTiledLayer, "org/allbinary/game/layer/AllBinaryTiledLayer" unless const_defined?(:AllBinaryTiledLayer, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :TiledLayerUtil, "org/allbinary/game/layer/TiledLayerUtil" unless const_defined?(:TiledLayerUtil, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Geographic; module Map; autoload :LayerPartialCellPositionsUtil, "org/allbinary/game/layer/geographic/map/LayerPartialCellPositionsUtil" unless const_defined?(:LayerPartialCellPositionsUtil, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :NullUtil, "org/allbinary/logic/NullUtil" unless const_defined?(:NullUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Java; module Bool; autoload :BooleanFactory, "org/allbinary/logic/java/bool/BooleanFactory" unless const_defined?(:BooleanFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module MathPackage; autoload :AngleInfo, "org/allbinary/math/AngleInfo" unless const_defined?(:AngleInfo, false); end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :BasicGeographicMap, "org/allbinary/media/graphics/geography/map/BasicGeographicMap" unless const_defined?(:BasicGeographicMap, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCompositeInterface, "org/allbinary/media/graphics/geography/map/GeographicMapCompositeInterface" unless const_defined?(:GeographicMapCompositeInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; module Drop; autoload :DropCellPositionHistory, "org/allbinary/media/graphics/geography/map/drop/DropCellPositionHistory" unless const_defined?(:DropCellPositionHistory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
autoload :UnitLayer, "org/allbinary/game/layer/unit/UnitLayer" unless const_defined?(:UnitLayer, false)

end; end; end; end; end

