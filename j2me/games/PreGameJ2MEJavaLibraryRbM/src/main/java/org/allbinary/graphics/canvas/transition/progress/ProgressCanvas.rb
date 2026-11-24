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

require "java/lang/JavaOverload"
require "org/allbinary/canvas/RunnableCanvas"
require "org/allbinary/graphics/font/UpdateMyFontInterface"
require "org/allbinary/graphics/paint/PaintableInterface"

module ::Org; module Allbinary; module Graphics; module Canvas; module Transition; module Progress

class ProgressCanvas < ::Org::Allbinary::Canvas::RunnableCanvas
    include ::Org::Allbinary::Graphics::Paint::PaintableInterface
    include ::Org::Allbinary::Graphics::Font::UpdateMyFontInterface
    attr_accessor :hasPainted, :backgroundBasicColor, :GAUGE_PAINTABLE, :maxValue, :gauge, :TEXT, :updateMyFontProcessor, :myFontProcessor, :allbinaryMidlet, :value, :text, :background, :paintable, :inProgress, :IN_GAME_PROCESSOR, :inGameProcessor, :progressEndListener, :backgroundLabel, :START_BACKGROUND, :ADD_PORTION, :ADD_EARLY_PORTION

    def jfields_org_allbinary_graphics_canvas_transition_progress_ProgressCanvas
        @hasPainted = false unless instance_variable_defined?(:@hasPainted)
        @backgroundBasicColor = nil unless instance_variable_defined?(:@backgroundBasicColor)
        @GAUGE_PAINTABLE = ProgressPaintable.new(self)
        @maxValue = 100.0
        @gauge = nil unless instance_variable_defined?(:@gauge)
        @TEXT = @commonStrings.LOADING
        @updateMyFontProcessor = ::Org::Allbinary::Graphics::Font::UpdateMyFontProcessor.new(self)
        @myFontProcessor = @updateMyFontProcessor
        @allbinaryMidlet = ::Org::Allbinary::Midlet::AllBinaryMidlet.getNullInstance()
        @value = 0.0 unless instance_variable_defined?(:@value)
        @text = @TEXT
        @background = true
        @paintable = @GAUGE_PAINTABLE
        @inProgress = false
        @IN_GAME_PROCESSOR = Class.new(::Org::Allbinary::Canvas::Processor.is_a?(Class) ? ::Org::Allbinary::Canvas::Processor : Object) do
        include(::Org::Allbinary::Canvas::Processor) unless ::Org::Allbinary::Canvas::Processor.is_a?(Class)
        @pathFindingThreadPool = ::Org::Allbinary::ThreadPackage::PathFindingThreadPool.getInstance()
        

        # throws Exception
        def process()
            @pathFindingThreadPool.runAPriorityTask()
        end
        java_overload :process, 0
    end.new()
        @inGameProcessor = ::Org::Allbinary::Canvas::Processor.getInstance()
        @progressEndListener = ProgressEndListener.instance
        @backgroundLabel = "Background AI Game Loading..."
        @START_BACKGROUND = "startBackground"
        @ADD_PORTION = "addPortion"
        @ADD_EARLY_PORTION = "addEarlyPortion"
    end
    

    def initialize(title, backgroundBasicColor, foregroundBasicColor)
        super(::Javax::Microedition::Lcdui::NullCommandListener::NULL_COMMAND_LISTENER, ::Org::Allbinary::Graphics::Displayable::CanvasStrings.getInstance().EMPTY_CHILD_NAME_LIST, false)
        jfields_org_allbinary_graphics_canvas_transition_progress_ProgressCanvas
        @backgroundBasicColor = backgroundBasicColor
        @gauge = ::Org::Allbinary::Graphics::Form::Item::ABCustomGaugeItem.new(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING, (@maxValue).to_i, 0, backgroundBasicColor, foregroundBasicColor)
    end
    

    def updateMeasurement(graphics)
        font = graphics.getFont()
        @gauge.setHeight(font.getHeight() + 2)
        @myFontProcessor = ::Org::Allbinary::Graphics::Font::MyFontProcessor.getInstance()
    end
    java_overload :updateMeasurement, 1
    

    def init(gameMidlet)
        @allbinaryMidlet = gameMidlet
    end
    java_overload :init, 1
    

    # throws Exception
    def update(graphics)
    end
    java_overload :update, 1
    

    def initCommands(cmdListener)
    end
    java_overload :initCommands, 1
    

    def getMaxValue()
        return @maxValue
    end
    java_overload :getMaxValue, 0
    

    def start()
        @logUtil.putF(@commonStrings.START, self, @commonStrings.START_METHOD_NAME)
        self.setBackground(true)
        @gauge.setHeight(30)
        @gauge.setLabel(@commonStrings.PLEASE_WAIT)
        self.setText(@TEXT)
        self.setValue(0)
        @inGameProcessor = ::Org::Allbinary::Canvas::Processor.getInstance()
        @paintable = @GAUGE_PAINTABLE
        @inProgress = true
    end
    java_overload :start, 0
    

    def startBackground(background)
        @logUtil.putF(@commonStrings.START, self, @START_BACKGROUND)
        self.setBackground(background)
        @myFontProcessor = @updateMyFontProcessor
        @gauge.setLabel(@backgroundLabel)
        self.setText(@TEXT)
        self.setValue(0)
        @inGameProcessor = ::Org::Allbinary::Canvas::Processor.getInstance()
        @paintable = @GAUGE_PAINTABLE
    end
    java_overload :startBackground, 1
    

    def endActual()
        @allbinaryMidlet.commandAction(::Org::Allbinary::Game::Commands::GameCommandsFactory.getInstance().SHOW_GAME_CANVAS, ::Javax::Microedition::Lcdui::NullCanvas::NULL_CANVAS)
        @inProgress = false
        self.inGame()
    end
    java_overload :endActual, 0
    

    def inGame()
        @progressEndListener.onEndEvent()
        @inGameProcessor = @IN_GAME_PROCESSOR
    end
    java_overload :inGame, 0
    

    def end_()
        @logUtil.putF(@commonStrings.START, self, @commonStrings.END_METHOD_NAME)
        @gauge.setValue(self.getMaxValue())
        self.endActual()
        @paintable = ::Org::Allbinary::Graphics::Paint::NullPaintable.getInstance()
    end
    java_overload :end_, 0
    

    def endFromInitialLazyLoadingComplete()
        @progressEndListener.onEndEvent()
        @gauge.setValue(self.getMaxValue())
        @inGameProcessor = @IN_GAME_PROCESSOR
    end
    java_overload :endFromInitialLazyLoadingComplete, 0
    

    def isInGame()
        if @inGameProcessor == @IN_GAME_PROCESSOR
            return true
        end
        return false
    end
    java_overload :isInGame, 0
    

    def endIfPaintedSinceStart()
    end
    java_overload :endIfPaintedSinceStart, 0
    

    def addEarlyPortion(value, text, index)
        self.setText(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(text).append(::Org::Allbinary::Logic::MathPackage::SmallIntegerSingletonFactory.getInstance().getAt(index).to_s).to_s)
        @gauge.setValue(@gauge.getValue() + self.getMaxValue() / (value).to_f)
    end
    java_overload :addEarlyPortion, 3
    

    def addPortion(value, text, index)
        self.setText(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(text).append(::Org::Allbinary::Logic::MathPackage::SmallIntegerSingletonFactory.getInstance().getAt(index).to_s).to_s)
        ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put(@text, self, @ADD_PORTION)
        @gauge.setValue(@gauge.getValue() + self.getMaxValue() / (value).to_f)
    end
    java_overload :addPortion, 3
    

    def addNormalPortion(value, text)
        if @text != text
            ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put(text, self, @ADD_PORTION)
        end
        self.setText(text)
        @gauge.setValue(@gauge.getValue() + self.getMaxValue() / (value).to_f)
    end
    java_overload :addNormalPortion, 2
    

    def setValue(value)
        @value = (value).to_f
        @gauge.setValue((value).to_f)
    end
    java_overload :setValue, 1
    

    def paint(graphics)
        @paintable.paint(graphics)
    end
    java_overload :paint, 1
    

    def paint2(graphics)
        @myFontProcessor.process(graphics)
        graphics.setColor(@backgroundBasicColor.to_i)
        graphics.fillRect(0, 0, @displayInfo.getLastWidth(), @displayInfo.getLastHeight())
        @gauge.paintXY(graphics, 0, 0)
        @hasPainted = true
    end
    java_overload :paint2, 1
    

    def paintThreed(graphics)
    end
    java_overload :paintThreed, 1
    

    def getValue()
        return @value
    end
    java_overload :getValue, 0
    

    def setText(text)
        @text = text
    end
    java_overload :setText, 1
    

    def getText()
        return @text
    end
    java_overload :getText, 0
    

    def setBackground(background)
        @background = background
    end
    java_overload :setBackground, 1
    

    def isBackground()
        return @background
    end
    java_overload :isBackground, 0
