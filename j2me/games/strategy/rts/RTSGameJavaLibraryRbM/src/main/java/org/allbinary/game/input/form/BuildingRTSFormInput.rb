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

require "java/lang/JavaOverload"
require "java/lang/JavaClass"
require "org/allbinary/game/input/form/RTSFormInput"

module ::Org; module Allbinary; module Game; module Input; module Form

class BuildingRTSFormInput < RTSFormInput
    attr_accessor :isUnitProducer, :buildOnPathGameNotificationEvent, :spotTakenGameNotificationEvent, :selectBuildSpotGameNotificationEvent, :roadCollisionGameNotificationEvent, :noMoneyGameNotificationEvent, :buildingCollisionGameNotificationEvent, :structureToCloseCollisionGameNotificationEvent, :buildingGameNotificationEvent, :mapEdgeGameNotificationEvent, :dropCellPositionHistory

    def jfields_org_allbinary_game_input_form_BuildingRTSFormInput
        @isUnitProducer = nil unless instance_variable_defined?(:@isUnitProducer)
        @buildOnPathGameNotificationEvent = nil unless instance_variable_defined?(:@buildOnPathGameNotificationEvent)
        @spotTakenGameNotificationEvent = nil unless instance_variable_defined?(:@spotTakenGameNotificationEvent)
        @selectBuildSpotGameNotificationEvent = nil unless instance_variable_defined?(:@selectBuildSpotGameNotificationEvent)
        @roadCollisionGameNotificationEvent = nil unless instance_variable_defined?(:@roadCollisionGameNotificationEvent)
        @noMoneyGameNotificationEvent = nil unless instance_variable_defined?(:@noMoneyGameNotificationEvent)
        @buildingCollisionGameNotificationEvent = nil unless instance_variable_defined?(:@buildingCollisionGameNotificationEvent)
        @structureToCloseCollisionGameNotificationEvent = nil unless instance_variable_defined?(:@structureToCloseCollisionGameNotificationEvent)
        @buildingGameNotificationEvent = nil unless instance_variable_defined?(:@buildingGameNotificationEvent)
        @mapEdgeGameNotificationEvent = nil unless instance_variable_defined?(:@mapEdgeGameNotificationEvent)
        @dropCellPositionHistory = ::Org::Allbinary::Media::Graphics::Geography::Map::Drop::DropCellPositionHistory.getInstance()
    end
    

    def initialize(groupInterface, isUnitProducer)
        super(groupInterface)
        jfields_org_allbinary_game_input_form_BuildingRTSFormInput
        @isUnitProducer = isUnitProducer
        smallIntegerSingletonFactory = ::Org::Allbinary::Logic::MathPackage::SmallIntegerSingletonFactory.getInstance()
        basicColorFactory = ::Org::Allbinary::Graphics::Color::BasicColorFactory.getInstance()
        @buildOnPathGameNotificationEvent = ::Org::Allbinary::Game::Layer::Hud::Event::GameNotificationEvent.new(self, ::Org::Allbinary::Game::Layer::RTSGameStrings.getInstance().BUILD_ON_PATH, smallIntegerSingletonFactory.getAt(2), basicColorFactory.PINK, ::Org::Allbinary::Logic::Java::Bool::BooleanFactory.getInstance().FALSE)
        @spotTakenGameNotificationEvent = ::Org::Allbinary::Game::Layer::Hud::Event::GameNotificationEvent.new(self, ::Org::Allbinary::Game::Layer::RTSGameStrings.getInstance().SPOT_TAKEN, smallIntegerSingletonFactory.getAt(2), basicColorFactory.PINK, ::Org::Allbinary::Logic::Java::Bool::BooleanFactory.getInstance().FALSE)
        @selectBuildSpotGameNotificationEvent = ::Org::Allbinary::Game::Layer::Hud::Event::GameNotificationEvent.new(self, ::Org::Allbinary::Game::Layer::RTSGameStrings.getInstance().SELECT_BUILD_SPOT, smallIntegerSingletonFactory.getAt(2), basicColorFactory.PINK, ::Org::Allbinary::Logic::Java::Bool::BooleanFactory.getInstance().FALSE)
        @roadCollisionGameNotificationEvent = ::Org::Allbinary::Game::Layer::Hud::Event::GameNotificationEvent.new(self, ::Org::Allbinary::Game::Layer::RTSGameStrings.getInstance().ROAD_COLLISION, smallIntegerSingletonFactory.getAt(2), basicColorFactory.PINK, ::Org::Allbinary::Logic::Java::Bool::BooleanFactory.getInstance().FALSE)
        @noMoneyGameNotificationEvent = ::Org::Allbinary::Game::Layer::Hud::Event::GameNotificationEvent.new(self, ::Org::Allbinary::Game::Layer::RTSGameStrings.getInstance().NO_MONEY, smallIntegerSingletonFactory.getAt(2), basicColorFactory.PINK, ::Org::Allbinary::Logic::Java::Bool::BooleanFactory.getInstance().FALSE)
        @buildingCollisionGameNotificationEvent = ::Org::Allbinary::Game::Layer::Hud::Event::GameNotificationEvent.new(self, ::Org::Allbinary::Game::Layer::RTSGameStrings.getInstance().BUILDING_COLLISION, smallIntegerSingletonFactory.getAt(2), basicColorFactory.PINK, ::Org::Allbinary::Logic::Java::Bool::BooleanFactory.getInstance().FALSE)
        @structureToCloseCollisionGameNotificationEvent = ::Org::Allbinary::Game::Layer::Hud::Event::GameNotificationEvent.new(self, ::Org::Allbinary::Game::Layer::RTSGameStrings.getInstance().STRUCTURE_TO_CLOSE, smallIntegerSingletonFactory.getAt(2), basicColorFactory.PINK, ::Org::Allbinary::Logic::Java::Bool::BooleanFactory.getInstance().FALSE)
        @buildingGameNotificationEvent = ::Org::Allbinary::Game::Layer::Hud::Event::GameNotificationEvent.new(self, ::Org::Allbinary::Game::Layer::RTSGameStrings.getInstance().BUILDING, smallIntegerSingletonFactory.getAt(2), basicColorFactory.PINK, ::Org::Allbinary::Logic::Java::Bool::BooleanFactory.getInstance().FALSE)
        @mapEdgeGameNotificationEvent = ::Org::Allbinary::Game::Layer::Hud::Event::GameNotificationEvent.new(self, ::Org::Allbinary::Game::Layer::RTSGameStrings.getInstance().MAP_EDGE, smallIntegerSingletonFactory.getAt(2), basicColorFactory.PINK, ::Org::Allbinary::Logic::Java::Bool::BooleanFactory.getInstance().FALSE)
    end
    

    # throws Exception
    def setAllBinaryGameLayerManager(allBinaryGameLayerManager)
        BuildingRTSFormInput.superclass.java_super_method(:setAllBinaryGameLayerManager, 1).bind(self).call(allBinaryGameLayerManager)
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
    java_overload :setAllBinaryGameLayerManager, 1
    

    # throws Exception
    def processGameSpecific(associatedRtsLayer, rtsPlayerLayerInterface, layerManager, item, itemIndex)
        BuildingRTSFormInput.superclass.java_super_method(:process, 1).bind(self).call(layerManager)
        self.buildFromMotionInput(rtsPlayerLayerInterface, layerManager, item, itemIndex)
    end
    java_overload :processGameSpecific, 5
    

    def isPositionBlocked()
        return @dropCellPositionHistory.isCellPositionWithDrop(self.getSelectedGeographicCellPosition())
    end
    java_overload :isPositionBlocked, 0
    

    def isDemoLocked(item)
        factoryItem = item
        layerInterfaceFactoryInterface = factoryItem.getLayerInterfaceFactoryInterface()
        if ::Org::Allbinary::Logic::System::Security::Licensing::LockedUtil.getInstance().isLocked() && layerInterfaceFactoryInterface.isDemoLocked()
            return true
        else
            return false
        end
    end
    java_overload :isDemoLocked, 1
    

    # throws Exception
    def buildFromMotionInput(rtsPlayerLayerInterface, layerManager, item, itemIndex)
        commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @logUtil.putF(commonStrings.START, self, "buildFromMotionInput")
        if layerManager == nil
            raise RuntimeError.new()
        end
        geographicMapCompositeInterface = layerManager
        geographicMapInterface = geographicMapCompositeInterface.getGeographicMapInterface()[0]
        if self.isDemoLocked(item)
            rtsPlayerLayerInterface.add(::Org::Allbinary::Media::Audio::ErrorSound.getInstance())
            ::Org::Allbinary::Logic::System::Security::Licensing::LockedFeatureNotificationUtil.getInstance().fireWithColor(geographicMapInterface.getForegroundBasicColor())
            return
        end
        geographicMapCellPosition = self.getSelectedGeographicCellPosition()
        if geographicMapCellPosition != ::Org::Allbinary::Media::Graphics::Geography::Map::SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
            if !self.isPositionBlocked()
                geographicMapCellType = geographicMapInterface.getCellTypeAt(geographicMapCellPosition)
                raceTrackGeographicMapCellTypeFactory = geographicMapInterface.getGeographicMapCellTypeFactory()
                if !raceTrackGeographicMapCellTypeFactory.isPath(geographicMapCellType)
                    if @newUnconstructedRTSLayerInterfaceArray[itemIndex] == ::Org::Allbinary::Game::Layer::Special::CollidableDestroyableDamageableLayer.getNullInstance()
                        @newUnconstructedRTSLayerInterfaceArray[itemIndex] = self.getInstance(layerManager, item, geographicMapCellPosition)
                    else
                        positionedLayer = @newUnconstructedRTSLayerInterfaceArray[itemIndex]
                        cellPoint = geographicMapCellPosition.getPoint()
                        positionedLayer.setPosition(cellPoint.getX(), cellPoint.getY(), cellPoint.getZ())
                        positionedLayer.geographicMapCellPositionAreaBase.update(geographicMapInterface)
                    end
                    rtsLayer = @newUnconstructedRTSLayerInterfaceArray[itemIndex]
                    self.attemptBuild(rtsPlayerLayerInterface, layerManager, rtsLayer, itemIndex)
                else
                    rtsPlayerLayerInterface.add(::Org::Allbinary::Media::Audio::ErrorSound.getInstance())
                    if !rtsPlayerLayerInterface.implmentsArtificialIntelligenceCompositeInterface()
                        ::Org::Allbinary::Game::Layer::Hud::Event::GameNotificationEventHandler.getInstance().fireEvent(@buildOnPathGameNotificationEvent)
                    end
                end
            else
                rtsPlayerLayerInterface.add(::Org::Allbinary::Media::Audio::ErrorSound.getInstance())
                if !rtsPlayerLayerInterface.implmentsArtificialIntelligenceCompositeInterface()
                    ::Org::Allbinary::Game::Layer::Hud::Event::GameNotificationEventHandler.getInstance().fireEvent(@spotTakenGameNotificationEvent)
                end
            end
        else
            rtsPlayerLayerInterface.add(::Org::Allbinary::Media::Audio::ErrorSound.getInstance())
            if !rtsPlayerLayerInterface.implmentsArtificialIntelligenceCompositeInterface()
                ::Org::Allbinary::Game::Layer::Hud::Event::GameNotificationEventHandler.getInstance().fireEvent(@selectBuildSpotGameNotificationEvent)
            end
        end
    end
    java_overload :buildFromMotionInput, 4
    

    # throws Exception
    def attemptBuild(rtsPlayerLayerInterface, layerManager, layerInterface, itemIndex)
        @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append("Layer: ").append(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().toString(layerInterface)).to_s, self, "attemptBuild")
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
            self.add(rtsPlayerLayerInterface, layerManager, layerInterface)
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
    def isBuildAttemptValid(rtsPlayerLayerInterface, layerInterface)
        geographicMapCellPositionArea = layerInterface.geographicMapCellPositionAreaBase
        occupyList = geographicMapCellPositionArea.getOccupyingGeographicMapCellPositionList()
        if @dropCellPositionHistory.anyCellPositionWithDrop(occupyList)
            rtsPlayerLayerInterface.add(::Org::Allbinary::Media::Audio::ErrorSound.getInstance())
            if !rtsPlayerLayerInterface.implmentsArtificialIntelligenceCompositeInterface()
                ::Org::Allbinary::Game::Layer::Hud::Event::GameNotificationEventHandler.getInstance().fireEvent(@buildingCollisionGameNotificationEvent)
            end
            return false
        end
        if @isUnitProducer && @dropCellPositionHistory.anyCellPositionWithDrop(geographicMapCellPositionArea.getSurroundingGeographicMapCellPositionList())
            rtsPlayerLayerInterface.add(::Org::Allbinary::Media::Audio::ErrorSound.getInstance())
            if !rtsPlayerLayerInterface.implmentsArtificialIntelligenceCompositeInterface()
                ::Org::Allbinary::Game::Layer::Hud::Event::GameNotificationEventHandler.getInstance().fireEvent(@structureToCloseCollisionGameNotificationEvent)
            end
            return false
        else
            if self.isSurroundingCellsOffMap(layerInterface)
                rtsPlayerLayerInterface.add(::Org::Allbinary::Media::Audio::ErrorSound.getInstance())
                if !rtsPlayerLayerInterface.implmentsArtificialIntelligenceCompositeInterface()
                    ::Org::Allbinary::Game::Layer::Hud::Event::GameNotificationEventHandler.getInstance().fireEvent(@mapEdgeGameNotificationEvent)
                end
                return false
            end
        end
        return true
    end
    java_overload :isBuildAttemptValid, 2
    

    # throws Exception
    def add(rtsPlayerLayerInterface, layerManager, layerInterface)
        geographicMapCellPositionArea = layerInterface.geographicMapCellPositionAreaBase
        occupyList = geographicMapCellPositionArea.getOccupyingGeographicMapCellPositionList()
        @dropCellPositionHistory.addAll(occupyList, layerInterface)
        rtsPlayerGameInput = rtsPlayerLayerInterface.getPlayerGameInput()
        rtsPlayerGameInput.setSelectedRTSLayer(layerInterface, self.getSelectedGeographicCellPosition())
        layerManager.append(layerInterface)
        rtsPlayerLayerInterface.add(::Org::Allbinary::Media::Audio::BuildingSound.getInstance())
        if !rtsPlayerLayerInterface.implmentsArtificialIntelligenceCompositeInterface()
            ::Org::Allbinary::Game::Layer::Hud::Event::GameNotificationEventHandler.getInstance().fireEvent(@buildingGameNotificationEvent)
        end
    end
    java_overload :add, 3
    

    def isSurroundingCellsOffMap(layerInterface)
        geographicMapCellPositionArea = layerInterface.geographicMapCellPositionAreaBase
        occupyList = geographicMapCellPositionArea.getOccupyingGeographicMapCellPositionList()
        surroundList = geographicMapCellPositionArea.getSurroundingGeographicMapCellPositionList()
        occupySize = occupyList.size()
        surroundSize = surroundList.size()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append("occupySize: ")
        stringBuffer.appendint(occupySize)
        stringBuffer.append(" surroundSize: ")
        stringBuffer.appendint(surroundSize)
        stringBuffer.append(" surroundList: ")
        stringBuffer.append(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().toString(surroundList))
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
    java_overload :isSurroundingCellsOffMap, 1
