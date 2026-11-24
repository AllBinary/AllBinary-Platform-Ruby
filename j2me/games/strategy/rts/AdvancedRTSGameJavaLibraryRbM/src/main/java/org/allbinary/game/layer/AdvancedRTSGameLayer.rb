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
# package org.allbinary.game.layer

require "java/lang/JavaOverload"
require "org/allbinary/game/combat/destroy/event/DestroyedEventListenerInterface"
require "org/allbinary/game/layer/RTSLayer"

module ::Org; module Allbinary; module Game; module Layer

class AdvancedRTSGameLayer < RTSLayer
    include ::Org::Allbinary::Game::Combat::Destroy::Event::DestroyedEventListenerInterface
    attr_accessor :shakeListener, :vibration, :duration, :parentLayer, :waypointBehaviorBase

    def jfields_org_allbinary_game_layer_AdvancedRTSGameLayer
        @shakeListener = nil unless instance_variable_defined?(:@shakeListener)
        @vibration = nil unless instance_variable_defined?(:@vibration)
        @duration = nil unless instance_variable_defined?(:@duration)
        @parentLayer = NullPathFindingLayer::NULL_PATH_FINDING_LAYER
        @waypointBehaviorBase = ::Org::Allbinary::Game::Tick::NullTickable.getInstance()
    end
    

    # throws Exception
    def self.createSimulated()
        nullAnimationInterfaceFactoryInterface = ::Org::Allbinary::Animation::NullAnimationFactory.getFactoryInstance()
        nullIndexedAnimationInterfaceFactoryInterface = ::Org::Allbinary::Animation::NullIndexedAnimationFactory.getFactoryInstance()
        return AdvancedRTSGameLayer.new(::Org::Allbinary::Game::Multiplayer::Layer::RemoteInfo::REMOTE_INFO, NullPathFindingLayer::NULL_PATH_FINDING_LAYER, AdvancedRTSProperties.createPropertiesSimulated(), ::Org::Allbinary::Game::Identification::GroupFactory.getInstance().NULL_GROUP_ARRAY, ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING, ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING, ::Org::Allbinary::Game::Health::Health::NULL_HEALTH, ::Org::Allbinary::Game::Input::Form::NullRTSFormInputFactory.getInstance(), nullAnimationInterfaceFactoryInterface, nullIndexedAnimationInterfaceFactoryInterface, nullAnimationInterfaceFactoryInterface, nullAnimationInterfaceFactoryInterface, nullIndexedAnimationInterfaceFactoryInterface, ::Org::Allbinary::Animation::NullIndexedAnimationFactory.getFactoryInstance(), ::Org::Allbinary::Graphics::RectangleFactory::SINGLETON, 0, 0, ::Org::Allbinary::Game::View::TileLayerPositionIntoViewPosition.new())
    end
    

    def initialize(remoteInfo, parentLayer, advancedRTSProperties, groupInterface, rootName, name, healthInterface, rtsFormInput, animationInterfaceFactoryInterface, emptyAnimationInterfaceFactoryInterface, baseAnimationInterfaceFactoryInterface, buildAnimationInterfaceFactoryInterface, verticleBuildAnimationInterfaceFactoryInterface, proceduralAnimationInterfaceFactoryInterface, rectangle, x, y, viewPosition)
        super(remoteInfo, groupInterface, rootName, name, healthInterface, rtsFormInput, animationInterfaceFactoryInterface, emptyAnimationInterfaceFactoryInterface, baseAnimationInterfaceFactoryInterface, buildAnimationInterfaceFactoryInterface, verticleBuildAnimationInterfaceFactoryInterface, proceduralAnimationInterfaceFactoryInterface, rectangle, x, y, viewPosition)
        jfields_org_allbinary_game_layer_AdvancedRTSGameLayer
        self.setVisible(false)
        self.setWaypointBehavior(WaypointBehaviorBase.new())
        @shakeListener = advancedRTSProperties.shakeListener
        @vibration = advancedRTSProperties.vibration
        @duration = advancedRTSProperties.duration
        self.setParentLayer(parentLayer)
    end
    

    # throws Exception
    def updateWaypointBehavior(geographicMapInterface)
        AdvancedRTSGameLayer.superclass.java_super_method(:updateWaypointBehavior, 1).bind(self).call(geographicMapInterface)
        self.getWaypointBehavior().getWaypoint().setAllBinaryGameLayerManager(@allBinaryGameLayerManagerP)
    end
    java_overload :updateWaypointBehavior, 1
    

    def initVisibility(rtsPlayerLayerInterface)
        advancedRTSPlayerLayerInterface = rtsPlayerLayerInterface
        if advancedRTSPlayerLayerInterface.isLocalPlayer() || advancedRTSPlayerLayerInterface.getGameType() == ::Org::Allbinary::Game::GameTypeFactory.getInstance().BOT
            self.setVisible(true)
        else
            self.setVisible(false)
        end
    end
    java_overload :initVisibility, 1
    

    # throws Exception
    def construct(rtsPlayerLayerInterface)
        AdvancedRTSGameLayer.superclass.java_super_method(:construct, 1).bind(self).call(rtsPlayerLayerInterface)
        self.initVisibility(rtsPlayerLayerInterface)
        ::Org::Allbinary::Game::Layer::Building::Event::BuildingEventHandler.getInstance().addListenerInterface(self.getWaypointBehavior().getWaypoint())
    end
    java_overload :construct, 1
    

    # throws Exception
    def setDestroyed(destroyed)
        AdvancedRTSGameLayer.superclass.java_super_method(:setDestroyed, 1).bind(self).call(destroyed)
        if self.isDestroyed()
            ::Org::Allbinary::Game::Layer::Building::Event::BuildingEventHandler.getInstance().removeListener(self.getWaypointBehavior().getWaypoint())
            ::Org::Allbinary::Game::Layer::Building::Event::BuildingEventHandler.getInstance().removeListener(self)
            ::Org::Allbinary::Game::Combat::Destroy::Event::DestroyedEventHandler.getInstance().addListener(self)
            RTSLayerUtil.getInstance().destroyAndClear(self.getWaypointBehavior().getOwnedWaypointList())
        end
    end
    java_overload :setDestroyed, 1
    

    def getParentLayer()
        return @parentLayer
    end
    java_overload :getParentLayer, 0
    

    def setParentLayer(parentLayer)
        @parentLayer = parentLayer
    end
    java_overload :setParentLayer, 1
    

    def getWaypointBehavior()
        return @waypointBehaviorBase
    end
    java_overload :getWaypointBehavior, 0
    

    def setWaypointBehavior(unitWaypointHelper)
        @waypointBehaviorBase = unitWaypointHelper
    end
    java_overload :setWaypointBehavior, 1
    

    def getWaypointLogHelper()
        return @waypointLogHelperP
    end
    java_overload :getWaypointLogHelper, 0
    

    def getWaypoint2LogHelper()
        return @waypoint2LogHelperP
    end
    java_overload :getWaypoint2LogHelper, 0
    

    def getWaypointRunnableLogHelper()
        return @waypointRunnableLogHelperP
    end
    java_overload :getWaypointRunnableLogHelper, 0
    

    def shouldAddWaypointFromBuilding()
        if @parentLayer != NullPathFindingLayer::NULL_PATH_FINDING_LAYER
            parentAdvancedRTSGameLayer = @parentLayer
            if parentAdvancedRTSGameLayer.getType() != 1
                return true
            end
        end
        return false
    end
    java_overload :shouldAddWaypointFromBuilding, 0
    

    def isWaypointListEmptyOrOnlyTargets()
        if self.getType() != 1
            return true
        end
        return false
    end
    java_overload :isWaypointListEmptyOrOnlyTargets, 0
    

    # throws Exception
    def buildingChase(allbinaryLayer, cellPosition)
        geographicMapCellPosition = self.getCurrentGeographicMapCellPosition()
        buildingDirection = ::Org::Allbinary::Media::Graphics::Geography::Map::GeographicMapDirectionUtil.getInstance().getDirectionFromCellPositionToAdjacentCellPosition(geographicMapCellPosition, cellPosition)
        angleInfo = self.getRotationAnimationInterface().getAngleInfoP()
        angle = ::Org::Allbinary::MathPackage::FrameUtil.getInstance().adjustAngleToFrameAngle(angleInfo.getAngle() + 90)
        gameKeyEventFactory = ::Org::Allbinary::Game::Input::Event::GameKeyEventFactory.getInstance()
        if buildingDirection == ::Org::Allbinary::Direction::DirectionFactory.getInstance().UP
            @rtsLayer2LogHelper.buildingAbove(self)
            if angle > 180 && angle < 360
                @rtsLayer2LogHelper.buildingChaseLeft(self, angle)
                self.getGameKeyEventList().add(gameKeyEventFactory.getInstanceForKey(self, ::Javax::Microedition::Lcdui::Canvas::LEFT))
                if angle <= 190
                    return true
                end
            else
                @rtsLayer2LogHelper.buildingChaseRight(self, angle)
                self.getGameKeyEventList().add(gameKeyEventFactory.getInstanceForKey(self, ::Javax::Microedition::Lcdui::Canvas::RIGHT))
                if angle >= 170
                    return true
                end
            end
        elsif buildingDirection == ::Org::Allbinary::Direction::DirectionFactory.getInstance().DOWN
            @rtsLayer2LogHelper.buildingDown(self)
            if angle > 180 && angle < 360
                @rtsLayer2LogHelper.buildingChaseLeft(self, angle)
                self.getGameKeyEventList().add(gameKeyEventFactory.getInstanceForKey(self, ::Javax::Microedition::Lcdui::Canvas::RIGHT))
                if angle > 315
                    return true
                end
            else
                @rtsLayer2LogHelper.buildingChaseRight(self, angle)
                self.getGameKeyEventList().add(gameKeyEventFactory.getInstanceForKey(self, ::Javax::Microedition::Lcdui::Canvas::LEFT))
                if angle < 45
                    return true
                end
            end
        elsif buildingDirection == ::Org::Allbinary::Direction::DirectionFactory.getInstance().LEFT
            @rtsLayer2LogHelper.buildingLeft()
            if angle > 90 && angle < 270
                @rtsLayer2LogHelper.buildingChaseDown(self, angle)
                self.getGameKeyEventList().add(gameKeyEventFactory.getInstanceForKey(self, ::Javax::Microedition::Lcdui::Canvas::LEFT))
                if angle < 135
                    return true
                end
            else
                @rtsLayer2LogHelper.buildingChaseUp(self, angle)
                self.getGameKeyEventList().add(gameKeyEventFactory.getInstanceForKey(self, ::Javax::Microedition::Lcdui::Canvas::RIGHT))
                if angle > 45
                    return true
                end
            end
        elsif buildingDirection == ::Org::Allbinary::Direction::DirectionFactory.getInstance().RIGHT
            @rtsLayer2LogHelper.buildingRight()
            if angle > 90 && angle < 270
                @rtsLayer2LogHelper.buildingChaseDown(self, angle)
                self.getGameKeyEventList().add(gameKeyEventFactory.getInstanceForKey(self, ::Javax::Microedition::Lcdui::Canvas::RIGHT))
                if angle > 225
                    return true
                end
            else
                @rtsLayer2LogHelper.buildingChaseUp(self, angle)
                self.getGameKeyEventList().add(gameKeyEventFactory.getInstanceForKey(self, ::Javax::Microedition::Lcdui::Canvas::LEFT))
                if angle < 315 && angle > 180
                    return true
                end
            end
        else
            return true
        end
        return false
    end
    java_overload :buildingChase, 2
    

    # throws Exception
    def getSurroundingGeographicMapCellPositionList()
        geographicMapCompositeInterface = @allBinaryGameLayerManagerP
        geographicMapInterface = geographicMapCompositeInterface.getGeographicMapInterface()[0]
        @geographicMapCellPositionAreaBase.update(geographicMapInterface)
        return @geographicMapCellPositionAreaBase.getSurroundingGeographicMapCellPositionList()
    end
    java_overload :getSurroundingGeographicMapCellPositionList, 0
    

    def setSelected(selected)
        AdvancedRTSGameLayer.superclass.java_super_method(:setSelected, 1).bind(self).call(selected)
        if @debug
            if selected
                @waypointLogHelperP = ::Org::Allbinary::Game::Layer::Waypoint::WaypointSelectedLogHelper.getInstance()
                @waypoint2LogHelperP = ::Org::Allbinary::Game::Layer::Waypoint::Waypoint2SelectedLogHelper.getInstance()
                @waypointRunnableLogHelperP = ::Org::Allbinary::Game::Layer::Waypoint::WaypointRunnableSelectedLogHelper.getInstance()
            else
                @waypointLogHelperP = ::Org::Allbinary::Game::Layer::Waypoint::WaypointLogHelper.getInstance()
                @waypoint2LogHelperP = ::Org::Allbinary::Game::Layer::Waypoint::Waypoint2LogHelper.getInstance()
                @waypointRunnableLogHelperP = ::Org::Allbinary::Game::Layer::Waypoint::WaypointRunnableLogHelper.getInstance()
            end
        end
    end
    java_overload :setSelected, 1
    

    def onDestroyed(destroyedEvent)
        begin
            layerInterface = destroyedEvent.getLayerInterface()
            if layerInterface == self
                ::Org::Allbinary::Game::Combat::Destroy::Event::DestroyedEventHandler.getInstance().removeListener(self)
                waypoint = self.getWaypointBehavior().getWaypoint()
                waypoint.reset()
            end
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "onDestroyed", e)
        end
    end
    java_overload :onDestroyed, 1
