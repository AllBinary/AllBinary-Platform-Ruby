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

# require "javax/microedition/lcdui/Graphics"
require "org/allbinary/input/motion/gesture/observer/BaseMotionGestureEventListener"
require "org/allbinary/game/input/RTSPlayerGameInput"

class HumanRTSPlayerGameInput < RTSPlayerGameInput
    include BaseMotionGestureEventListener
    attr_accessor :isDragging, :gameStateFactory, :rectangleCollisionUtil, :touchMotionGestureFactory, :PRESSED, :RELEASED, :touchButtonsBuilderFactory, :notYoursGameNotificationEvent, :selectedRtsLayer, :startPoint, :endPoint, :POSSIBLE, :AT, :METHOD, :ADDING, :SPACE, :multiSelectPaintable

    def initialize_fields
        @isDragging = false
        @gameStateFactory = GameStateFactory.getInstance()
        @rectangleCollisionUtil = RectangleCollisionUtil.getInstance()
        @touchMotionGestureFactory = TouchMotionGestureFactory.getInstance()
        @PRESSED = @touchMotionGestureFactory.PRESSED
        @RELEASED = @touchMotionGestureFactory.RELEASED
        @touchButtonsBuilderFactory = nil
        @notYoursGameNotificationEvent = nil
        @selectedRtsLayer = CollidableDestroyableDamageableLayer.getNullInstance()
        @startPoint = PointFactory.getInstance().ZERO_ZERO
        @endPoint = PointFactory.getInstance().ZERO_ZERO
        @POSSIBLE = "Possible: "
        @AT = "At: "
        @METHOD = "makeSelection"
        @ADDING = "Adding: "
        @SPACE = CommonSeps.getInstance().SPACE
        @multiSelectPaintable = MultiSelectPaintable.new()
    end
    

    def initialize(gameCanvas, inputList, playerInputId, towerInfoPaintable, rtsPlayerLayerInterface, layerPositionFinderInterface, selectRTSLayerVisitorFactoryInterface, touchButtonsBuilderFactory)
        super(gameCanvas, inputList, playerInputId, towerInfoPaintable, rtsPlayerLayerInterface, layerPositionFinderInterface, selectRTSLayerVisitorFactoryInterface)
        initialize_fields
        @touchButtonsBuilderFactory = touchButtonsBuilderFactory
        basicColorFactory = BasicColorFactory.getInstance()
        @notYoursGameNotificationEvent = GameNotificationEvent.new(self, RTSGameStrings.getInstance().NOT_YOURS, SmallIntegerSingletonFactory.getInstance().getAt(2), basicColorFactory.PINK, BooleanFactory.getInstance().FALSE)
        BasicMotionGesturesHandler.getInstance().addListenerInterface(self)
    end
    

    # throws Exception
    def setAllBinaryGameLayerManager(allBinaryGameLayerManager)
        geographicMapCompositeInterface = allBinaryGameLayerManager
        geographicMapInterface = geographicMapCompositeInterface.getGeographicMapInterface()[0]
        @notYoursGameNotificationEvent.setBasicColorP(geographicMapInterface.getForegroundBasicColor())
    end
    

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
            rtsFormInput.setSelectedStickyItem(ABCustomItem.getNullInstance())
            rtsFormInput.setSelectedStickyItemIndex(-1)
            return true
        end
        return false
    end
    

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
        stringBuffer = StringMaker.new()
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
            stringBuffer.appendint(((viewPosition.getX() + rtsLayer.getHalfWidth())).to_i)
            stringBuffer.append(@SPACE)
            stringBuffer.appendint(((viewPosition.getY() + rtsLayer.getHalfHeight())).to_i)
            @logUtil.putF(stringBuffer.to_s, self, @METHOD)
            if @rectangleCollisionUtil.isInside(rectX1, rectY1, rectX2, rectY2, viewPosition.getX() + rtsLayer.getHalfWidth(), viewPosition.getY() + rtsLayer.getHalfHeight())
                @logUtil.putF(StringMaker.new().append(@ADDING).append(rtsLayer.getName()).to_s, self, @METHOD)
                rtsLayer.select()
                self.getSelectedBuildingPlayerGameInput().addSelectedRTSLayer(rtsLayer)
            end
        end
        gameLayer = self.getSelectedBuildingPlayerGameInput().getLastSelectedRtsLayer()
        if gameLayer != CollidableDestroyableDamageableLayer.getNullInstance()
            lastRTSLayer = gameLayer
            if lastRTSLayer.getScrollSelectionForm() != ScrollSelectionForm.getNullScrollSelectionForm()
                self.updateForm(lastRTSLayer.getScrollSelectionForm(), lastRTSLayer.getRTSFormInput())
                self.setSelectedRtsLayer(lastRTSLayer)
            end
        end
        self.updatePaintable()
    end
    

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
                @startPoint = PointFactory.getInstance().ZERO_ZERO
                @endPoint = PointFactory.getInstance().ZERO_ZERO
            else
                @endPoint = point
            end
        end
    end
    

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
    

    def setSelectedRtsFormInput(selectedRtsFormInput)
        logUtil = LogUtil.getInstance()
        @logUtil.putF(StringMaker.new().append(CommonLabels.getInstance().START).append(StringUtil.getInstance().toString(selectedRtsFormInput)).to_s, self, "setSelectedRtsFormInput")
        super(selectedRtsFormInput)
        self.setSelectedRtsLayer(CollidableDestroyableDamageableLayer.getNullInstance())
    end
    

    def updateFormForLayer(rtsLayer)
        scrollSelectionForm = rtsLayer.getScrollSelectionForm()
        if scrollSelectionForm != ScrollSelectionForm.getNullScrollSelectionForm() && self.getRtsPlayerLayerInterface().getGroupInterface()[0] == rtsLayer.getGroupInterface()[0]
            self.updateForm(scrollSelectionForm, rtsLayer.getRTSFormInput())
            self.getSelectedBuildingPlayerGameInput().setSelectedRTSLayer(CollidableDestroyableDamageableLayer.getNullInstance())
            self.setSelectedRtsLayer(rtsLayer)
        else
            self.getRtsPlayerLayerInterface().setCurrentScrollSelectionForm(self.getRtsPlayerLayerInterface().getBuildingScrollSelectionForm())
            self.setSelectedRtsFormInput(self.getRtsPlayerLayerInterface().getRTSFormInput())
            self.getSelectedBuildingPlayerGameInput().setSelectedRTSLayer(CollidableDestroyableDamageableLayer.getNullInstance())
        end
    end
    

    def updateForm(scrollSelectionForm, rtfFormInput)
        self.getRtsPlayerLayerInterface().setCurrentScrollSelectionForm(scrollSelectionForm)
        self.setSelectedRtsFormInput(rtfFormInput)
    end
    

    # throws Exception
    def setSelectedRTSLayer(rtSLayer, geographicMapCellPosition)
        if rtSLayer != CollidableDestroyableDamageableLayer.getNullInstance() && self.getRtsPlayerLayerInterface().getGroupInterface()[0] != rtSLayer.getGroupInterface()[0]
            self.getRtsPlayerLayerInterface().add(ErrorSound.getInstance())
            GameNotificationEventHandler.getInstance().fireEvent(@notYoursGameNotificationEvent)
            return
        end
        gameCanvas = self.getGameCanvas()
        if rtSLayer != CollidableDestroyableDamageableLayer.getNullInstance()
            self.getRtsPlayerLayerInterface().add(SelectBuildingSound.getInstance())
            rtsLayer = rtSLayer
            rtsLayer.select()
            self.updateFormForLayer(rtsLayer)
            if gameCanvas.getGameState() == @gameStateFactory.PLAYING_GAME_STATE
                if rtsLayer.isSelfUpgradeable()
                    gameCanvas.updateCurrentTouchInputFactory(RTSTouchButtonsBuilder.new())
                else
                    gameCanvas.updateCurrentTouchInputFactory(NoBuildingSelectedTouchButtonsBuilder.new())
                end
            else
                endLevelTouchButtonsBuilder = EndLevelTouchButtonsBuilder.new()
                if @touchButtonsBuilderFactory != nil
                    endLevelTouchButtonsBuilder.add(@touchButtonsBuilderFactory.getInstance())
                end
                gameCanvas.updateCurrentTouchInputFactory(endLevelTouchButtonsBuilder)
            end
        else
            @logUtil.putF("Set Player Default Form", self, "setSelectedRTSLayer")
            self.getRtsPlayerLayerInterface().setCurrentScrollSelectionForm(self.getRtsPlayerLayerInterface().getBuildingScrollSelectionForm())
            self.setSelectedRtsFormInput(self.getRtsPlayerLayerInterface().getRTSFormInput())
            self.getSelectedBuildingPlayerGameInput().setSelectedRTSLayer(CollidableDestroyableDamageableLayer.getNullInstance())
            if gameCanvas.getGameState() == @gameStateFactory.PLAYING_GAME_STATE
                gameCanvas.updateCurrentTouchInputFactory(NoBuildingSelectedTouchButtonsBuilder.new())
            else
                endLevelNoBuildingSelectedTouchButtonsBuilder = EndLevelNoBuildingSelectedTouchButtonsBuilder.new()
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
            self.getRTSLayerInfoPaintable().updateRTSLayerInfoInit(NullInitUpdatePaintable.getInstance())
        end
    end
    

    def paint(graphics)
        super(graphics)
        if @startPoint != PointFactory.getInstance().ZERO_ZERO && @endPoint != PointFactory.getInstance().ZERO_ZERO
            graphics.setColor(BasicColorFactory.getInstance().RED.to_i)
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
    

    def onMotionGestureEvent(motionGestureEvent)
        self.getMotionGestureInputList().add(motionGestureEvent)
    end
    

    def onScrolledMotionGestureEvent(motionGestureEvent)
    end
    

    def getSelectedRtsLayer()
        return @selectedRtsLayer
    end
    

    def setSelectedRtsLayer(selectedRtsLayer)
        @selectedRtsLayer = selectedRtsLayer
    end
