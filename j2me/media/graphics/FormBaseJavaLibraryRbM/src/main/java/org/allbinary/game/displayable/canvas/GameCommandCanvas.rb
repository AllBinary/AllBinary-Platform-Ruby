#
# AllBinary Open License Version 1
# Copyright (c) 2011 AllBinary
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
# package org.allbinary.game.displayable.canvas

# require "javax/microedition/lcdui/CommandListener"
# require "javax/microedition/lcdui/Font"
# require "javax/microedition/lcdui/Graphics"
# require "javax/microedition/lcdui/NullCommandListener"
require "org/allbinary/graphics/displayable/MyCanvas"
require "org/allbinary/graphics/displayable/event/DisplayChangeEventListener"
require "org/allbinary/graphics/font/UpdateMyFontInterface"
require "org/allbinary/game/displayable/canvas/MenuListener"

class GameCommandCanvas < MyCanvas
    include MenuListener
    include DisplayChangeEventListener
    include UpdateMyFontInterface
    attr_accessor :repaintProcessor, :gameInputStrings, :foregroundBasicColor, :backgroundBasicColor, :inputToGameKeyMapping, :gameKeyFactory, :gameKeyEventFactory, :downGameKeyEventHandler, :upGameKeyEventHandler, :repaintBehavior, :updateMyFontProcessor, :myFontProcessor, :foregroundColor, :backgroundColor, :menuInputProcessor, :menuPaintable, :menuForm, :isSingleKeyRepeatableProcessing, :fontHeight

    def initialize_fields
        @repaintProcessor = ScreenRepaintProcessorFactory.getInstance().create(self)
        @gameInputStrings = GameInputStrings.getInstance()
        @foregroundBasicColor = nil
        @backgroundBasicColor = nil
        @inputToGameKeyMapping = PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance().getInputMapping()
        @gameKeyFactory = GameKeyFactory.getInstance()
        @gameKeyEventFactory = GameKeyEventFactory.getInstance()
        @downGameKeyEventHandler = DownGameKeyEventHandler.getInstance()
        @upGameKeyEventHandler = UpGameKeyEventHandler.getInstance()
        @repaintBehavior = nil
        @updateMyFontProcessor = UpdateMyFontProcessor.new(self)
        @myFontProcessor = @updateMyFontProcessor
        @foregroundColor = nil
        @backgroundColor = nil
        @menuInputProcessor = NoMenuInputProcessor.getInstance()
        @menuPaintable = NullPaintable.getInstance()
        @menuForm = PaintableForm.getNullPaintableForm()
        @isSingleKeyRepeatableProcessing = Features.getInstance().isFeature(InputFeatureFactory.getInstance().SINGLE_KEY_REPEAT_PRESS)
        @fontHeight = 0
    end
    

    def initialize(cmdListener, name, backgroundBasicColor, foregroundBasicColor)
        super(name, CanvasStrings.getInstance().EMPTY_CHILD_NAME_LIST)
        initialize_fields
        @repaintBehavior = RepaintBehavior.getInstance()
        @foregroundBasicColor = foregroundBasicColor
        @backgroundBasicColor = backgroundBasicColor
        @foregroundColor = @foregroundBasicColor.to_i
        @backgroundColor = @backgroundBasicColor.to_i
        self.initCommands(cmdListener)
        if cmdListener != NullCommandListener::NULL_COMMAND_LISTENER
            begin
                self.initMenu()
                @repaintProcessor.process()
            rescue StandardError => e
                raise RuntimeError.new()
            end
        end
    end
    

    def updateMeasurement(graphics)
        begin
            font = graphics.getFont()
            @logUtil.putF(StringMaker.new().append(@commonStrings.START).append(@canvasStrings.FD_WIDTH).appendint((MyFontProcessor.defaultCharWidth(font)).to_i).append(@canvasStrings.FD_HEIGHT).appendint((font.getHeight()).to_i).to_s, self, @canvasStrings.UPDATE_MEASUREMENT)
            @fontHeight = font.getHeight()
            rectangle = self.createRectangle(@menuForm.size())
            @menuForm.init(rectangle, FormTypeFactory.getInstance().VERTICAL_CENTER_FORM)
            self.update()
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @canvasStrings.ON_DISPLAY_CHANGE_EVENT, e)
        end
        @myFontProcessor = MyFontProcessor.getInstance()
    end
    

    def onEvent(eventObject)
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, self)
    end
    

    def onDisplayChangeEvent(displayChangeEvent)
        @logUtil.putF(StringMaker.new().append(@commonStrings.START).append(DisplayInfoSingleton.getInstance().to_s).to_s, self, @canvasStrings.ON_DISPLAY_CHANGE_EVENT)
        @myFontProcessor = @updateMyFontProcessor
    end
    

    def initCommands(cmdListener)
        self.removeAllCommands()
        self.addCommand(GameCommandsFactory.getInstance().CLOSE_AND_SHOW_GAME_CANVAS)
        self.setCommandListener(cmdListener)
    end
    

    # throws Exception
    def initMenu()
        form = self.createForm()
        @menuForm = form
        if form != ScrollSelectionFormNoneFactory.getInstance()
            self.setMenuInputProcessor(ImmediateCommandFormInputProcessor.new(BasicArrayListD.new(), -1, self, form))
            @menuPaintable = FormPaintable.new(form)
        end
        @repaintBehavior.onChangeRepaint(self)
    end
    

    # throws Exception
    def createForm()
        items = CommandTextItemArrayFactory.new(AllCommandsVisitor.new()).getInstance(self.getCommandStack(), @backgroundBasicColor, @foregroundBasicColor)
        rectangle = self.createRectangle(items.length)
        return CommandCurrentSelectionFormFactory.getInstance(StringUtil.getInstance().EMPTY_STRING, items, rectangle, FormTypeFactory.getInstance().VERTICAL_CENTER_FORM, 15, false, @backgroundBasicColor, @foregroundBasicColor)
    end
    

    def createRectangle(size)
        height = size * @fontHeight
        startY = (@displayInfo.getLastHeight() * 2 / 3) - height
        pointFactory = PointFactory.getInstance()
        rectangle = Rectangle.new(pointFactory.createXY(30, startY), @displayInfo.getLastWidth() - 30, startY)
        return rectangle
    end
    

    def open()
        @logUtil.putF(@commonStrings.START, self, "open")
        BasicMotionGesturesHandler.getInstance().addListenerInterface(self.getMenuInputProcessor())
        GameKeyEventHandler.getInstance().addListener(self.getMenuInputProcessor())
        DisplayChangeEventHandler.getInstance().addListenerInterface(self)
    end
    

    # throws Exception
    def close()
        @logUtil.putF(@commonStrings.START, self, @commonStrings.CLOSE)
        BasicMotionGesturesHandler.getInstance().removeListener(self.getMenuInputProcessor())
        GameKeyEventHandler.getInstance().removeListener(self.getMenuInputProcessor())
        DisplayChangeEventHandler.getInstance().removeListener(self)
    end
    

    # throws Exception
    def update()
        @repaintProcessor.process()
    end
    

    def getSourceId()
        return GameCommandCanvas.id
    end
    

    def keyPressed(keyCode)
        self.keyPressedByDevice(keyCode, 0)
    end
    

    def keyReleased(keyCode)
        self.keyReleasedByDevice(keyCode, 0)
    end
    

    def keyRepeated(keyCode)
        self.keyRepeatedByDevice(keyCode, 0)
    end
    

    def keyPressedByDevice(keyCode, deviceId)
        @logUtil.putF(StringMaker.new().append(CommonSeps.getInstance().SPACE).appendint(keyCode).to_s, self, @gameInputStrings.KEY_PRESSED)
        self.addGameKeyEvent(keyCode, 0, false)
    end
    

    def keyReleasedByDevice(keyCode, deviceId)
        self.removeGameKeyEvent(keyCode, deviceId, false)
    end
    

    def keyRepeatedByDevice(keyCode, deviceId)
        if @isSingleKeyRepeatableProcessing
            self.addGameKeyEvent(keyCode, deviceId, true)
        end
    end
    

    def addGameKeyEvent(keyCode, deviceId, repeated)
        begin
            gameKey = @inputToGameKeyMapping.getInstanceForCanvas(self, keyCode)
            if gameKey != @gameKeyFactory.NONE
                gameKeyEvent = @gameKeyEventFactory.getInstanceForInput(self, gameKey)
                @downGameKeyEventHandler.fireEvent(gameKeyEvent)
                @downGameKeyEventHandler.getInstanceForDevice(deviceId).fireEvent(gameKeyEvent)
            else
                @logUtil.putF(StringMaker.new().append(@gameInputStrings.NO_KEY).appendint(keyCode).to_s, self, @gameInputStrings.ADD_KEY_EVENT)
            end
        rescue StandardError => e
            @logUtil.put("Key Event Error", self, @gameInputStrings.ADD_KEY_EVENT, e)
        end
    end
    

    def removeGameKeyEvent(keyCode, deviceId, repeated)
        begin
            gameKey = @inputToGameKeyMapping.getInstanceForCanvas(self, keyCode)
            if gameKey != @gameKeyFactory.NONE
                gameKeyEvent = @gameKeyEventFactory.getInstanceForInput(self, gameKey)
                @upGameKeyEventHandler.fireEvent(gameKeyEvent)
                @upGameKeyEventHandler.getInstanceForDevice(deviceId).fireEvent(gameKeyEvent)
            else
                @logUtil.putF(StringMaker.new().append(@gameInputStrings.NO_KEY).appendint(keyCode).to_s, self, @gameInputStrings.REMOVE_KEY_EVENT)
            end
        rescue StandardError => e
            @logUtil.put("Key Event Error", self, @gameInputStrings.REMOVE_KEY_EVENT, e)
        end
    end
    

    def paint(graphics)
        @myFontProcessor.process(graphics)
        @menuPaintable.paint(graphics)
        @repaintBehavior.repaint(self)
    end
    

    def setMenuInputProcessor(menuInputProcessor)
        @menuInputProcessor = menuInputProcessor
    end
    

    def getMenuInputProcessor()
        return @menuInputProcessor
    end

    def self.id()
        return defined?(@@id) ? @@id : nil
    end

    def self.id=(value)
        @@id = value
    end