end

module ::Javax; module Microedition; module Lcdui; autoload :Canvas, "javax/microedition/lcdui/Canvas" unless const_defined?(:Canvas, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :AnimationInterfaceFactoryInterface, "org/allbinary/animation/AnimationInterfaceFactoryInterface" unless const_defined?(:AnimationInterfaceFactoryInterface, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :NullAnimationFactory, "org/allbinary/animation/NullAnimationFactory" unless const_defined?(:NullAnimationFactory, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :NullIndexedAnimationFactory, "org/allbinary/animation/NullIndexedAnimationFactory" unless const_defined?(:NullIndexedAnimationFactory, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :ProceduralAnimationInterfaceFactoryInterface, "org/allbinary/animation/ProceduralAnimationInterfaceFactoryInterface" unless const_defined?(:ProceduralAnimationInterfaceFactoryInterface, false); end; end; end
module ::Org; module Allbinary; module Animation; module Transition; module Shake; autoload :ShakeAnimationListener, "org/allbinary/animation/transition/shake/ShakeAnimationListener" unless const_defined?(:ShakeAnimationListener, false); end; end; end; end; end
module ::Org; module Allbinary; module Direction; autoload :Direction, "org/allbinary/direction/Direction" unless const_defined?(:Direction, false); end; end; end
module ::Org; module Allbinary; module Direction; autoload :DirectionFactory, "org/allbinary/direction/DirectionFactory" unless const_defined?(:DirectionFactory, false); end; end; end
module ::Org; module Allbinary; module Game; autoload :GameTypeFactory, "org/allbinary/game/GameTypeFactory" unless const_defined?(:GameTypeFactory, false); end; end; end
module ::Org; module Allbinary; module Game; module Combat; module Destroy; module Event; autoload :DestroyedEvent, "org/allbinary/game/combat/destroy/event/DestroyedEvent" unless const_defined?(:DestroyedEvent, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Game; module Combat; module Destroy; module Event; autoload :DestroyedEventHandler, "org/allbinary/game/combat/destroy/event/DestroyedEventHandler" unless const_defined?(:DestroyedEventHandler, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Game; module Health; autoload :Health, "org/allbinary/game/health/Health" unless const_defined?(:Health, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Identification; autoload :Group, "org/allbinary/game/identification/Group" unless const_defined?(:Group, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Identification; autoload :GroupFactory, "org/allbinary/game/identification/GroupFactory" unless const_defined?(:GroupFactory, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Input; module Event; autoload :GameKeyEventFactory, "org/allbinary/game/input/event/GameKeyEventFactory" unless const_defined?(:GameKeyEventFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Input; module Form; autoload :NullRTSFormInputFactory, "org/allbinary/game/input/form/NullRTSFormInputFactory" unless const_defined?(:NullRTSFormInputFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Input; module Form; autoload :RTSFormInput, "org/allbinary/game/input/form/RTSFormInput" unless const_defined?(:RTSFormInput, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Building; module Event; autoload :BuildingEventHandler, "org/allbinary/game/layer/building/event/BuildingEventHandler" unless const_defined?(:BuildingEventHandler, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Waypoint; autoload :Waypoint2LogHelper, "org/allbinary/game/layer/waypoint/Waypoint2LogHelper" unless const_defined?(:Waypoint2LogHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Waypoint; autoload :Waypoint2SelectedLogHelper, "org/allbinary/game/layer/waypoint/Waypoint2SelectedLogHelper" unless const_defined?(:Waypoint2SelectedLogHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Waypoint; autoload :WaypointBase, "org/allbinary/game/layer/waypoint/WaypointBase" unless const_defined?(:WaypointBase, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Waypoint; autoload :WaypointLogHelper, "org/allbinary/game/layer/waypoint/WaypointLogHelper" unless const_defined?(:WaypointLogHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Waypoint; autoload :WaypointRunnableLogHelper, "org/allbinary/game/layer/waypoint/WaypointRunnableLogHelper" unless const_defined?(:WaypointRunnableLogHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Waypoint; autoload :WaypointRunnableSelectedLogHelper, "org/allbinary/game/layer/waypoint/WaypointRunnableSelectedLogHelper" unless const_defined?(:WaypointRunnableSelectedLogHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Waypoint; autoload :WaypointSelectedLogHelper, "org/allbinary/game/layer/waypoint/WaypointSelectedLogHelper" unless const_defined?(:WaypointSelectedLogHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Multiplayer; module Layer; autoload :RemoteInfo, "org/allbinary/game/multiplayer/layer/RemoteInfo" unless const_defined?(:RemoteInfo, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Tick; autoload :NullTickable, "org/allbinary/game/tick/NullTickable" unless const_defined?(:NullTickable, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Tick; autoload :TickableInterface, "org/allbinary/game/tick/TickableInterface" unless const_defined?(:TickableInterface, false); end; end; end; end
module ::Org; module Allbinary; module Game; module View; autoload :TileLayerPositionIntoViewPosition, "org/allbinary/game/view/TileLayerPositionIntoViewPosition" unless const_defined?(:TileLayerPositionIntoViewPosition, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; autoload :Rectangle, "org/allbinary/graphics/Rectangle" unless const_defined?(:Rectangle, false); end; end; end
module ::Org; module Allbinary; module Graphics; autoload :RectangleFactory, "org/allbinary/graphics/RectangleFactory" unless const_defined?(:RectangleFactory, false); end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module MathPackage; autoload :AngleInfo, "org/allbinary/math/AngleInfo" unless const_defined?(:AngleInfo, false); end; end; end
module ::Org; module Allbinary; module MathPackage; autoload :FrameUtil, "org/allbinary/math/FrameUtil" unless const_defined?(:FrameUtil, false); end; end; end
module ::Org; module Allbinary; module Media; autoload :AllBinaryVibrationME, "org/allbinary/media/AllBinaryVibrationME" unless const_defined?(:AllBinaryVibrationME, false); end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :BasicGeographicMap, "org/allbinary/media/graphics/geography/map/BasicGeographicMap" unless const_defined?(:BasicGeographicMap, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellPosition, "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition" unless const_defined?(:GeographicMapCellPosition, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCompositeInterface, "org/allbinary/media/graphics/geography/map/GeographicMapCompositeInterface" unless const_defined?(:GeographicMapCompositeInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapDirectionUtil, "org/allbinary/media/graphics/geography/map/GeographicMapDirectionUtil" unless const_defined?(:GeographicMapDirectionUtil, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module View; autoload :ViewPositionBase, "org/allbinary/view/ViewPositionBase" unless const_defined?(:ViewPositionBase, false); end; end; end
autoload :AdvancedRTSPlayerLayerInterface, "org/allbinary/game/layer/AdvancedRTSPlayerLayerInterface" unless const_defined?(:AdvancedRTSPlayerLayerInterface, false)
autoload :AdvancedRTSProperties, "org/allbinary/game/layer/AdvancedRTSProperties" unless const_defined?(:AdvancedRTSProperties, false)
autoload :NullPathFindingLayer, "org/allbinary/game/layer/NullPathFindingLayer" unless const_defined?(:NullPathFindingLayer, false)
autoload :PathFindingLayerInterface, "org/allbinary/game/layer/PathFindingLayerInterface" unless const_defined?(:PathFindingLayerInterface, false)
autoload :RTSLayerUtil, "org/allbinary/game/layer/RTSLayerUtil" unless const_defined?(:RTSLayerUtil, false)
autoload :RTSPlayerLayerInterface, "org/allbinary/game/layer/RTSPlayerLayerInterface" unless const_defined?(:RTSPlayerLayerInterface, false)
autoload :WaypointBehaviorBase, "org/allbinary/game/layer/WaypointBehaviorBase" unless const_defined?(:WaypointBehaviorBase, false)

end; end; end; end