end

require "org/allbinary/game/input/form/RTSFormInput"
require "org/allbinary/game/layer/MultiSelectPaintable"
require "org/allbinary/game/layer/RTSGameStrings"
require "org/allbinary/game/layer/RTSLayer"
require "org/allbinary/game/layer/RTSLayerInfoPaintable"
require "org/allbinary/game/layer/RTSPlayerLayerInterface"
require "org/allbinary/game/state/GameStateFactory"
require "org/allbinary/input/motion/button/EndLevelNoBuildingSelectedTouchButtonsBuilder"
require "org/allbinary/input/motion/button/EndLevelTouchButtonsBuilder"
require "org/allbinary/input/motion/button/NoBuildingSelectedTouchButtonsBuilder"
require "org/allbinary/input/motion/button/RTSTouchButtonsBuilder"
require "org/allbinary/media/audio/SelectBuildingSound"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/string/CommonSeps"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/java/bool/BooleanFactory"
require "org/allbinary/game/displayable/canvas/AllBinaryGameCanvas"
require "org/allbinary/game/layer/AllBinaryGameLayerManager"
require "org/allbinary/game/layer/hud/event/GameNotificationEvent"
require "org/allbinary/game/layer/hud/event/GameNotificationEventHandler"
require "org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer"
require "org/allbinary/graphics/GPoint"
require "org/allbinary/graphics/PointFactory"
require "org/allbinary/graphics/color/BasicColorFactory"
require "org/allbinary/graphics/form/ScrollSelectionForm"
require "org/allbinary/graphics/form/item/ABCustomItem"
require "org/allbinary/graphics/paint/NullInitUpdatePaintable"
require "org/allbinary/input/motion/button/TouchButtonsBuilderFactory"
require "org/allbinary/input/motion/gesture/MotionGestureInput"
require "org/allbinary/input/motion/gesture/TouchMotionGestureFactory"
require "org/allbinary/input/motion/gesture/observer/BasicMotionGesturesHandler"
require "org/allbinary/input/motion/gesture/observer/MotionGestureEvent"
require "org/allbinary/layer/AllBinaryLayerManager"
require "org/allbinary/logic/math/SmallIntegerSingletonFactory"
require "org/allbinary/string/CommonLabels"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/math/RectangleCollisionUtil"
require "org/allbinary/media/audio/ErrorSound"
require "org/allbinary/media/graphics/geography/map/BasicGeographicMap"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition"
require "org/allbinary/media/graphics/geography/map/GeographicMapCompositeInterface"
require "org/allbinary/view/ViewPositionBase"
require "org/allbinary/game/input/LayerPositionFinderInterface"
require "org/allbinary/game/input/SelectRTSLayerVisitorFactoryInterface"

