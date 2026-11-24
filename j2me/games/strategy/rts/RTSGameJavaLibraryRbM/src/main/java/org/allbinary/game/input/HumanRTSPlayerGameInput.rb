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
require "org/allbinary/input/motion/gesture/observer/BaseMotionGestureEventListener"
require "org/allbinary/game/input/RTSPlayerGameInput"

module ::Org; module Allbinary; module Game; module Input

class HumanRTSPlayerGameInput < RTSPlayerGameInput
    include ::Org::Allbinary::Input::Motion::Gesture::Observer::BaseMotionGestureEventListener
    attr_accessor :isDragging, :gameStateFactory, :rectangleCollisionUtil, :touchMotionGestureFactory, :PRESSED, :RELEASED, :touchButtonsBuilderFactory, :notYoursGameNotificationEvent, :selectedRtsLayer, :startPoint, :endPoint, :POSSIBLE, :AT, :METHOD, :ADDING, :SPACE, :multiSelectPaintable

    def jfields_org_allbinary_game_input_HumanRTSPlayerGameInput
        @isDragging = false
        @gameStateFactory = ::Org::Allbinary::Game::State::GameStateFactory.getInstance()
        @rectangleCollisionUtil = ::Org::Allbinary::MathPackage::RectangleCollisionUtil.getInstance()
        @touchMotionGestureFactory = ::Org::Allbinary::Input::Motion::Gesture::TouchMotionGestureFactory.getInstance()
        @PRESSED = @touchMotionGestureFactory.PRESSED
        @RELEASED = @touchMotionGestureFactory.RELEASED
        @touchButtonsBuilderFactory = nil unless instance_variable_defined?(:@touchButtonsBuilderFactory)
        @notYoursGameNotificationEvent = nil unless instance_variable_defined?(:@notYoursGameNotificationEvent)
        @selectedRtsLayer = ::Org::Allbinary::Game::Layer::Special::CollidableDestroyableDamageableLayer.getNullInstance()
        @startPoint = ::Org::Allbinary::Graphics::PointFactory.getInstance().ZERO_ZERO
        @endPoint = ::Org::Allbinary::Graphics::PointFactory.getInstance().ZERO_ZERO
        @POSSIBLE = "Possible: "
        @AT = "At: "
        @METHOD = "makeSelection"
        @ADDING = "Adding: "
        @SPACE = ::Org::Allbinary::StringPackage::CommonSeps.getInstance().SPACE
        @multiSelectPaintable = ::Org::Allbinary::Game::Layer::MultiSelectPaintable.new()
    end
    

    def initialize(gameCanvas, inputList, playerInputId, towerInfoPaintable, rtsPlayerLayerInterface, layerPositionFinderInterface, selectRTSLayerVisitorFactoryInterface, touchButtonsBuilderFactory)
        super(gameCanvas, inputList, playerInputId, towerInfoPaintable, rtsPlayerLayerInterface, layerPositionFinderInterface, selectRTSLayerVisitorFactoryInterface)
        jfields_org_allbinary_game_input_HumanRTSPlayerGameInput
        @touchButtonsBuilderFactory = touchButtonsBuilderFactory
        basicColorFactory = ::Org::Allbinary::Graphics::Color::BasicColorFactory.getInstance()
        @notYoursGameNotificationEvent = ::Org::Allbinary::Game::Layer::Hud::Event::GameNotificationEvent.new(self, ::Org::Allbinary::Game::Layer::RTSGameStrings.getInstance().NOT_YOURS, ::Org::Allbinary::Logic::MathPackage::SmallIntegerSingletonFactory.getInstance().getAt(2), basicColorFactory.PINK, ::Org::Allbinary::Logic::Java::Bool::BooleanFactory.getInstance().FALSE)
        ::Org::Allbinary::Input::Motion::Gesture::Observer::BasicMotionGesturesHandler.getInstance().addListenerInterface(self)
    end
    

    # throws Exception
    def setAllBinaryGameLayerManager(allBinaryGameLayerManager)
        geographicMapCompositeInterface = allBinaryGameLayerManager
        geographicMapInterface = geographicMapCompositeInterface.getGeographicMapInterface()[0]
        @notYoursGameNotificationEvent.setBasicColorP(geographicMapInterface.getForegroundBasicColor())
    end
    java_overload :setAllBinaryGameLayerManager, 1
    

    # throws Exception
    def processDraggingMotionInput(layerManager)
        motionGestureEvent = self.getMotionGestureInputList().get(self.getMotionGestureInputList().size() - 1)
        motionGestureInput = motionGestureEvent.getMotionGesture()
        rtsFormInput = self.getSelectedRtsFormInput()
        if motionGestureInput == @PRESSED
            point = motionGestureEvent.getCurrentPoint()
            if self.getRtsPlayerLayerInterface().getCurrentScrollSelectionForm().isInForm(point)
                @isDragging = rtsFormInput.processSticky(self.getSelectedRtsLayer(), self.getRtsPlayerLayerInterface(), layerManager, point)
            end
        elsif motionGestureInput == @RELEASED
            point = motionGestureEvent.getCurrentPoint()
            if self.getRtsPlayerLayerInterface().getCurrentScrollSelectionForm().isInForm(point)
                rtsFormInput.processAtPoint(self.getSelectedRtsLayer(), self.getRtsPlayerLayerInterface(), layerManager, point)
            elsif rtsFormInput.isStickyItemSelected()
                previousRtsFormInput = rtsFormInput
                self.select(motionGestureEvent)
                self.getSelectedBuildingPlayerGameInput().selectAllPreselected()
                previousRtsFormInput.processAtPoint(self.getSelectedRtsLayer(), self.getRtsPlayerLayerInterface(), layerManager, point)
                self.getSelectedBuildingPlayerGameInput().deselectAllPreselected()
            else
                self.select(motionGestureEvent)
            end
            rtsFormInput.setStickyItemSelected(false)
            rtsFormInput.setSelectedStickyItem(::Org::Allbinary::Graphics::Form::Item::ABCustomItem.getNullInstance())
            rtsFormInput.setSelectedStickyItemIndex(-1)
            return true
        end
        return false
    end
    java_overload :processDraggingMotionInput, 1
    

    def makeSelection()
        rtsLayerList = self.getRtsPlayerLayerInterface().getPlayerOwnedRTSLayers().rtsLayerList
        rectX1 = @startPoint.getX()
        rectY1 = @startPoint.getY()
        rectX2 = @endPoint.getX()
        rectY2 = @endPoint.getY()
        if rectX1 > rectX2
            rectX2 = rectX1
            rectX1 = @endPoint.getX()
        end
        if rectY1 > rectY2
            rectY2 = rectY1
            rectY1 = @endPoint.getY()
        end
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append(@AT)
        stringBuffer.appendint(rectX1)
        stringBuffer.append(@SPACE)
        stringBuffer.appendint(rectY1)
        stringBuffer.append(@SPACE)
        stringBuffer.appendint(rectX2)
        stringBuffer.append(@SPACE)
        stringBuffer.appendint(rectY2)
        @logUtil.putF(stringBuffer.to_s, self, @METHOD)
        rtsLayer = nil
        (rtsLayerList.size() - 1).step(0, -(1)) do |index|
            rtsLayer = rtsLayerList.get(index)
            stringBuffer.delete(0, stringBuffer.length())
            viewPosition = rtsLayer.getViewPosition()
            stringBuffer.append(@POSSIBLE)
            stringBuffer.append(rtsLayer.getName())
            stringBuffer.append(@SPACE)
            stringBuffer.append(@AT)
            stringBuffer.appendint((((viewPosition.getX() + rtsLayer.getHalfWidth())).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }))
            stringBuffer.append(@SPACE)
            stringBuffer.appendint((((viewPosition.getY() + rtsLayer.getHalfHeight())).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }))
            @logUtil.putF(stringBuffer.to_s, self, @METHOD)
            if @rectangleCollisionUtil.isInside(rectX1, rectY1, rectX2, rectY2, viewPosition.getX() + rtsLayer.getHalfWidth(), viewPosition.getY() + rtsLayer.getHalfHeight())
                @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(@ADDING).append(rtsLayer.getName()).to_s, self, @METHOD)
                rtsLayer.select()
                self.getSelectedBuildingPlayerGameInput().addSelectedRTSLayer(rtsLayer)
            end
        end
        gameLayer = self.getSelectedBuildingPlayerGameInput().getLastSelectedRtsLayer()
        if gameLayer != ::Org::Allbinary::Game::Layer::Special::CollidableDestroyableDamageableLayer.getNullInstance()
            lastRTSLayer = gameLayer
            if lastRTSLayer.getScrollSelectionForm() != ::Org::Allbinary::Graphics::Form::ScrollSelectionForm.getNullScrollSelectionForm()
                self.updateForm(lastRTSLayer.getScrollSelectionForm(), lastRTSLayer.getRTSFormInput())
                self.setSelectedRtsLayer(lastRTSLayer)
            end
        end
        self.updatePaintable()
    end
    java_overload :makeSelection, 0
    

    # throws Exception
    def processSelectionBoxMotionInput(layerManager)
        (self.getMotionGestureInputList().size() - 1).step(0, -(1)) do |index|
            motionGestureEvent = self.getMotionGestureInputList().get(index)
            motionGestureInput = motionGestureEvent.getMotionGesture()
            point = motionGestureEvent.getCurrentPoint()
            if motionGestureInput == @touchMotionGestureFactory.PRESSED
                @startPoint = point
                @endPoint = point
            elsif motionGestureInput == @touchMotionGestureFactory.RELEASED
                @endPoint = point
                self.makeSelection()
                @startPoint = ::Org::Allbinary::Graphics::PointFactory.getInstance().ZERO_ZERO
                @endPoint = ::Org::Allbinary::Graphics::PointFactory.getInstance().ZERO_ZERO
            else
                @endPoint = point
            end
        end
    end
    java_overload :processSelectionBoxMotionInput, 1
    

    # throws Exception
    def processMotionInput(layerManager)
        if self.getMotionGestureInputList().size() > 0
            endDrag = self.processDraggingMotionInput(layerManager)
            if !@isDragging
                self.processSelectionBoxMotionInput(layerManager)
            end
            if endDrag
                @isDragging = false
            end
        end
        self.getMotionGestureInputList().clear()
    end
    java_overload :processMotionInput, 1
    

    def setSelectedRtsFormInput(selectedRtsFormInput)
        logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(::Org::Allbinary::StringPackage::CommonLabels.getInstance().START).append(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().toString(selectedRtsFormInput)).to_s, self, "setSelectedRtsFormInput")
        HumanRTSPlayerGameInput.superclass.java_super_method(:setSelectedRtsFormInput, 1).bind(self).call(selectedRtsFormInput)
        self.setSelectedRtsLayer(::Org::Allbinary::Game::Layer::Special::CollidableDestroyableDamageableLayer.getNullInstance())
    end
    java_overload :setSelectedRtsFormInput, 1
    

    def updateFormForLayer(rtsLayer)
        scrollSelectionForm = rtsLayer.getScrollSelectionForm()
        if scrollSelectionForm != ::Org::Allbinary::Graphics::Form::ScrollSelectionForm.getNullScrollSelectionForm() && self.getRtsPlayerLayerInterface().getGroupInterface()[0] == rtsLayer.getGroupInterface()[0]
            self.updateForm(scrollSelectionForm, rtsLayer.getRTSFormInput())
            self.getSelectedBuildingPlayerGameInput().setSelectedRTSLayer(::Org::Allbinary::Game::Layer::Special::CollidableDestroyableDamageableLayer.getNullInstance())
            self.setSelectedRtsLayer(rtsLayer)
        else
            self.getRtsPlayerLayerInterface().setCurrentScrollSelectionForm(self.getRtsPlayerLayerInterface().getBuildingScrollSelectionForm())
            self.setSelectedRtsFormInput(self.getRtsPlayerLayerInterface().getRTSFormInput())
            self.getSelectedBuildingPlayerGameInput().setSelectedRTSLayer(::Org::Allbinary::Game::Layer::Special::CollidableDestroyableDamageableLayer.getNullInstance())
        end
    end
    java_overload :updateFormForLayer, 1
    

    def updateForm(scrollSelectionForm, rtfFormInput)
        self.getRtsPlayerLayerInterface().setCurrentScrollSelectionForm(scrollSelectionForm)
        self.setSelectedRtsFormInput(rtfFormInput)
    end
    java_overload :updateForm, 2
    

    # throws Exception
    def setSelectedRTSLayer(rtSLayer, geographicMapCellPosition)
        if rtSLayer != ::Org::Allbinary::Game::Layer::Special::CollidableDestroyableDamageableLayer.getNullInstance() && self.getRtsPlayerLayerInterface().getGroupInterface()[0] != rtSLayer.getGroupInterface()[0]
            self.getRtsPlayerLayerInterface().add(::Org::Allbinary::Media::Audio::ErrorSound.getInstance())
            ::Org::Allbinary::Game::Layer::Hud::Event::GameNotificationEventHandler.getInstance().fireEvent(@notYoursGameNotificationEvent)
            return
        end
        gameCanvas = self.getGameCanvas()
        if rtSLayer != ::Org::Allbinary::Game::Layer::Special::CollidableDestroyableDamageableLayer.getNullInstance()
            self.getRtsPlayerLayerInterface().add(::Org::Allbinary::Media::Audio::SelectBuildingSound.getInstance())
            rtsLayer = rtSLayer
            rtsLayer.select()
            self.updateFormForLayer(rtsLayer)
            if gameCanvas.getGameState() == @gameStateFactory.PLAYING_GAME_STATE
                if rtsLayer.isSelfUpgradeable()
                    gameCanvas.updateCurrentTouchInputFactory(::Org::Allbinary::Input::Motion::Button::RTSTouchButtonsBuilder.new())
                else
                    gameCanvas.updateCurrentTouchInputFactory(::Org::Allbinary::Input::Motion::Button::NoBuildingSelectedTouchButtonsBuilder.new())
                end
            else
                endLevelTouchButtonsBuilder = ::Org::Allbinary::Input::Motion::Button::EndLevelTouchButtonsBuilder.new()
                if @touchButtonsBuilderFactory != nil
                    endLevelTouchButtonsBuilder.add(@touchButtonsBuilderFactory.getInstance())
                end
                gameCanvas.updateCurrentTouchInputFactory(endLevelTouchButtonsBuilder)
            end
        else
            @logUtil.putF("Set Player Default Form", self, "setSelectedRTSLayer")
            self.getRtsPlayerLayerInterface().setCurrentScrollSelectionForm(self.getRtsPlayerLayerInterface().getBuildingScrollSelectionForm())
            self.setSelectedRtsFormInput(self.getRtsPlayerLayerInterface().getRTSFormInput())
            self.getSelectedBuildingPlayerGameInput().setSelectedRTSLayer(::Org::Allbinary::Game::Layer::Special::CollidableDestroyableDamageableLayer.getNullInstance())
            if gameCanvas.getGameState() == @gameStateFactory.PLAYING_GAME_STATE
                gameCanvas.updateCurrentTouchInputFactory(::Org::Allbinary::Input::Motion::Button::NoBuildingSelectedTouchButtonsBuilder.new())
            else
                endLevelNoBuildingSelectedTouchButtonsBuilder = ::Org::Allbinary::Input::Motion::Button::EndLevelNoBuildingSelectedTouchButtonsBuilder.new()
                if @touchButtonsBuilderFactory != nil
                    endLevelNoBuildingSelectedTouchButtonsBuilder.add(@touchButtonsBuilderFactory.getInstance())
                end
                gameCanvas.updateCurrentTouchInputFactory(endLevelNoBuildingSelectedTouchButtonsBuilder)
            end
        end
        self.getSelectedRtsFormInput().setSelectedGeographicCellPosition(geographicMapCellPosition)
        self.getSelectedBuildingPlayerGameInput().setSelectedRTSLayer(rtSLayer)
        self.updatePaintable()
    end
    java_overload :setSelectedRTSLayer, 2
    

    def updatePaintable()
        list = self.getSelectedBuildingPlayerGameInput().getSelectedBasicArrayList()
        if list.size() > 1
            geographicMapCompositeInterface = self.getGameCanvas()
            geographicMapInterface = geographicMapCompositeInterface.getGeographicMapInterface()[0]
            @multiSelectPaintable.setBasicColorP(geographicMapInterface.getForegroundBasicColor())
            @multiSelectPaintable.update(list)
            self.getRTSLayerInfoPaintable().updateRTSLayerInfoSelection(@multiSelectPaintable)
        elsif list.size() == 1
            rtsLayer = list.get(0)
            self.getRTSLayerInfoPaintable().updateRTSLayerInfoSelection(rtsLayer.createHudPaintable())
        else
            self.getRTSLayerInfoPaintable().updateRTSLayerInfoInit(::Org::Allbinary::Graphics::Paint::NullInitUpdatePaintable.getInstance())
        end
    end
    java_overload :updatePaintable, 0
    

    def paint(graphics)
        HumanRTSPlayerGameInput.superclass.java_super_method(:paint, 1).bind(self).call(graphics)
        if @startPoint != ::Org::Allbinary::Graphics::PointFactory.getInstance().ZERO_ZERO && @endPoint != ::Org::Allbinary::Graphics::PointFactory.getInstance().ZERO_ZERO
            graphics.setColor(::Org::Allbinary::Graphics::Color::BasicColorFactory.getInstance().RED.to_i)
            rectX1 = @startPoint.getX()
            rectY1 = @startPoint.getY()
            rectX2 = @endPoint.getX()
            rectY2 = @endPoint.getY()
            if rectX1 > rectX2
                rectX2 = rectX1
                rectX1 = @endPoint.getX()
            end
            if rectY1 > rectY2
                rectY2 = rectY1
                rectY1 = @endPoint.getY()
            end
            graphics.drawRect(rectX1, rectY1, rectX2 - rectX1, rectY2 - rectY1)
        end
    end
    java_overload :paint, 1
    

    def onMotionGestureEvent(motionGestureEvent)
        self.getMotionGestureInputList().add(motionGestureEvent)
    end
    java_overload :onMotionGestureEvent, 1
    

    def onScrolledMotionGestureEvent(motionGestureEvent)
    end
    java_overload :onScrolledMotionGestureEvent, 1
    

    def getSelectedRtsLayer()
        return @selectedRtsLayer
    end
    java_overload :getSelectedRtsLayer, 0
    

    def setSelectedRtsLayer(selectedRtsLayer)
        @selectedRtsLayer = selectedRtsLayer
    end
    java_overload :setSelectedRtsLayer, 1
