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
# package org.allbinary.game.input

require "java/lang/JavaOverload"
require "java/lang/JavaClass"
require "org/allbinary/game/input/PlayerGameInput"

module ::Org; module Allbinary; module Game; module Input

class SelectedRTSLayersPlayerGameInput < PlayerGameInput
    attr_accessor :inputProcessorArray, :list, :isSingleKeyProcessing, :selectedRTSLayersList, :preSelectedRTSLayersList, :paintSelectedRTSLayersList, :rtsPlayerLayerInterface, :selectRTSLayerVisitorInterface, :upgradeGameNotificationEvent, :noMoneyGameNotificationEvent, :downgradeGameNotificationEvent

    def jfields_org_allbinary_game_input_SelectedRTSLayersPlayerGameInput
        @inputProcessorArray = Array.new(InputFactory.getInstance().MAX, nil)
        @list = nil unless instance_variable_defined?(:@list)
        @isSingleKeyProcessing = ::Org::Allbinary::Game::Configuration::Feature::Features.getInstance().isFeature(::Org::Allbinary::Game::Configuration::Feature::InputFeatureFactory.getInstance().SINGLE_KEY_REPEAT_PRESS) || ::Org::Allbinary::Game::Configuration::Feature::Features.getInstance().isFeature(::Org::Allbinary::Game::Configuration::Feature::InputFeatureFactory.getInstance().SINGLE_KEY_PRESS)
        @selectedRTSLayersList = ::Org::Allbinary::Util::BasicArrayListD.new()
        @preSelectedRTSLayersList = ::Org::Allbinary::Util::BasicArrayListD.new()
        @paintSelectedRTSLayersList = ::Org::Allbinary::Util::BasicArrayListUtil.getInstance().getImmutableInstance()
        @rtsPlayerLayerInterface = nil unless instance_variable_defined?(:@rtsPlayerLayerInterface)
        @selectRTSLayerVisitorInterface = nil unless instance_variable_defined?(:@selectRTSLayerVisitorInterface)
        @upgradeGameNotificationEvent = nil unless instance_variable_defined?(:@upgradeGameNotificationEvent)
        @noMoneyGameNotificationEvent = nil unless instance_variable_defined?(:@noMoneyGameNotificationEvent)
        @downgradeGameNotificationEvent = nil unless instance_variable_defined?(:@downgradeGameNotificationEvent)
    end
    

    def initialize(towerInfoPaintable, rtsPlayerLayerInterface, list, playerInputId, selectRTSLayerVisitorFactoryInterface)
        super(list, ::Org::Allbinary::Util::BasicArrayListD.new(), playerInputId)
        jfields_org_allbinary_game_input_SelectedRTSLayersPlayerGameInput
        self.initInputProcessors()
        @rtsPlayerLayerInterface = rtsPlayerLayerInterface
        @list = list
        @selectRTSLayerVisitorInterface = selectRTSLayerVisitorFactoryInterface.create(self)
        smallIntegerSingletonFactory = ::Org::Allbinary::Logic::MathPackage::SmallIntegerSingletonFactory.getInstance()
        basicColorFactory = ::Org::Allbinary::Graphics::Color::BasicColorFactory.getInstance()
        @upgradeGameNotificationEvent = ::Org::Allbinary::Game::Layer::Hud::Event::GameNotificationEvent.new(self, ::Org::Allbinary::Game::Layer::RTSGameStrings.getInstance().UPGRADE, smallIntegerSingletonFactory.getAt(2), basicColorFactory.PINK, ::Org::Allbinary::Logic::Java::Bool::BooleanFactory.getInstance().FALSE)
        @noMoneyGameNotificationEvent = ::Org::Allbinary::Game::Layer::Hud::Event::GameNotificationEvent.new(self, ::Org::Allbinary::Game::Layer::RTSGameStrings.getInstance().NO_MONEY, smallIntegerSingletonFactory.getAt(2), basicColorFactory.PINK, ::Org::Allbinary::Logic::Java::Bool::BooleanFactory.getInstance().FALSE)
        @downgradeGameNotificationEvent = ::Org::Allbinary::Game::Layer::Hud::Event::GameNotificationEvent.new(self, ::Org::Allbinary::Game::Layer::RTSGameStrings.getInstance().DOWNGRADE, smallIntegerSingletonFactory.getAt(2), basicColorFactory.PINK, ::Org::Allbinary::Logic::Java::Bool::BooleanFactory.getInstance().FALSE)
    end
    

    # throws Exception
    def setAllBinaryGameLayerManager(allBinaryGameLayerManager)
        geographicMapCompositeInterface = allBinaryGameLayerManager
        geographicMapInterface = geographicMapCompositeInterface.getGeographicMapInterface()[0]
        @upgradeGameNotificationEvent.setBasicColorP(geographicMapInterface.getForegroundBasicColor())
        @noMoneyGameNotificationEvent.setBasicColorP(geographicMapInterface.getForegroundBasicColor())
        @downgradeGameNotificationEvent.setBasicColorP(geographicMapInterface.getForegroundBasicColor())
    end
    java_overload :setAllBinaryGameLayerManager, 1
    

    def isSelected(rtsLayer)
        if @selectedRTSLayersList.contains(rtsLayer)
            return true
        else
            return false
        end
    end
    java_overload :isSelected, 1
    

    # throws Exception
    def upgrade()
        anyChanged = false
        (@selectedRTSLayersList.size() - 1).step(0, -(1)) do |index|
            rtsLayer = @selectedRTSLayersList.get(index)
            if rtsLayer.isUpgradeable()
                capital = @rtsPlayerLayerInterface.getCapital()
                upgradeCost = rtsLayer.getUpgradeCost()
                if upgradeCost <= capital.getTotalMoney()
                    anyChanged = true
                    @rtsPlayerLayerInterface.add(::Org::Allbinary::Media::Audio::UpgradeSound.getInstance())
                    rtsLayer.upgrade()
                    capital.removeMoney(upgradeCost)
                    if !@rtsPlayerLayerInterface.implmentsArtificialIntelligenceCompositeInterface()
                        ::Org::Allbinary::Game::Layer::Hud::Event::GameNotificationEventHandler.getInstance().fireEvent(@upgradeGameNotificationEvent)
                    end
                else
                    @rtsPlayerLayerInterface.add(::Org::Allbinary::Media::Audio::ErrorSound.getInstance())
                    if !@rtsPlayerLayerInterface.implmentsArtificialIntelligenceCompositeInterface()
                        ::Org::Allbinary::Game::Layer::Hud::Event::GameNotificationEventHandler.getInstance().fireEvent(@noMoneyGameNotificationEvent)
                    end
                end
            end
        end
        if anyChanged
            rtsPlayerGameInput = (@rtsPlayerLayerInterface.getPlayerGameInput())
            rtsPlayerGameInput.updatePaintable()
        end
    end
    java_overload :upgrade, 0
    

    # throws Exception
    def downgrade()
        anyChanged = false
        index = @selectedRTSLayersList.size()
        while (index -= 1) >= 0
            rtsLayer = @selectedRTSLayersList.get(index)
            if rtsLayer.isDowngradeable()
                anyChanged = true
                @rtsPlayerLayerInterface.add(::Org::Allbinary::Media::Audio::DowngradeSound.getInstance())
                downgradeCost = rtsLayer.getDowngradeCost()
                rtsLayer.downgrade()
                capital = @rtsPlayerLayerInterface.getCapital()
                capital.addMoney(downgradeCost)
                if !@rtsPlayerLayerInterface.implmentsArtificialIntelligenceCompositeInterface()
                    ::Org::Allbinary::Game::Layer::Hud::Event::GameNotificationEventHandler.getInstance().fireEvent(@downgradeGameNotificationEvent)
                end
            end
        end
        if anyChanged
            rtsPlayerGameInput = (@rtsPlayerLayerInterface.getPlayerGameInput())
            rtsPlayerGameInput.updatePaintable()
        end
    end
    java_overload :downgrade, 0
    

    def initInputProcessors()
        @inputProcessorArray[::Javax::Microedition::Lcdui::Canvas::KEY_NUM1] = SelectedRTSLayersPlayerUpgradeGameInputProcessor.new(self)
        @inputProcessorArray[::Javax::Microedition::Lcdui::Canvas::KEY_NUM3] = SelectedRTSLayersPlayerDowngradeGameInputProcessor.new(self)
        GameInputProcessorUtil.init(@inputProcessorArray)
    end
    java_overload :initInputProcessors, 0
    

    # throws Exception
    def processInputKey(key)
        if @selectedRTSLayersList != nil
            @inputProcessorArray[key].processEvent(::Org::Allbinary::Game::Layer::AllBinaryGameLayerManager.getNullInstance(), ::Org::Allbinary::Game::Input::Event::GameKeyEvent::NONE)
        end
    end
    java_overload :processInputKey, 1
    

    # throws Exception
    def processInput(layerManager)
        begin
            size = @list.size()
            key = 0
            (0...size).each do |index|
                gameKeyEvent = @list.get(index)
                key = gameKeyEvent.getKey()
                self.processInputKey(key)
            end
            if @isSingleKeyProcessing
                self.clear()
            else
                self.update()
            end
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @gameInputStrings.PROCESS_INPUT, e)
        end
    end
    java_overload :processInput, 1
    

    def getSelectedBasicArrayList()
        return @selectedRTSLayersList
    end
    java_overload :getSelectedBasicArrayList, 0
    

    def addSelectedRTSLayer(selectedLayer)
        @paintSelectedRTSLayersList = ::Org::Allbinary::Util::BasicArrayListUtil.getInstance().getImmutableInstance()
        if selectedLayer == ::Org::Allbinary::Game::Layer::Special::CollidableDestroyableDamageableLayer.getNullInstance()
            self.deselectAll()
            @selectedRTSLayersList.clear()
        else
            if !@selectedRTSLayersList.contains(selectedLayer)
                @selectedRTSLayersList.add(selectedLayer)
            end
        end
        @paintSelectedRTSLayersList = @selectedRTSLayersList
    end
    java_overload :addSelectedRTSLayer, 1
    

    def setSelectedRTSLayer(selectedLayer)
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append("Selected Layer: ")
        if selectedLayer != nil
            stringBuffer.append(selectedLayer.getName())
        end
        @logUtil.putF(stringBuffer.to_s, self, "setSelectedRTSLayer")
        @paintSelectedRTSLayersList = ::Org::Allbinary::Util::BasicArrayListUtil.getInstance().getImmutableInstance()
        @selectRTSLayerVisitorInterface.visit(selectedLayer)
        self.deselectAll()
        if @selectedRTSLayersList.size() > 0
            self.getPreSelectedRTSLayersList().clear()
            tempList = self.getPreSelectedRTSLayersList()
            @preSelectedRTSLayersList = @selectedRTSLayersList
            @selectedRTSLayersList = tempList
            @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append("Preselected: ").append(@preSelectedRTSLayersList.to_s).to_s, self, "setSelectedRTSLayer")
        end
        if selectedLayer != ::Org::Allbinary::Game::Layer::Special::CollidableDestroyableDamageableLayer.getNullInstance()
            @selectedRTSLayersList.add(selectedLayer)
        end
        @paintSelectedRTSLayersList = @selectedRTSLayersList
    end
    java_overload :setSelectedRTSLayer, 1
    

    def getLastSelectedRtsLayer()
        if self.isAnyRTSLayerSelected()
            return @selectedRTSLayersList.get(@selectedRTSLayersList.size() - 1)
        else
            return ::Org::Allbinary::Game::Layer::Special::CollidableDestroyableDamageableLayer.getNullInstance()
        end
    end
    java_overload :getLastSelectedRtsLayer, 0
    

    def selectAllPreselected()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append("Select all Preselected: ")
        stringBuffer.append(@preSelectedRTSLayersList.to_s)
        @logUtil.putF(stringBuffer.to_s, self, "selectAllPreselected")
        (@preSelectedRTSLayersList.size() - 1).step(0, -(1)) do |index|
            rtsLayer = @preSelectedRTSLayersList.get(index)
            rtsLayer.select()
        end
    end
    java_overload :selectAllPreselected, 0
    

    def deselectAllPreselected()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append("Deselect all Preselected: ")
        stringBuffer.append(@preSelectedRTSLayersList.to_s)
        @logUtil.putF(stringBuffer.to_s, self, "deselectAllPreselected")
        (@preSelectedRTSLayersList.size() - 1).step(0, -(1)) do |index|
            rtsLayer = @preSelectedRTSLayersList.get(index)
            rtsLayer.deselect()
        end
        @preSelectedRTSLayersList.clear()
    end
    java_overload :deselectAllPreselected, 0
    

    def deselectAll()
        (@selectedRTSLayersList.size() - 1).step(0, -(1)) do |index|
            rtsLayer = @selectedRTSLayersList.get(index)
            rtsLayer.deselect()
        end
    end
    java_overload :deselectAll, 0
    

    def isAnyRTSLayerSelected()
        if @selectedRTSLayersList.size() == 0
            return false
        end
        return true
    end
    java_overload :isAnyRTSLayerSelected, 0
    

    def getPaintSelectedRTSLayersList()
        return @paintSelectedRTSLayersList
    end
    java_overload :getPaintSelectedRTSLayersList, 0
    

    def getPreSelectedRTSLayersList()
        return @preSelectedRTSLayersList
    end
    java_overload :getPreSelectedRTSLayersList, 0
