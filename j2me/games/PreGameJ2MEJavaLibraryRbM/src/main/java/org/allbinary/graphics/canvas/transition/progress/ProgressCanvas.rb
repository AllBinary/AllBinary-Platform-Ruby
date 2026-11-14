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
# package org.allbinary.graphics.canvas.transition.progress

require "org/allbinary/canvas/RunnableCanvas"
require "org/allbinary/graphics/font/UpdateMyFontInterface"
require "org/allbinary/graphics/paint/PaintableInterface"

class ProgressCanvas < RunnableCanvas
    include PaintableInterface
    include UpdateMyFontInterface
    attr_accessor :hasPainted, :backgroundBasicColor, :GAUGE_PAINTABLE, :maxValue, :gauge, :TEXT, :updateMyFontProcessor, :myFontProcessor, :allbinaryMidlet, :value, :text, :background, :paintable, :inProgress, :IN_GAME_PROCESSOR, :inGameProcessor, :progressEndListener, :backgroundLabel, :START_BACKGROUND, :ADD_PORTION, :ADD_EARLY_PORTION

    def initialize_fields
        @hasPainted = false
        @backgroundBasicColor = nil
        @GAUGE_PAINTABLE = ProgressPaintable.new(self)
        @maxValue = 100.0
        @gauge = nil
        @TEXT = @commonStrings.LOADING
        @updateMyFontProcessor = UpdateMyFontProcessor.new(self)
        @myFontProcessor = @updateMyFontProcessor
        @allbinaryMidlet = AllBinaryMidlet.getNullInstance()
        @value = 0.0
        @text = @TEXT
        @background = true
        @paintable = @GAUGE_PAINTABLE
        @inProgress = false
        @IN_GAME_PROCESSOR = Class.new(Processor.is_a?(Class) ? Processor : Object) do
        include(Processor) unless Processor.is_a?(Class)
        @pathFindingThreadPool = PathFindingThreadPool.getInstance()
        

        # throws Exception
        def process()
            @pathFindingThreadPool.runAPriorityTask()
        end
    end.new()
        @inGameProcessor = Processor.getInstance()
        @progressEndListener = ProgressEndListener.instance
        @backgroundLabel = "Background AI Game Loading..."
        @START_BACKGROUND = "startBackground"
        @ADD_PORTION = "addPortion"
        @ADD_EARLY_PORTION = "addEarlyPortion"
    end
    

    def initialize(title, backgroundBasicColor, foregroundBasicColor)
        super(NullCommandListener::NULL_COMMAND_LISTENER, CanvasStrings.getInstance().EMPTY_CHILD_NAME_LIST, false)
        initialize_fields
        @backgroundBasicColor = backgroundBasicColor
        @gauge = ABCustomGaugeItem.new(StringUtil.getInstance().EMPTY_STRING, (@maxValue).to_i, 0, backgroundBasicColor, foregroundBasicColor)
    end
    

    def updateMeasurement(graphics)
        font = graphics.getFont()
        @gauge.setHeight(font.getHeight() + 2)
        @myFontProcessor = MyFontProcessor.getInstance()
    end
    

    def init(gameMidlet)
        @allbinaryMidlet = gameMidlet
    end
    

    # throws Exception
    def update(graphics)
    end
    

    def initCommands(cmdListener)
    end
    

    def getMaxValue()
        return @maxValue
    end
    

    def start()
        @logUtil.putF(@commonStrings.START, self, @commonStrings.START_METHOD_NAME)
        self.setBackground(true)
        @gauge.setHeight(30)
        @gauge.setLabel(@commonStrings.PLEASE_WAIT)
        self.setText(@TEXT)
        self.setValue(0)
        @inGameProcessor = Processor.getInstance()
        @paintable = @GAUGE_PAINTABLE
        @inProgress = true
    end
    

    def startBackground(background)
        @logUtil.putF(@commonStrings.START, self, @START_BACKGROUND)
        self.setBackground(background)
        @myFontProcessor = @updateMyFontProcessor
        @gauge.setLabel(@backgroundLabel)
        self.setText(@TEXT)
        self.setValue(0)
        @inGameProcessor = Processor.getInstance()
        @paintable = @GAUGE_PAINTABLE
    end
    

    def endActual()
        @allbinaryMidlet.commandAction(GameCommandsFactory.getInstance().SHOW_GAME_CANVAS, NullCanvas::NULL_CANVAS)
        @inProgress = false
        self.inGame()
    end
    

    def inGame()
        @progressEndListener.onEndEvent()
        @inGameProcessor = @IN_GAME_PROCESSOR
    end
    

    def end_()
        @logUtil.putF(@commonStrings.START, self, @commonStrings.END_METHOD_NAME)
        @gauge.setValue(self.getMaxValue())
        self.endActual()
        @paintable = NullPaintable.getInstance()
    end
    

    def endFromInitialLazyLoadingComplete()
        @progressEndListener.onEndEvent()
        @gauge.setValue(self.getMaxValue())
        @inGameProcessor = @IN_GAME_PROCESSOR
    end
    

    def isInGame()
        if @inGameProcessor == @IN_GAME_PROCESSOR
            return true
        end
        return false
    end
    

    def endIfPaintedSinceStart()
    end
    

    def addEarlyPortion(value, text, index)
        self.setText(StringMaker.new().append(text).append(SmallIntegerSingletonFactory.getInstance().getAt(index).to_s).to_s)
        @gauge.setValue(@gauge.getValue() + self.getMaxValue() / (value).to_f)
    end
    

    def addPortion(value, text, index)
        self.setText(StringMaker.new().append(text).append(SmallIntegerSingletonFactory.getInstance().getAt(index).to_s).to_s)
        PreLogUtil.put(@text, self, @ADD_PORTION)
        @gauge.setValue(@gauge.getValue() + self.getMaxValue() / (value).to_f)
    end
    

    def addNormalPortion(value, text)
        if @text != text
            PreLogUtil.put(text, self, @ADD_PORTION)
        end
        self.setText(text)
        @gauge.setValue(@gauge.getValue() + self.getMaxValue() / (value).to_f)
    end
    

    def setValue(value)
        @value = (value).to_f
        @gauge.setValue((value).to_f)
    end
    

    def paint(graphics)
        @paintable.paint(graphics)
    end
    

    def paint2(graphics)
        @myFontProcessor.process(graphics)
        graphics.setColor(@backgroundBasicColor.to_i)
        graphics.fillRect(0, 0, @displayInfo.getLastWidth(), @displayInfo.getLastHeight())
        @gauge.paintXY(graphics, 0, 0)
        @hasPainted = true
    end
    

    def paintThreed(graphics)
    end
    

    def getValue()
        return @value
    end
    

    def setText(text)
        @text = text
    end
    

    def getText()
        return @text
    end
    

    def setBackground(background)
        @background = background
    end
    

    def isBackground()
        return @background
    end
