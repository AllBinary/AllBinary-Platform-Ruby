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
require "org/allbinary/game/input/form/RTSFormInput"

module ::Org; module Allbinary; module Game; module Input; module Form

class UnitRTSFormInput < RTSFormInput
    attr_accessor :noMoneyGameNotificationEvent, :newUnitGameNotificationEvent

    def jfields_org_allbinary_game_input_form_UnitRTSFormInput
        @noMoneyGameNotificationEvent = nil unless instance_variable_defined?(:@noMoneyGameNotificationEvent)
        @newUnitGameNotificationEvent = nil unless instance_variable_defined?(:@newUnitGameNotificationEvent)
    end
    

    def initialize(groupInterface)
        super(groupInterface)
        jfields_org_allbinary_game_input_form_UnitRTSFormInput
        smallIntegerSingletonFactory = ::Org::Allbinary::Logic::MathPackage::SmallIntegerSingletonFactory.getInstance()
        basicColorFactory = ::Org::Allbinary::Graphics::Color::BasicColorFactory.getInstance()
        @noMoneyGameNotificationEvent = ::Org::Allbinary::Game::Layer::Hud::Event::GameNotificationEvent.new(self, ::Org::Allbinary::Game::Layer::RTSGameStrings.getInstance().NO_MONEY, smallIntegerSingletonFactory.getAt(2), basicColorFactory.WHITE, ::Org::Allbinary::Logic::Java::Bool::BooleanFactory.getInstance().FALSE)
        @newUnitGameNotificationEvent = ::Org::Allbinary::Game::Layer::Hud::Event::GameNotificationEvent.new(self, ::Org::Allbinary::Game::Layer::RTSGameStrings.getInstance().NEW_UNIT, smallIntegerSingletonFactory.getAt(2), basicColorFactory.WHITE, ::Org::Allbinary::Logic::Java::Bool::BooleanFactory.getInstance().FALSE)
        self.getHashtable().put(::Org::Allbinary::Game::Layer::Waypoint::WorkWaypoint::ID, smallIntegerSingletonFactory.getAt(50))
    end
    

    # throws Exception
    def setAllBinaryGameLayerManager(allBinaryGameLayerManager)
        UnitRTSFormInput.superclass.java_super_method(:setAllBinaryGameLayerManager, 1).bind(self).call(allBinaryGameLayerManager)
        geographicMapCompositeInterface = allBinaryGameLayerManager
        geographicMapInterface = geographicMapCompositeInterface.getGeographicMapInterface()[0]
        @noMoneyGameNotificationEvent.setBasicColorP(geographicMapInterface.getForegroundBasicColor())
        @newUnitGameNotificationEvent.setBasicColorP(geographicMapInterface.getForegroundBasicColor())
    end
    java_overload :setAllBinaryGameLayerManager, 1
    

    # throws Exception
    def processGameSpecific(associatedRtsLayer, rtsPlayerLayerInterface, layerManager, item, itemIndex)
        UnitRTSFormInput.superclass.java_super_method(:process, 1).bind(self).call(layerManager)
        associatedRtsLayer2 = associatedRtsLayer
        geographicMapCellPositionArea = associatedRtsLayer2.geographicMapCellPositionAreaBase
        geographicMapCellPosition = geographicMapCellPositionArea.getNextSurroundingGeographicMapCellPosition()
        self.getHashtable().put(::Org::Allbinary::Layer::Layer::ID, associatedRtsLayer)
        self.getHashtable().put(UnitRTSFormInput::DECAL_ID, (rtsPlayerLayerInterface).getDecalBasicColor())
        if @newUnconstructedRTSLayerInterfaceArray[itemIndex] == ::Org::Allbinary::Game::Layer::Special::CollidableDestroyableDamageableLayer.getNullInstance()
            @newUnconstructedRTSLayerInterfaceArray[itemIndex] = self.getInstance(layerManager, item, geographicMapCellPosition)
        else
            selectedCellPoint = geographicMapCellPosition.getPoint()
            positionedLayer = @newUnconstructedRTSLayerInterfaceArray[itemIndex]
            positionedLayer.setPosition(selectedCellPoint.getX(), selectedCellPoint.getY(), positionedLayer.getZP())
            geographicMapCompositeInterface = positionedLayer.allBinaryGameLayerManagerP
            geographicMapInterface = geographicMapCompositeInterface.getGeographicMapInterface()[0]
            positionedLayer.geographicMapCellPositionAreaBase.update(geographicMapInterface)
        end
        cellPoint = geographicMapCellPosition.getMidPoint()
        rtsLayer = @newUnconstructedRTSLayerInterfaceArray[itemIndex]
        rtsLayer.setPosition(cellPoint.getX() - rtsLayer.getHalfWidth(), cellPoint.getY() - rtsLayer.getHalfHeight(), rtsLayer.getZP())
        self.attemptBuild(associatedRtsLayer2, rtsPlayerLayerInterface, layerManager, rtsLayer, itemIndex)
    end
    java_overload :processGameSpecific, 5
    

    # throws Exception
    def attemptBuild(associatedRtsLayer, rtsPlayerLayerInterface, layerManager, layerInterface, itemIndex)
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
            rtsPlayerLayerInterface.add(::Org::Allbinary::Media::Audio::BuildingSound.getInstance())
            capital.removeMoney(cost)
            AssignWaypointsUtil.getInstance().set(layerInterface, associatedRtsLayer)
            layerManager.appendAt(layerInterface, PlayersSingletonFactory.total)
            advancedRTSPlayerLayerInterface = rtsPlayerLayerInterface
            advancedPlayerOwnedRTSLayers = advancedRTSPlayerLayerInterface.getAdvancedPlayerOwnedRTSLayers()
            advancedPlayerOwnedRTSLayers.addUnit(layerInterface)
            if !rtsPlayerLayerInterface.implmentsArtificialIntelligenceCompositeInterface()
                ::Org::Allbinary::Game::Layer::Hud::Event::GameNotificationEventHandler.getInstance().fireEvent(@newUnitGameNotificationEvent)
            end
        else
            rtsPlayerLayerInterface.add(::Org::Allbinary::Media::Audio::ErrorSound.getInstance())
            if !rtsPlayerLayerInterface.implmentsArtificialIntelligenceCompositeInterface()
                ::Org::Allbinary::Game::Layer::Hud::Event::GameNotificationEventHandler.getInstance().fireEvent(@noMoneyGameNotificationEvent)
            end
        end
    end
    java_overload :attemptBuild, 5

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:DECAL_ID, ::Org::Allbinary::Logic::MathPackage::SmallIntegerSingletonFactory.getInstance().getAt(23))
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "UnitRTSFormInput"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:DECAL_ID].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Graphics; module Form; module Item; autoload :ABCustomItem, "org/allbinary/graphics/form/item/ABCustomItem" unless const_defined?(:ABCustomItem, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :AdvancedPlayerOwnedRTSLayers, "org/allbinary/game/layer/AdvancedPlayerOwnedRTSLayers" unless const_defined?(:AdvancedPlayerOwnedRTSLayers, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :AdvancedRTSGameLayer, "org/allbinary/game/layer/AdvancedRTSGameLayer" unless const_defined?(:AdvancedRTSGameLayer, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :AdvancedRTSPlayerLayerInterface, "org/allbinary/game/layer/AdvancedRTSPlayerLayerInterface" unless const_defined?(:AdvancedRTSPlayerLayerInterface, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :RTSGameStrings, "org/allbinary/game/layer/RTSGameStrings" unless const_defined?(:RTSGameStrings, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :RTSLayer, "org/allbinary/game/layer/RTSLayer" unless const_defined?(:RTSLayer, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :RTSPlayerLayerInterface, "org/allbinary/game/layer/RTSPlayerLayerInterface" unless const_defined?(:RTSPlayerLayerInterface, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Capital; autoload :Capital, "org/allbinary/game/layer/capital/Capital" unless const_defined?(:Capital, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Unit; autoload :UnitLayer, "org/allbinary/game/layer/unit/UnitLayer" unless const_defined?(:UnitLayer, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Waypoint; autoload :WorkWaypoint, "org/allbinary/game/layer/waypoint/WorkWaypoint" unless const_defined?(:WorkWaypoint, false); end; end; end; end; end
module ::Org; module Allbinary; module Media; module Audio; autoload :BuildingSound, "org/allbinary/media/audio/BuildingSound" unless const_defined?(:BuildingSound, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Java; module Bool; autoload :BooleanFactory, "org/allbinary/logic/java/bool/BooleanFactory" unless const_defined?(:BooleanFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Identification; autoload :Group, "org/allbinary/game/identification/Group" unless const_defined?(:Group, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :AllBinaryGameLayerManager, "org/allbinary/game/layer/AllBinaryGameLayerManager" unless const_defined?(:AllBinaryGameLayerManager, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :GeographicMapCellPositionAreaBase, "org/allbinary/game/layer/GeographicMapCellPositionAreaBase" unless const_defined?(:GeographicMapCellPositionAreaBase, false); end; end; end; end
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
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCompositeInterface, "org/allbinary/media/graphics/geography/map/GeographicMapCompositeInterface" unless const_defined?(:GeographicMapCompositeInterface, false); end; end; end; end; end; end
autoload :AssignWaypointsUtil, "org/allbinary/game/input/form/AssignWaypointsUtil" unless const_defined?(:AssignWaypointsUtil, false)
autoload :PlayersSingletonFactory, "org/allbinary/game/input/form/PlayersSingletonFactory" unless const_defined?(:PlayersSingletonFactory, false)

begin
    UnitRTSFormInput.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