end

module ::Javax; module Microedition; module Lcdui; autoload :Canvas, "javax/microedition/lcdui/Canvas" unless const_defined?(:Canvas, false); end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :RTSGameStrings, "org/allbinary/game/layer/RTSGameStrings" unless const_defined?(:RTSGameStrings, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :RTSLayer, "org/allbinary/game/layer/RTSLayer" unless const_defined?(:RTSLayer, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :RTSLayerInfoPaintable, "org/allbinary/game/layer/RTSLayerInfoPaintable" unless const_defined?(:RTSLayerInfoPaintable, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :RTSPlayerLayerInterface, "org/allbinary/game/layer/RTSPlayerLayerInterface" unless const_defined?(:RTSPlayerLayerInterface, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Capital; autoload :Capital, "org/allbinary/game/layer/capital/Capital" unless const_defined?(:Capital, false); end; end; end; end; end
module ::Org; module Allbinary; module Media; module Audio; autoload :DowngradeSound, "org/allbinary/media/audio/DowngradeSound" unless const_defined?(:DowngradeSound, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Audio; autoload :UpgradeSound, "org/allbinary/media/audio/UpgradeSound" unless const_defined?(:UpgradeSound, false); end; end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListUtil, "org/allbinary/util/BasicArrayListUtil" unless const_defined?(:BasicArrayListUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Java; module Bool; autoload :BooleanFactory, "org/allbinary/logic/java/bool/BooleanFactory" unless const_defined?(:BooleanFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :Features, "org/allbinary/game/configuration/feature/Features" unless const_defined?(:Features, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :InputFeatureFactory, "org/allbinary/game/configuration/feature/InputFeatureFactory" unless const_defined?(:InputFeatureFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Input; module Event; autoload :GameKeyEvent, "org/allbinary/game/input/event/GameKeyEvent" unless const_defined?(:GameKeyEvent, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :AllBinaryGameLayerManager, "org/allbinary/game/layer/AllBinaryGameLayerManager" unless const_defined?(:AllBinaryGameLayerManager, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Hud; module Event; autoload :GameNotificationEvent, "org/allbinary/game/layer/hud/event/GameNotificationEvent" unless const_defined?(:GameNotificationEvent, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Hud; module Event; autoload :GameNotificationEventHandler, "org/allbinary/game/layer/hud/event/GameNotificationEventHandler" unless const_defined?(:GameNotificationEventHandler, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Special; autoload :CollidableDestroyableDamageableLayer, "org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer" unless const_defined?(:CollidableDestroyableDamageableLayer, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColorFactory, "org/allbinary/graphics/color/BasicColorFactory" unless const_defined?(:BasicColorFactory, false); end; end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayerManager, "org/allbinary/layer/AllBinaryLayerManager" unless const_defined?(:AllBinaryLayerManager, false); end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Visitor; autoload :Visitor, "org/allbinary/logic/util/visitor/Visitor" unless const_defined?(:Visitor, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :SmallIntegerSingletonFactory, "org/allbinary/logic/math/SmallIntegerSingletonFactory" unless const_defined?(:SmallIntegerSingletonFactory, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Audio; autoload :ErrorSound, "org/allbinary/media/audio/ErrorSound" unless const_defined?(:ErrorSound, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :BasicGeographicMap, "org/allbinary/media/graphics/geography/map/BasicGeographicMap" unless const_defined?(:BasicGeographicMap, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCompositeInterface, "org/allbinary/media/graphics/geography/map/GeographicMapCompositeInterface" unless const_defined?(:GeographicMapCompositeInterface, false); end; end; end; end; end; end
autoload :GameInputProcessor, "org/allbinary/game/input/GameInputProcessor" unless const_defined?(:GameInputProcessor, false)
autoload :GameInputProcessorUtil, "org/allbinary/game/input/GameInputProcessorUtil" unless const_defined?(:GameInputProcessorUtil, false)
autoload :InputFactory, "org/allbinary/game/input/InputFactory" unless const_defined?(:InputFactory, false)
autoload :RTSPlayerGameInput, "org/allbinary/game/input/RTSPlayerGameInput" unless const_defined?(:RTSPlayerGameInput, false)
autoload :SelectRTSLayerVisitorFactoryInterface, "org/allbinary/game/input/SelectRTSLayerVisitorFactoryInterface" unless const_defined?(:SelectRTSLayerVisitorFactoryInterface, false)
autoload :SelectedRTSLayersPlayerDowngradeGameInputProcessor, "org/allbinary/game/input/SelectedRTSLayersPlayerDowngradeGameInputProcessor" unless const_defined?(:SelectedRTSLayersPlayerDowngradeGameInputProcessor, false)
autoload :SelectedRTSLayersPlayerUpgradeGameInputProcessor, "org/allbinary/game/input/SelectedRTSLayersPlayerUpgradeGameInputProcessor" unless const_defined?(:SelectedRTSLayersPlayerUpgradeGameInputProcessor, false)

end; end; end; end