end

module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Game; module Input; module Form; autoload :RTSFormInput, "org/allbinary/game/input/form/RTSFormInput" unless const_defined?(:RTSFormInput, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :MultiSelectPaintable, "org/allbinary/game/layer/MultiSelectPaintable" unless const_defined?(:MultiSelectPaintable, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :RTSGameStrings, "org/allbinary/game/layer/RTSGameStrings" unless const_defined?(:RTSGameStrings, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :RTSLayer, "org/allbinary/game/layer/RTSLayer" unless const_defined?(:RTSLayer, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :RTSLayerInfoPaintable, "org/allbinary/game/layer/RTSLayerInfoPaintable" unless const_defined?(:RTSLayerInfoPaintable, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :RTSPlayerLayerInterface, "org/allbinary/game/layer/RTSPlayerLayerInterface" unless const_defined?(:RTSPlayerLayerInterface, false); end; end; end; end
module ::Org; module Allbinary; module Game; module State; autoload :GameStateFactory, "org/allbinary/game/state/GameStateFactory" unless const_defined?(:GameStateFactory, false); end; end; end; end
module ::Org; module Allbinary; module Input; module Motion; module Button; autoload :EndLevelNoBuildingSelectedTouchButtonsBuilder, "org/allbinary/input/motion/button/EndLevelNoBuildingSelectedTouchButtonsBuilder" unless const_defined?(:EndLevelNoBuildingSelectedTouchButtonsBuilder, false); end; end; end; end; end
module ::Org; module Allbinary; module Input; module Motion; module Button; autoload :EndLevelTouchButtonsBuilder, "org/allbinary/input/motion/button/EndLevelTouchButtonsBuilder" unless const_defined?(:EndLevelTouchButtonsBuilder, false); end; end; end; end; end
module ::Org; module Allbinary; module Input; module Motion; module Button; autoload :NoBuildingSelectedTouchButtonsBuilder, "org/allbinary/input/motion/button/NoBuildingSelectedTouchButtonsBuilder" unless const_defined?(:NoBuildingSelectedTouchButtonsBuilder, false); end; end; end; end; end
module ::Org; module Allbinary; module Input; module Motion; module Button; autoload :RTSTouchButtonsBuilder, "org/allbinary/input/motion/button/RTSTouchButtonsBuilder" unless const_defined?(:RTSTouchButtonsBuilder, false); end; end; end; end; end
module ::Org; module Allbinary; module Media; module Audio; autoload :SelectBuildingSound, "org/allbinary/media/audio/SelectBuildingSound" unless const_defined?(:SelectBuildingSound, false); end; end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Java; module Bool; autoload :BooleanFactory, "org/allbinary/logic/java/bool/BooleanFactory" unless const_defined?(:BooleanFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Displayable; module Canvas; autoload :AllBinaryGameCanvas, "org/allbinary/game/displayable/canvas/AllBinaryGameCanvas" unless const_defined?(:AllBinaryGameCanvas, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :AllBinaryGameLayerManager, "org/allbinary/game/layer/AllBinaryGameLayerManager" unless const_defined?(:AllBinaryGameLayerManager, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Hud; module Event; autoload :GameNotificationEvent, "org/allbinary/game/layer/hud/event/GameNotificationEvent" unless const_defined?(:GameNotificationEvent, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Hud; module Event; autoload :GameNotificationEventHandler, "org/allbinary/game/layer/hud/event/GameNotificationEventHandler" unless const_defined?(:GameNotificationEventHandler, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Special; autoload :CollidableDestroyableDamageableLayer, "org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer" unless const_defined?(:CollidableDestroyableDamageableLayer, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; autoload :GPoint, "org/allbinary/graphics/GPoint" unless const_defined?(:GPoint, false); end; end; end
module ::Org; module Allbinary; module Graphics; autoload :PointFactory, "org/allbinary/graphics/PointFactory" unless const_defined?(:PointFactory, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColorFactory, "org/allbinary/graphics/color/BasicColorFactory" unless const_defined?(:BasicColorFactory, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Form; autoload :ScrollSelectionForm, "org/allbinary/graphics/form/ScrollSelectionForm" unless const_defined?(:ScrollSelectionForm, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Form; module Item; autoload :ABCustomItem, "org/allbinary/graphics/form/item/ABCustomItem" unless const_defined?(:ABCustomItem, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Paint; autoload :NullInitUpdatePaintable, "org/allbinary/graphics/paint/NullInitUpdatePaintable" unless const_defined?(:NullInitUpdatePaintable, false); end; end; end; end
module ::Org; module Allbinary; module Input; module Motion; module Button; autoload :TouchButtonsBuilderFactory, "org/allbinary/input/motion/button/TouchButtonsBuilderFactory" unless const_defined?(:TouchButtonsBuilderFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Input; module Motion; module Gesture; autoload :MotionGestureInput, "org/allbinary/input/motion/gesture/MotionGestureInput" unless const_defined?(:MotionGestureInput, false); end; end; end; end; end
module ::Org; module Allbinary; module Input; module Motion; module Gesture; autoload :TouchMotionGestureFactory, "org/allbinary/input/motion/gesture/TouchMotionGestureFactory" unless const_defined?(:TouchMotionGestureFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Input; module Motion; module Gesture; module Observer; autoload :BasicMotionGesturesHandler, "org/allbinary/input/motion/gesture/observer/BasicMotionGesturesHandler" unless const_defined?(:BasicMotionGesturesHandler, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Input; module Motion; module Gesture; module Observer; autoload :MotionGestureEvent, "org/allbinary/input/motion/gesture/observer/MotionGestureEvent" unless const_defined?(:MotionGestureEvent, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayerManager, "org/allbinary/layer/AllBinaryLayerManager" unless const_defined?(:AllBinaryLayerManager, false); end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :SmallIntegerSingletonFactory, "org/allbinary/logic/math/SmallIntegerSingletonFactory" unless const_defined?(:SmallIntegerSingletonFactory, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonLabels, "org/allbinary/string/CommonLabels" unless const_defined?(:CommonLabels, false); end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module MathPackage; autoload :RectangleCollisionUtil, "org/allbinary/math/RectangleCollisionUtil" unless const_defined?(:RectangleCollisionUtil, false); end; end; end
module ::Org; module Allbinary; module Media; module Audio; autoload :ErrorSound, "org/allbinary/media/audio/ErrorSound" unless const_defined?(:ErrorSound, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :BasicGeographicMap, "org/allbinary/media/graphics/geography/map/BasicGeographicMap" unless const_defined?(:BasicGeographicMap, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellPosition, "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition" unless const_defined?(:GeographicMapCellPosition, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCompositeInterface, "org/allbinary/media/graphics/geography/map/GeographicMapCompositeInterface" unless const_defined?(:GeographicMapCompositeInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module View; autoload :ViewPositionBase, "org/allbinary/view/ViewPositionBase" unless const_defined?(:ViewPositionBase, false); end; end; end
autoload :LayerPositionFinderInterface, "org/allbinary/game/input/LayerPositionFinderInterface" unless const_defined?(:LayerPositionFinderInterface, false)
autoload :SelectRTSLayerVisitorFactoryInterface, "org/allbinary/game/input/SelectRTSLayerVisitorFactoryInterface" unless const_defined?(:SelectRTSLayerVisitorFactoryInterface, false)

end; end; end; end

