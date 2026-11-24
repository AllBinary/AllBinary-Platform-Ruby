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

require "java/lang/JavaOverload"
require "java/lang/JavaClass"
require "org/allbinary/game/input/form/RTSFormInput"

module ::Org; module Allbinary; module Game; module Input; module Form

class WaypointRTSFormInput < RTSFormInput
    attr_accessor :WAYPOINT_EVENT, :dragToSpotGameNotificationEvent, :spotTakenGameNotificationEvent, :buildingCollisionGameNotificationEvent, :roadCollisionGameNotificationEvent, :newWaypointGameNotificationEvent, :noMoneyGameNotificationEvent, :isPrimaryWaypointCreator, :stickyAssociatedRtsLayer

    def jfields_org_allbinary_game_input_form_WaypointRTSFormInput
        @WAYPOINT_EVENT = ::Org::Allbinary::Game::Layer::RTSLayerEvent.new(::Org::Allbinary::Game::Layer::NullRTSLayer::NULL_RTS_LAYER)
        @dragToSpotGameNotificationEvent = nil unless instance_variable_defined?(:@dragToSpotGameNotificationEvent)
        @spotTakenGameNotificationEvent = nil unless instance_variable_defined?(:@spotTakenGameNotificationEvent)
        @buildingCollisionGameNotificationEvent = nil unless instance_variable_defined?(:@buildingCollisionGameNotificationEvent)
        @roadCollisionGameNotificationEvent = nil unless instance_variable_defined?(:@roadCollisionGameNotificationEvent)
        @newWaypointGameNotificationEvent = nil unless instance_variable_defined?(:@newWaypointGameNotificationEvent)
        @noMoneyGameNotificationEvent = nil unless instance_variable_defined?(:@noMoneyGameNotificationEvent)
        @isPrimaryWaypointCreator = nil unless instance_variable_defined?(:@isPrimaryWaypointCreator)
        @stickyAssociatedRtsLayer = ::Org::Allbinary::Game::Layer::NullPathFindingLayer::NULL_PATH_FINDING_LAYER
    end
    

    def initialize(groupInterface, isPrimaryWaypointCreator)
        super(groupInterface)
        jfields_org_allbinary_game_input_form_WaypointRTSFormInput
        @isPrimaryWaypointCreator = isPrimaryWaypointCreator
        smallIntegerSingletonFactory = ::Org::Allbinary::Logic::MathPackage::SmallIntegerSingletonFactory.getInstance()
        basicColorFactory = ::Org::Allbinary::Graphics::Color::BasicColorFactory.getInstance()
        @dragToSpotGameNotificationEvent = ::Org::Allbinary::Game::Layer::Hud::Event::GameNotificationEvent.new(self, ::Org::Allbinary::Game::Layer::RTSGameStrings.getInstance().DRAG_TO_SPOT, smallIntegerSingletonFactory.getAt(2), basicColorFactory.WHITE, ::Org::Allbinary::Logic::Java::Bool::BooleanFactory.getInstance().FALSE)
        @spotTakenGameNotificationEvent = ::Org::Allbinary::Game::Layer::Hud::Event::GameNotificationEvent.new(self, ::Org::Allbinary::Game::Layer::RTSGameStrings.getInstance().SPOT_TAKEN, smallIntegerSingletonFactory.getAt(2), basicColorFactory.WHITE, ::Org::Allbinary::Logic::Java::Bool::BooleanFactory.getInstance().FALSE)
        @buildingCollisionGameNotificationEvent = ::Org::Allbinary::Game::Layer::Hud::Event::GameNotificationEvent.new(self, ::Org::Allbinary::Game::Layer::RTSGameStrings.getInstance().BUILDING_COLLISION, smallIntegerSingletonFactory.getAt(2), basicColorFactory.WHITE, ::Org::Allbinary::Logic::Java::Bool::BooleanFactory.getInstance().FALSE)
        @roadCollisionGameNotificationEvent = ::Org::Allbinary::Game::Layer::Hud::Event::GameNotificationEvent.new(self, ::Org::Allbinary::Game::Layer::RTSGameStrings.getInstance().ROAD_COLLISION, smallIntegerSingletonFactory.getAt(2), basicColorFactory.WHITE, ::Org::Allbinary::Logic::Java::Bool::BooleanFactory.getInstance().FALSE)
        @newWaypointGameNotificationEvent = ::Org::Allbinary::Game::Layer::Hud::Event::GameNotificationEvent.new(self, ::Org::Allbinary::Game::Layer::RTSGameStrings.getInstance().NEW_WAYPOINT, smallIntegerSingletonFactory.getAt(2), basicColorFactory.WHITE, ::Org::Allbinary::Logic::Java::Bool::BooleanFactory.getInstance().FALSE)
        @noMoneyGameNotificationEvent = ::Org::Allbinary::Game::Layer::Hud::Event::GameNotificationEvent.new(self, ::Org::Allbinary::Game::Layer::RTSGameStrings.getInstance().NO_MONEY, smallIntegerSingletonFactory.getAt(2), basicColorFactory.WHITE, ::Org::Allbinary::Logic::Java::Bool::BooleanFactory.getInstance().FALSE)
    end
    

    # throws Exception
    def setAllBinaryGameLayerManager(allBinaryGameLayerManager)
        WaypointRTSFormInput.superclass.java_super_method(:setAllBinaryGameLayerManager, 1).bind(self).call(allBinaryGameLayerManager)
        geographicMapCompositeInterface = allBinaryGameLayerManager
        geographicMapInterface = geographicMapCompositeInterface.getGeographicMapInterface()[0]
        @dragToSpotGameNotificationEvent.setBasicColorP(geographicMapInterface.getForegroundBasicColor())
        @spotTakenGameNotificationEvent.setBasicColorP(geographicMapInterface.getForegroundBasicColor())
        @buildingCollisionGameNotificationEvent.setBasicColorP(geographicMapInterface.getForegroundBasicColor())
        @roadCollisionGameNotificationEvent.setBasicColorP(geographicMapInterface.getForegroundBasicColor())
        @newWaypointGameNotificationEvent.setBasicColorP(geographicMapInterface.getForegroundBasicColor())
        @noMoneyGameNotificationEvent.setBasicColorP(geographicMapInterface.getForegroundBasicColor())
    end
    java_overload :setAllBinaryGameLayerManager, 1
    

    # throws Exception
    def processAtPoint(associatedRtsLayer, rtsPlayerLayerInterface, layerManager, point)
        WaypointRTSFormInput.superclass.java_super_method(:process, 1).bind(self).call(layerManager)
        if self.isStickyItemSelected() || associatedRtsLayer == ::Org::Allbinary::Game::Layer::Special::CollidableDestroyableDamageableLayer.getNullInstance()
            if self.isStickyItemSelected() && associatedRtsLayer == ::Org::Allbinary::Game::Layer::Special::CollidableDestroyableDamageableLayer.getNullInstance()
                geographicMapCompositeInterface = layerManager
                geographicMapInterface = geographicMapCompositeInterface.getGeographicMapInterface()[0]
                allBinaryTiledLayer = geographicMapInterface.getAllBinaryTiledLayer()
                x = point.getX() + allBinaryTiledLayer.getXP()
                y = point.getY() + allBinaryTiledLayer.getYP()
                geographicMapCellPosition = geographicMapInterface.getCellPositionAtXY(x, y)
                self.processCellPosition(rtsPlayerLayerInterface, layerManager, geographicMapCellPosition)
            else
                if !rtsPlayerLayerInterface.implmentsArtificialIntelligenceCompositeInterface()
                    ::Org::Allbinary::Game::Layer::Hud::Event::GameNotificationEventHandler.getInstance().fireEvent(@dragToSpotGameNotificationEvent)
                end
            end
        else
            if !rtsPlayerLayerInterface.implmentsArtificialIntelligenceCompositeInterface()
                ::Org::Allbinary::Game::Layer::Hud::Event::GameNotificationEventHandler.getInstance().fireEvent(@spotTakenGameNotificationEvent)
            end
        end
    end
    java_overload :processAtPoint, 4
    

    # throws Exception
    def processCellPosition(rtsPlayerLayerInterface, layerManager, geographicMapCellPosition)
        itemIndex = self.getSelectedStickyItemIndex()
        if @newUnconstructedRTSLayerInterfaceArray[itemIndex] == ::Org::Allbinary::Game::Layer::Special::CollidableDestroyableDamageableLayer.getNullInstance()
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
    java_overload :processCellPosition, 3
    

    # throws Exception
    def processStickyGameSpecific(associatedRtsLayer, rtsPlayerLayerInterface, layerManager, item, index)
        @logUtil.putF("Set Sticking Item: " + (item).to_s, self, "processSticky")
        self.setSelectedStickyItem(item)
        self.setSelectedStickyItemIndex(index)
        self.setStickyItemSelected(true)
        @stickyAssociatedRtsLayer = associatedRtsLayer
        self.getHashtable().put(::Org::Allbinary::Layer::Layer::ID, associatedRtsLayer)
    end
    java_overload :processStickyGameSpecific, 5
    

    # throws Exception
    def attemptBuild(rtsPlayerLayerInterface, layerManager, layerInterface, itemIndex)
        @logUtil.putF("Layer: " + (layerInterface).to_s, self, "attemptBuild")
        if layerInterface == nil
            @logUtil.put("Layer was null", self, "attemptBuild", StandardError.new())
            return false
        end
        geographicMapCellPositionArea = layerInterface.geographicMapCellPositionAreaBase
        list = geographicMapCellPositionArea.getOccupyingGeographicMapCellPositionList()
        if ::Org::Allbinary::Media::Graphics::Geography::Map::Drop::DropCellPositionHistory.getInstance().anyCellPositionWithDrop(list) || ::Org::Allbinary::Game::Layer::Waypoint::WaypointCellPositionHistory.getInstance().anyCellPositionWithDrop(list)
            rtsPlayerLayerInterface.add(::Org::Allbinary::Media::Audio::ErrorSound.getInstance())
            if !rtsPlayerLayerInterface.implmentsArtificialIntelligenceCompositeInterface()
                ::Org::Allbinary::Game::Layer::Hud::Event::GameNotificationEventHandler.getInstance().fireEvent(@buildingCollisionGameNotificationEvent)
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
                rtsPlayerLayerInterface.add(::Org::Allbinary::Media::Audio::ErrorSound.getInstance())
                if !rtsPlayerLayerInterface.implmentsArtificialIntelligenceCompositeInterface()
                    ::Org::Allbinary::Game::Layer::Hud::Event::GameNotificationEventHandler.getInstance().fireEvent(@roadCollisionGameNotificationEvent)
                end
                return false
            end
        end
        cost = layerInterface.getCost()
        capital = rtsPlayerLayerInterface.getCapital()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append("Trying to Build: ")
        stringBuffer.append(layerInterface.getName())
        stringBuffer.append(" for: $")
        stringBuffer.appendint(cost)
        stringBuffer.append(" with ")
        stringBuffer.appendint(((capital.getTotalMoney()).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }))
        @logUtil.putF(stringBuffer.to_s, self, "attemptBuild")
        if cost <= capital.getTotalMoney()
            layerInterface.construct(rtsPlayerLayerInterface)
            @newUnconstructedRTSLayerInterfaceArray[itemIndex] = ::Org::Allbinary::Game::Layer::Special::CollidableDestroyableDamageableLayer.getNullInstance()
            capital.removeMoney(cost)
            ::Org::Allbinary::Game::Layer::Waypoint::WaypointCellPositionHistory.getInstance().addList(list, layerInterface)
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
                ::Org::Allbinary::Game::Layer::Hud::Event::GameNotificationEventHandler.getInstance().fireEvent(@newWaypointGameNotificationEvent)
            end
            return true
        else
            rtsPlayerLayerInterface.add(::Org::Allbinary::Media::Audio::ErrorSound.getInstance())
            if !rtsPlayerLayerInterface.implmentsArtificialIntelligenceCompositeInterface()
                ::Org::Allbinary::Game::Layer::Hud::Event::GameNotificationEventHandler.getInstance().fireEvent(@noMoneyGameNotificationEvent)
            end
            return false
        end
    end
    java_overload :attemptBuild, 4
    

    # throws Exception
    def addWayPoint(layerInterface)
        stickyAssociatedAdvandedRtsLayer = @stickyAssociatedRtsLayer
        list = stickyAssociatedAdvandedRtsLayer.getWaypointBehavior().getOwnedWaypointList()
        ::Org::Allbinary::Game::Layer::RTSLayerUtil.getInstance().destroyAndClear(list)
        list.add(layerInterface)
        if @isPrimaryWaypointCreator
            PrimaryWaypointHelper.getInstance().setWaypointLayer(layerInterface)
        end
        @WAYPOINT_EVENT.setRtsLayer(layerInterface)
        ::Org::Allbinary::Game::Layer::Waypoint::Event::WaypointEventHandlerFactory.getInstance(layerInterface.getGroupInterface()[0]).fireEvent(@WAYPOINT_EVENT)
    end
    java_overload :addWayPoint, 1
