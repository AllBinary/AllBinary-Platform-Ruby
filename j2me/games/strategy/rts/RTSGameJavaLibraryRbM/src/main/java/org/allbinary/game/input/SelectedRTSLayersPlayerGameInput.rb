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

# require "javax/microedition/lcdui/Canvas"
require "org/allbinary/game/input/PlayerGameInput"

class SelectedRTSLayersPlayerGameInput < PlayerGameInput
    attr_accessor :inputProcessorArray, :list, :isSingleKeyProcessing, :selectedRTSLayersList, :preSelectedRTSLayersList, :paintSelectedRTSLayersList, :rtsPlayerLayerInterface, :selectRTSLayerVisitorInterface, :upgradeGameNotificationEvent, :noMoneyGameNotificationEvent, :downgradeGameNotificationEvent

    def initialize_fields
        @inputProcessorArray = Array.new(InputFactory.getInstance().MAX, nil)
        @list = nil
        @isSingleKeyProcessing = Features.getInstance().isFeature(InputFeatureFactory.getInstance().SINGLE_KEY_REPEAT_PRESS) || Features.getInstance().isFeature(InputFeatureFactory.getInstance().SINGLE_KEY_PRESS)
        @selectedRTSLayersList = BasicArrayListD.new()
        @preSelectedRTSLayersList = BasicArrayListD.new()
        @paintSelectedRTSLayersList = BasicArrayListUtil.getInstance().getImmutableInstance()
        @rtsPlayerLayerInterface = nil
        @selectRTSLayerVisitorInterface = nil
        @upgradeGameNotificationEvent = nil
        @noMoneyGameNotificationEvent = nil
        @downgradeGameNotificationEvent = nil
    end
    

    def initialize(towerInfoPaintable, rtsPlayerLayerInterface, list, playerInputId, selectRTSLayerVisitorFactoryInterface)
        super(list, BasicArrayListD.new(), playerInputId)
        initialize_fields
        self.initInputProcessors()
        @rtsPlayerLayerInterface = rtsPlayerLayerInterface
        @list = list
        @selectRTSLayerVisitorInterface = selectRTSLayerVisitorFactoryInterface.create(self)
        smallIntegerSingletonFactory = SmallIntegerSingletonFactory.getInstance()
        basicColorFactory = BasicColorFactory.getInstance()
        @upgradeGameNotificationEvent = GameNotificationEvent.new(self, RTSGameStrings.getInstance().UPGRADE, smallIntegerSingletonFactory.getAt(2), basicColorFactory.PINK, BooleanFactory.getInstance().FALSE)
        @noMoneyGameNotificationEvent = GameNotificationEvent.new(self, RTSGameStrings.getInstance().NO_MONEY, smallIntegerSingletonFactory.getAt(2), basicColorFactory.PINK, BooleanFactory.getInstance().FALSE)
        @downgradeGameNotificationEvent = GameNotificationEvent.new(self, RTSGameStrings.getInstance().DOWNGRADE, smallIntegerSingletonFactory.getAt(2), basicColorFactory.PINK, BooleanFactory.getInstance().FALSE)
    end
    

    # throws Exception
    def setAllBinaryGameLayerManager(allBinaryGameLayerManager)
        geographicMapCompositeInterface = allBinaryGameLayerManager
        geographicMapInterface = geographicMapCompositeInterface.getGeographicMapInterface()[0]
        @upgradeGameNotificationEvent.setBasicColorP(geographicMapInterface.getForegroundBasicColor())
        @noMoneyGameNotificationEvent.setBasicColorP(geographicMapInterface.getForegroundBasicColor())
        @downgradeGameNotificationEvent.setBasicColorP(geographicMapInterface.getForegroundBasicColor())
    end
    

    def isSelected(rtsLayer)
        if @selectedRTSLayersList.contains(rtsLayer)
            return true
        else
            return false
        end
    end
    

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
                    @rtsPlayerLayerInterface.add(UpgradeSound.getInstance())
                    rtsLayer.upgrade()
                    capital.removeMoney(upgradeCost)
                    if !@rtsPlayerLayerInterface.implmentsArtificialIntelligenceCompositeInterface()
                        GameNotificationEventHandler.getInstance().fireEvent(@upgradeGameNotificationEvent)
                    end
                else
                    @rtsPlayerLayerInterface.add(ErrorSound.getInstance())
                    if !@rtsPlayerLayerInterface.implmentsArtificialIntelligenceCompositeInterface()
                        GameNotificationEventHandler.getInstance().fireEvent(@noMoneyGameNotificationEvent)
                    end
                end
            end
        end
        if anyChanged
            rtsPlayerGameInput = (@rtsPlayerLayerInterface.getPlayerGameInput())
            rtsPlayerGameInput.updatePaintable()
        end
    end
    

    # throws Exception
    def downgrade()
        anyChanged = false
        index = @selectedRTSLayersList.size()
        while (index -= 1) >= 0
            rtsLayer = @selectedRTSLayersList.get(index)
            if rtsLayer.isDowngradeable()
                anyChanged = true
                @rtsPlayerLayerInterface.add(DowngradeSound.getInstance())
                downgradeCost = rtsLayer.getDowngradeCost()
                rtsLayer.downgrade()
                capital = @rtsPlayerLayerInterface.getCapital()
                capital.addMoney(downgradeCost)
                if !@rtsPlayerLayerInterface.implmentsArtificialIntelligenceCompositeInterface()
                    GameNotificationEventHandler.getInstance().fireEvent(@downgradeGameNotificationEvent)
                end
            end
        end
        if anyChanged
            rtsPlayerGameInput = (@rtsPlayerLayerInterface.getPlayerGameInput())
            rtsPlayerGameInput.updatePaintable()
        end
    end
    

    def initInputProcessors()
        @inputProcessorArray[Canvas::KEY_NUM1] = SelectedRTSLayersPlayerUpgradeGameInputProcessor.new(self)
        @inputProcessorArray[Canvas::KEY_NUM3] = SelectedRTSLayersPlayerDowngradeGameInputProcessor.new(self)
        GameInputProcessorUtil.init(@inputProcessorArray)
    end
    

    # throws Exception
    def processInputKey(key)
        if @selectedRTSLayersList != nil
            @inputProcessorArray[key].processEvent(AllBinaryGameLayerManager.getNullInstance(), GameKeyEvent::NONE)
        end
    end
    

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
    

    def getSelectedBasicArrayList()
        return @selectedRTSLayersList
    end
    

    def addSelectedRTSLayer(selectedLayer)
        @paintSelectedRTSLayersList = BasicArrayListUtil.getInstance().getImmutableInstance()
        if selectedLayer == CollidableDestroyableDamageableLayer.getNullInstance()
            self.deselectAll()
            @selectedRTSLayersList.clear()
        else
            if !@selectedRTSLayersList.contains(selectedLayer)
                @selectedRTSLayersList.add(selectedLayer)
            end
        end
        @paintSelectedRTSLayersList = @selectedRTSLayersList
    end
    

    def setSelectedRTSLayer(selectedLayer)
        stringBuffer = StringMaker.new()
        stringBuffer.append("Selected Layer: ")
        if selectedLayer != nil
            stringBuffer.append(selectedLayer.getName())
        end
        @logUtil.putF(stringBuffer.to_s, self, "setSelectedRTSLayer")
        @paintSelectedRTSLayersList = BasicArrayListUtil.getInstance().getImmutableInstance()
        @selectRTSLayerVisitorInterface.visit(selectedLayer)
        self.deselectAll()
        if @selectedRTSLayersList.size() > 0
            self.getPreSelectedRTSLayersList().clear()
            tempList = self.getPreSelectedRTSLayersList()
            @preSelectedRTSLayersList = @selectedRTSLayersList
            @selectedRTSLayersList = tempList
            @logUtil.putF(StringMaker.new().append("Preselected: ").append(@preSelectedRTSLayersList.to_s).to_s, self, "setSelectedRTSLayer")
        end
        if selectedLayer != CollidableDestroyableDamageableLayer.getNullInstance()
            @selectedRTSLayersList.add(selectedLayer)
        end
        @paintSelectedRTSLayersList = @selectedRTSLayersList
    end
    

    def getLastSelectedRtsLayer()
        if self.isAnyRTSLayerSelected()
            return @selectedRTSLayersList.get(@selectedRTSLayersList.size() - 1)
        else
            return CollidableDestroyableDamageableLayer.getNullInstance()
        end
    end
    

    def selectAllPreselected()
        stringBuffer = StringMaker.new()
        stringBuffer.append("Select all Preselected: ")
        stringBuffer.append(@preSelectedRTSLayersList.to_s)
        @logUtil.putF(stringBuffer.to_s, self, "selectAllPreselected")
        (@preSelectedRTSLayersList.size() - 1).step(0, -(1)) do |index|
            rtsLayer = @preSelectedRTSLayersList.get(index)
            rtsLayer.select()
        end
    end
    

    def deselectAllPreselected()
        stringBuffer = StringMaker.new()
        stringBuffer.append("Deselect all Preselected: ")
        stringBuffer.append(@preSelectedRTSLayersList.to_s)
        @logUtil.putF(stringBuffer.to_s, self, "deselectAllPreselected")
        (@preSelectedRTSLayersList.size() - 1).step(0, -(1)) do |index|
            rtsLayer = @preSelectedRTSLayersList.get(index)
            rtsLayer.deselect()
        end
        @preSelectedRTSLayersList.clear()
    end
    

    def deselectAll()
        (@selectedRTSLayersList.size() - 1).step(0, -(1)) do |index|
            rtsLayer = @selectedRTSLayersList.get(index)
            rtsLayer.deselect()
        end
    end
    

    def isAnyRTSLayerSelected()
        if @selectedRTSLayersList.size() == 0
            return false
        end
        return true
    end
    

    def getPaintSelectedRTSLayersList()
        return @paintSelectedRTSLayersList
    end
    

    def getPreSelectedRTSLayersList()
        return @preSelectedRTSLayersList
    end