end

require "org/allbinary/canvas/Processor"
require "org/allbinary/game/commands/GameCommandsFactory"
require "org/allbinary/game/configuration/feature/Features"
require "org/allbinary/game/configuration/feature/InputFeatureFactory"
require "org/allbinary/game/displayable/RepaintBehavior"
require "org/allbinary/game/input/GameInputStrings"
require "org/allbinary/game/input/GameKey"
require "org/allbinary/game/input/GameKeyFactory"
require "org/allbinary/game/input/PlatformInputMappingFactory"
require "org/allbinary/game/input/event/DownGameKeyEventHandler"
require "org/allbinary/game/input/event/GameKeyEvent"
require "org/allbinary/game/input/event/GameKeyEventFactory"
require "org/allbinary/game/input/event/GameKeyEventHandler"
require "org/allbinary/game/input/event/UpGameKeyEventHandler"
require "org/allbinary/game/input/mapping/InputToGameKeyMapping"
require "org/allbinary/graphics/PointFactory"
require "org/allbinary/graphics/Rectangle"
require "org/allbinary/graphics/color/BasicColor"
require "org/allbinary/graphics/displayable/CanvasStrings"
require "org/allbinary/graphics/displayable/DisplayInfoSingleton"
require "org/allbinary/graphics/displayable/event/DisplayChangeEvent"
require "org/allbinary/graphics/displayable/event/DisplayChangeEventHandler"
require "org/allbinary/graphics/displayable/screen/ScreenRepaintProcessorFactory"
require "org/allbinary/graphics/font/MyFontProcessor"
require "org/allbinary/graphics/font/UpdateMyFontProcessor"
require "org/allbinary/graphics/form/CommandCurrentSelectionFormFactory"
require "org/allbinary/graphics/form/FormPaintable"
require "org/allbinary/graphics/form/FormTypeFactory"
require "org/allbinary/graphics/form/PaintableForm"
require "org/allbinary/graphics/form/ScrollSelectionForm"
require "org/allbinary/graphics/form/ScrollSelectionFormNoneFactory"
require "org/allbinary/graphics/form/item/CommandTextItemArrayFactory"
require "org/allbinary/graphics/form/item/ABCustomItem"
require "org/allbinary/graphics/form/item/validation/AllCommandsVisitor"
require "org/allbinary/graphics/paint/NullPaintable"
require "org/allbinary/graphics/paint/Paintable"
require "org/allbinary/input/motion/gesture/observer/BasicMotionGesturesHandler"
require "org/allbinary/logic/communication/log/ForcedLogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/logic/util/event/AllBinaryEventObject"
require "org/allbinary/logic/util/event/EventStrings"
require "org/allbinary/string/CommonSeps"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/game/displayable/canvas/BasicMenuInputProcessor"
require "org/allbinary/game/displayable/canvas/ImmediateCommandFormInputProcessor"
require "org/allbinary/game/displayable/canvas/NoMenuInputProcessor"

class GameCommandCanvas
    @@id = 0
end