end

module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Input; autoload :RTSPlayerGameInput, "org/allbinary/game/input/RTSPlayerGameInput" unless const_defined?(:RTSPlayerGameInput, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :AdvancedRTSGameLayer, "org/allbinary/game/layer/AdvancedRTSGameLayer" unless const_defined?(:AdvancedRTSGameLayer, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :AdvancedRTSPlayerLayerInterface, "org/allbinary/game/layer/AdvancedRTSPlayerLayerInterface" unless const_defined?(:AdvancedRTSPlayerLayerInterface, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :RTSGameStrings, "org/allbinary/game/layer/RTSGameStrings" unless const_defined?(:RTSGameStrings, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :RTSLayer, "org/allbinary/game/layer/RTSLayer" unless const_defined?(:RTSLayer, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :RTSLayerEvent, "org/allbinary/game/layer/RTSLayerEvent" unless const_defined?(:RTSLayerEvent, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :RTSLayerUtil, "org/allbinary/game/layer/RTSLayerUtil" unless const_defined?(:RTSLayerUtil, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :RTSPlayerLayerInterface, "org/allbinary/game/layer/RTSPlayerLayerInterface" unless const_defined?(:RTSPlayerLayerInterface, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Capital; autoload :Capital, "org/allbinary/game/layer/capital/Capital" unless const_defined?(:Capital, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Waypoint; autoload :WaypointCellPositionHistory, "org/allbinary/game/layer/waypoint/WaypointCellPositionHistory" unless const_defined?(:WaypointCellPositionHistory, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Waypoint; autoload :WaypointLayer, "org/allbinary/game/layer/waypoint/WaypointLayer" unless const_defined?(:WaypointLayer, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Waypoint; module Event; autoload :WaypointEventHandlerFactory, "org/allbinary/game/layer/waypoint/event/WaypointEventHandlerFactory" unless const_defined?(:WaypointEventHandlerFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Form; module Item; autoload :ABCustomItem, "org/allbinary/graphics/form/item/ABCustomItem" unless const_defined?(:ABCustomItem, false); end; end; end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Logic; module Java; module Bool; autoload :BooleanFactory, "org/allbinary/logic/java/bool/BooleanFactory" unless const_defined?(:BooleanFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Identification; autoload :Group, "org/allbinary/game/identification/Group" unless const_defined?(:Group, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :AllBinaryGameLayerManager, "org/allbinary/game/layer/AllBinaryGameLayerManager" unless const_defined?(:AllBinaryGameLayerManager, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :AllBinaryTiledLayer, "org/allbinary/game/layer/AllBinaryTiledLayer" unless const_defined?(:AllBinaryTiledLayer, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :GeographicMapCellPositionAreaBase, "org/allbinary/game/layer/GeographicMapCellPositionAreaBase" unless const_defined?(:GeographicMapCellPositionAreaBase, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :NullPathFindingLayer, "org/allbinary/game/layer/NullPathFindingLayer" unless const_defined?(:NullPathFindingLayer, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :NullRTSLayer, "org/allbinary/game/layer/NullRTSLayer" unless const_defined?(:NullRTSLayer, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :PathFindingLayerInterface, "org/allbinary/game/layer/PathFindingLayerInterface" unless const_defined?(:PathFindingLayerInterface, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Hud; module Event; autoload :GameNotificationEvent, "org/allbinary/game/layer/hud/event/GameNotificationEvent" unless const_defined?(:GameNotificationEvent, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Hud; module Event; autoload :GameNotificationEventHandler, "org/allbinary/game/layer/hud/event/GameNotificationEventHandler" unless const_defined?(:GameNotificationEventHandler, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Special; autoload :CollidableDestroyableDamageableLayer, "org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer" unless const_defined?(:CollidableDestroyableDamageableLayer, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; autoload :GPoint, "org/allbinary/graphics/GPoint" unless const_defined?(:GPoint, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColorFactory, "org/allbinary/graphics/color/BasicColorFactory" unless const_defined?(:BasicColorFactory, false); end; end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayerManager, "org/allbinary/layer/AllBinaryLayerManager" unless const_defined?(:AllBinaryLayerManager, false); end; end; end
module ::Org; module Allbinary; module Layer; autoload :Layer, "org/allbinary/layer/Layer" unless const_defined?(:Layer, false); end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :SmallIntegerSingletonFactory, "org/allbinary/logic/math/SmallIntegerSingletonFactory" unless const_defined?(:SmallIntegerSingletonFactory, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Audio; autoload :ErrorSound, "org/allbinary/media/audio/ErrorSound" unless const_defined?(:ErrorSound, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :BasicGeographicMap, "org/allbinary/media/graphics/geography/map/BasicGeographicMap" unless const_defined?(:BasicGeographicMap, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellPosition, "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition" unless const_defined?(:GeographicMapCellPosition, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellType, "org/allbinary/media/graphics/geography/map/GeographicMapCellType" unless const_defined?(:GeographicMapCellType, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCompositeInterface, "org/allbinary/media/graphics/geography/map/GeographicMapCompositeInterface" unless const_defined?(:GeographicMapCompositeInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; module Drop; autoload :DropCellPositionHistory, "org/allbinary/media/graphics/geography/map/drop/DropCellPositionHistory" unless const_defined?(:DropCellPositionHistory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; module Racetrack; autoload :RaceTrackGeographicMapCellTypeFactory, "org/allbinary/media/graphics/geography/map/racetrack/RaceTrackGeographicMapCellTypeFactory" unless const_defined?(:RaceTrackGeographicMapCellTypeFactory, false); end; end; end; end; end; end; end
autoload :PrimaryWaypointHelper, "org/allbinary/game/input/form/PrimaryWaypointHelper" unless const_defined?(:PrimaryWaypointHelper, false)

end; end; end; end; end