end

module ::Javax; module Microedition; module Lcdui; autoload :CommandListener, "javax/microedition/lcdui/CommandListener" unless const_defined?(:CommandListener, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Font, "javax/microedition/lcdui/Font" unless const_defined?(:Font, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :NullCanvas, "javax/microedition/lcdui/NullCanvas" unless const_defined?(:NullCanvas, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :NullCommandListener, "javax/microedition/lcdui/NullCommandListener" unless const_defined?(:NullCommandListener, false); end; end; end
module ::Org; module Allbinary; module Canvas; autoload :Processor, "org/allbinary/canvas/Processor" unless const_defined?(:Processor, false); end; end; end
module ::Org; module Allbinary; module Game; module Commands; autoload :GameCommandsFactory, "org/allbinary/game/commands/GameCommandsFactory" unless const_defined?(:GameCommandsFactory, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Displayable; autoload :CanvasStrings, "org/allbinary/graphics/displayable/CanvasStrings" unless const_defined?(:CanvasStrings, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Font; autoload :MyFontProcessor, "org/allbinary/graphics/font/MyFontProcessor" unless const_defined?(:MyFontProcessor, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Font; autoload :UpdateMyFontProcessor, "org/allbinary/graphics/font/UpdateMyFontProcessor" unless const_defined?(:UpdateMyFontProcessor, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Form; module Item; autoload :ABCustomGaugeItem, "org/allbinary/graphics/form/item/ABCustomGaugeItem" unless const_defined?(:ABCustomGaugeItem, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Paint; autoload :NullPaintable, "org/allbinary/graphics/paint/NullPaintable" unless const_defined?(:NullPaintable, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Paint; autoload :Paintable, "org/allbinary/graphics/paint/Paintable" unless const_defined?(:Paintable, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :PreLogUtil, "org/allbinary/logic/communication/log/PreLogUtil" unless const_defined?(:PreLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :SmallIntegerSingletonFactory, "org/allbinary/logic/math/SmallIntegerSingletonFactory" unless const_defined?(:SmallIntegerSingletonFactory, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Midlet; autoload :AllBinaryMidlet, "org/allbinary/midlet/AllBinaryMidlet" unless const_defined?(:AllBinaryMidlet, false); end; end; end
module ::Org; module Allbinary; module ThreadPackage; autoload :PathFindingThreadPool, "org/allbinary/thread/PathFindingThreadPool" unless const_defined?(:PathFindingThreadPool, false); end; end; end
module ::Org; module Allbinary; module ThreadPackage; autoload :ThreadPool, "org/allbinary/thread/ThreadPool" unless const_defined?(:ThreadPool, false); end; end; end
autoload :ProgressEndListener, "org/allbinary/graphics/canvas/transition/progress/ProgressEndListener" unless const_defined?(:ProgressEndListener, false)
autoload :ProgressPaintable, "org/allbinary/graphics/canvas/transition/progress/ProgressPaintable" unless const_defined?(:ProgressPaintable, false)

end; end; end; end; end; end