end

require "org/allbinary/game/layer/RTSGameStrings"
require "org/allbinary/game/layer/RTSLayer"
require "org/allbinary/game/layer/RTSLayerInfoPaintable"
require "org/allbinary/game/layer/RTSPlayerLayerInterface"
require "org/allbinary/game/layer/capital/Capital"
require "org/allbinary/media/audio/DowngradeSound"
require "org/allbinary/media/audio/UpgradeSound"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/util/BasicArrayListUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/java/bool/BooleanFactory"
require "org/allbinary/game/configuration/feature/Features"
require "org/allbinary/game/configuration/feature/InputFeatureFactory"
require "org/allbinary/game/input/event/GameKeyEvent"
require "org/allbinary/game/layer/AllBinaryGameLayerManager"
require "org/allbinary/game/layer/hud/event/GameNotificationEvent"
require "org/allbinary/game/layer/hud/event/GameNotificationEventHandler"
require "org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer"
require "org/allbinary/graphics/color/BasicColorFactory"
require "org/allbinary/layer/AllBinaryLayerManager"
require "org/allbinary/logic/util/visitor/Visitor"
require "org/allbinary/logic/math/SmallIntegerSingletonFactory"
require "org/allbinary/media/audio/ErrorSound"
require "org/allbinary/media/graphics/geography/map/BasicGeographicMap"
require "org/allbinary/media/graphics/geography/map/GeographicMapCompositeInterface"
require "org/allbinary/game/input/GameInputProcessor"
require "org/allbinary/game/input/GameInputProcessorUtil"
require "org/allbinary/game/input/InputFactory"
require "org/allbinary/game/input/RTSPlayerGameInput"
require "org/allbinary/game/input/SelectRTSLayerVisitorFactoryInterface"
require "org/allbinary/game/input/SelectedRTSLayersPlayerDowngradeGameInputProcessor"
require "org/allbinary/game/input/SelectedRTSLayersPlayerUpgradeGameInputProcessor"