end

module ::Org; module Allbinary; module Game; module Input; autoload :RTSPlayerGameInput, "org/allbinary/game/input/RTSPlayerGameInput" unless const_defined?(:RTSPlayerGameInput, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :DemoLockedWithCostLayerInterfaceFactoryInterface, "org/allbinary/game/layer/DemoLockedWithCostLayerInterfaceFactoryInterface" unless const_defined?(:DemoLockedWithCostLayerInterfaceFactoryInterface, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :GeographicMapCellPositionAreaBase, "org/allbinary/game/layer/GeographicMapCellPositionAreaBase" unless const_defined?(:GeographicMapCellPositionAreaBase, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :RTSGameStrings, "org/allbinary/game/layer/RTSGameStrings" unless const_defined?(:RTSGameStrings, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :RTSLayer, "org/allbinary/game/layer/RTSLayer" unless const_defined?(:RTSLayer, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :RTSPlayerLayerInterface, "org/allbinary/game/layer/RTSPlayerLayerInterface" unless const_defined?(:RTSPlayerLayerInterface, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Capital; autoload :Capital, "org/allbinary/game/layer/capital/Capital" unless const_defined?(:Capital, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Item; autoload :LayerInterfaceFactoryImageItem, "org/allbinary/game/layer/item/LayerInterfaceFactoryImageItem" unless const_defined?(:LayerInterfaceFactoryImageItem, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Form; module Item; autoload :ABCustomItem, "org/allbinary/graphics/form/item/ABCustomItem" unless const_defined?(:ABCustomItem, false); end; end; end; end; end
module ::Org; module Allbinary; module Media; module Audio; autoload :BuildingSound, "org/allbinary/media/audio/BuildingSound" unless const_defined?(:BuildingSound, false); end; end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Java; module Bool; autoload :BooleanFactory, "org/allbinary/logic/java/bool/BooleanFactory" unless const_defined?(:BooleanFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :LockedFeatureNotificationUtil, "org/allbinary/logic/system/security/licensing/LockedFeatureNotificationUtil" unless const_defined?(:LockedFeatureNotificationUtil, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :LockedUtil, "org/allbinary/logic/system/security/licensing/LockedUtil" unless const_defined?(:LockedUtil, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Game; module Identification; autoload :Group, "org/allbinary/game/identification/Group" unless const_defined?(:Group, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :AllBinaryGameLayerManager, "org/allbinary/game/layer/AllBinaryGameLayerManager" unless const_defined?(:AllBinaryGameLayerManager, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Hud; module Event; autoload :GameNotificationEvent, "org/allbinary/game/layer/hud/event/GameNotificationEvent" unless const_defined?(:GameNotificationEvent, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Hud; module Event; autoload :GameNotificationEventHandler, "org/allbinary/game/layer/hud/event/GameNotificationEventHandler" unless const_defined?(:GameNotificationEventHandler, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Special; autoload :CollidableDestroyableDamageableLayer, "org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer" unless const_defined?(:CollidableDestroyableDamageableLayer, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; autoload :GPoint, "org/allbinary/graphics/GPoint" unless const_defined?(:GPoint, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColorFactory, "org/allbinary/graphics/color/BasicColorFactory" unless const_defined?(:BasicColorFactory, false); end; end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayerManager, "org/allbinary/layer/AllBinaryLayerManager" unless const_defined?(:AllBinaryLayerManager, false); end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :SmallIntegerSingletonFactory, "org/allbinary/logic/math/SmallIntegerSingletonFactory" unless const_defined?(:SmallIntegerSingletonFactory, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Audio; autoload :ErrorSound, "org/allbinary/media/audio/ErrorSound" unless const_defined?(:ErrorSound, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :BasicGeographicMap, "org/allbinary/media/graphics/geography/map/BasicGeographicMap" unless const_defined?(:BasicGeographicMap, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellPosition, "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition" unless const_defined?(:GeographicMapCellPosition, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellType, "org/allbinary/media/graphics/geography/map/GeographicMapCellType" unless const_defined?(:GeographicMapCellType, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCompositeInterface, "org/allbinary/media/graphics/geography/map/GeographicMapCompositeInterface" unless const_defined?(:GeographicMapCompositeInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :SimpleGeographicMapCellPositionFactory, "org/allbinary/media/graphics/geography/map/SimpleGeographicMapCellPositionFactory" unless const_defined?(:SimpleGeographicMapCellPositionFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; module Drop; autoload :DropCellPositionHistory, "org/allbinary/media/graphics/geography/map/drop/DropCellPositionHistory" unless const_defined?(:DropCellPositionHistory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; module Racetrack; autoload :RaceTrackGeographicMapCellTypeFactory, "org/allbinary/media/graphics/geography/map/racetrack/RaceTrackGeographicMapCellTypeFactory" unless const_defined?(:RaceTrackGeographicMapCellTypeFactory, false); end; end; end; end; end; end; end

end; end; end; end; end