end

autoload :CommandListener, "javax/microedition/lcdui/CommandListener"
autoload :Font, "javax/microedition/lcdui/Font"
autoload :Graphics, "javax/microedition/lcdui/Graphics"
autoload :NullCanvas, "javax/microedition/lcdui/NullCanvas"
autoload :NullCommandListener, "javax/microedition/lcdui/NullCommandListener"
autoload :Processor, "org/allbinary/canvas/Processor"
autoload :GameCommandsFactory, "org/allbinary/game/commands/GameCommandsFactory"
autoload :BasicColor, "org/allbinary/graphics/color/BasicColor"
autoload :CanvasStrings, "org/allbinary/graphics/displayable/CanvasStrings"
autoload :MyFontProcessor, "org/allbinary/graphics/font/MyFontProcessor"
autoload :UpdateMyFontProcessor, "org/allbinary/graphics/font/UpdateMyFontProcessor"
autoload :ABCustomGaugeItem, "org/allbinary/graphics/form/item/ABCustomGaugeItem"
autoload :NullPaintable, "org/allbinary/graphics/paint/NullPaintable"
autoload :Paintable, "org/allbinary/graphics/paint/Paintable"
autoload :PreLogUtil, "org/allbinary/logic/communication/log/PreLogUtil"
autoload :SmallIntegerSingletonFactory, "org/allbinary/logic/math/SmallIntegerSingletonFactory"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :StringUtil, "org/allbinary/logic/string/StringUtil"
autoload :AllBinaryMidlet, "org/allbinary/midlet/AllBinaryMidlet"
autoload :PathFindingThreadPool, "org/allbinary/thread/PathFindingThreadPool"
autoload :ThreadPool, "org/allbinary/thread/ThreadPool"
autoload :ProgressEndListener, "org/allbinary/graphics/canvas/transition/progress/ProgressEndListener"
autoload :ProgressPaintable, "org/allbinary/graphics/canvas/transition/progress/ProgressPaintable"

