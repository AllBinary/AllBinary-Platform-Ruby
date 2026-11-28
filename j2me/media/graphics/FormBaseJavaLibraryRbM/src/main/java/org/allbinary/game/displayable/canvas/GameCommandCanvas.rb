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

require "java/lang/JavaOverload"
require "org/allbinary/graphics/displayable/MyCanvas"
require "org/allbinary/graphics/displayable/event/DisplayChangeEventListener"
require "org/allbinary/graphics/font/UpdateMyFontInterface"
require "org/allbinary/game/displayable/canvas/MenuListener"

module ::Org; module Allbinary; module Game; module Displayable; module Canvas

class GameCommandCanvas < ::Org::Allbinary::Graphics::Displayable::MyCanvas
    include MenuListener
    include ::Org::Allbinary::Graphics::Displayable::Event::DisplayChangeEventListener
    include ::Org::Allbinary::Graphics::Font::UpdateMyFontInterface
    attr_accessor :repaintProcessor, :gameInputStrings, :foregroundBasicColor, :backgroundBasicColor, :inputToGameKeyMapping, :gameKeyFactory, :gameKeyEventFactory, :downGameKeyEventHandler, :upGameKeyEventHandler, :repaintBehavior, :updateMyFontProcessor, :myFontProcessor, :foregroundColor, :backgroundColor, :menuInputProcessor, :menuPaintable, :menuForm, :isSingleKeyRepeatableProcessing, :fontHeight

    def jfields_org_allbinary_game_displayable_canvas_GameCommandCanvas
        @repaintProcessor = ::Org::Allbinary::Graphics::Displayable::Screen::ScreenRepaintProcessorFactory.getInstance().create(self)
        @gameInputStrings = ::Org::Allbinary::Game::Input::GameInputStrings.getInstance()
        @foregroundBasicColor = nil unless instance_variable_defined?(:@foregroundBasicColor)
        @backgroundBasicColor = nil unless instance_variable_defined?(:@backgroundBasicColor)
        @inputToGameKeyMapping = ::Org::Allbinary::Game::Input::PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance().getInputMapping()
        @gameKeyFactory = ::Org::Allbinary::Game::Input::GameKeyFactory.getInstance()
        @gameKeyEventFactory = ::Org::Allbinary::Game::Input::Event::GameKeyEventFactory.getInstance()
        @downGameKeyEventHandler = ::Org::Allbinary::Game::Input::Event::DownGameKeyEventHandler.getInstance()
        @upGameKeyEventHandler = ::Org::Allbinary::Game::Input::Event::UpGameKeyEventHandler.getInstance()
        @repaintBehavior = nil unless instance_variable_defined?(:@repaintBehavior)
        @updateMyFontProcessor = ::Org::Allbinary::Graphics::Font::UpdateMyFontProcessor.new(self)
        @myFontProcessor = @updateMyFontProcessor
        @foregroundColor = nil unless instance_variable_defined?(:@foregroundColor)
        @backgroundColor = nil unless instance_variable_defined?(:@backgroundColor)
        @menuInputProcessor = NoMenuInputProcessor.getInstance()
        @menuPaintable = ::Org::Allbinary::Graphics::Paint::NullPaintable.getInstance()
        @menuForm = ::Org::Allbinary::Graphics::Form::PaintableForm.getNullPaintableForm()
        @isSingleKeyRepeatableProcessing = ::Org::Allbinary::Game::Configuration::Feature::Features.getInstance().isFeature(::Org::Allbinary::Game::Configuration::Feature::InputFeatureFactory.getInstance().SINGLE_KEY_REPEAT_PRESS)
        @fontHeight = 0
    end
    

    def initialize(cmdListener, name, backgroundBasicColor, foregroundBasicColor)
        super(name, ::Org::Allbinary::Graphics::Displayable::CanvasStrings.getInstance().EMPTY_CHILD_NAME_LIST)
        jfields_org_allbinary_game_displayable_canvas_GameCommandCanvas
        @repaintBehavior = ::Org::Allbinary::Game::Displayable::RepaintBehavior.getInstance()
        @foregroundBasicColor = foregroundBasicColor
        @backgroundBasicColor = backgroundBasicColor
        @foregroundColor = @foregroundBasicColor.to_i
        @backgroundColor = @backgroundBasicColor.to_i
        self.initCommands(cmdListener)
        if cmdListener != ::Javax::Microedition::Lcdui::NullCommandListener::NULL_COMMAND_LISTENER
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
            @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(@commonStrings.START).append(@canvasStrings.FD_WIDTH).appendint(((::Org::Allbinary::Graphics::Font::MyFontProcessor.defaultCharWidth(font)).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })).append(@canvasStrings.FD_HEIGHT).appendint(((font.getHeight()).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })).to_s, self, @canvasStrings.UPDATE_MEASUREMENT)
            @fontHeight = font.getHeight()
            rectangle = self.createRectangle(@menuForm.size())
            @menuForm.init(rectangle, ::Org::Allbinary::Graphics::Form::FormTypeFactory.getInstance().VERTICAL_CENTER_FORM)
            self.update()
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @canvasStrings.ON_DISPLAY_CHANGE_EVENT, e)
        end
        @myFontProcessor = ::Org::Allbinary::Graphics::Font::MyFontProcessor.getInstance()
    end
    java_overload :updateMeasurement, 1
    

    def onEvent(eventObject)
        ::Org::Allbinary::Logic::Communication::Log::ForcedLogUtil.log(::Org::Allbinary::Logic::Util::Event::EventStrings.getInstance().PERFORMANCE_MESSAGE, self)
    end
    java_overload :onEvent, 1
    

    def onDisplayChangeEvent(displayChangeEvent)
        @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(@commonStrings.START).append(::Org::Allbinary::Graphics::Displayable::DisplayInfoSingleton.getInstance().to_s).to_s, self, @canvasStrings.ON_DISPLAY_CHANGE_EVENT)
        @myFontProcessor = @updateMyFontProcessor
    end
    java_overload :onDisplayChangeEvent, 1
    

    def initCommands(cmdListener)
        self.removeAllCommands()
        self.addCommand(::Org::Allbinary::Game::Commands::GameCommandsFactory.getInstance().CLOSE_AND_SHOW_GAME_CANVAS)
        self.setCommandListener(cmdListener)
    end
    java_overload :initCommands, 1
    

    # throws Exception
    def initMenu()
        form = self.createForm()
        @menuForm = form
        if form != ::Org::Allbinary::Graphics::Form::ScrollSelectionFormNoneFactory.getInstance()
            self.setMenuInputProcessor(ImmediateCommandFormInputProcessor.new(::Org::Allbinary::Util::BasicArrayListD.new(), -1, self, form))
            @menuPaintable = ::Org::Allbinary::Graphics::Form::FormPaintable.new(form)
        end
        @repaintBehavior.onChangeRepaint(self)
    end
    java_overload :initMenu, 0
    

    # throws Exception
    def createForm()
        items = ::Org::Allbinary::Graphics::Form::Item::CommandTextItemArrayFactory.new(::Org::Allbinary::Graphics::Form::Item::Validation::AllCommandsVisitor.new()).getInstance(self.getCommandStack(), @backgroundBasicColor, @foregroundBasicColor)
        rectangle = self.createRectangle(items.length)
        return ::Org::Allbinary::Graphics::Form::CommandCurrentSelectionFormFactory.getInstance(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING, items, rectangle, ::Org::Allbinary::Graphics::Form::FormTypeFactory.getInstance().VERTICAL_CENTER_FORM, 15, false, @backgroundBasicColor, @foregroundBasicColor)
    end
    java_overload :createForm, 0
    

    def createRectangle(size)
        height = size * @fontHeight
        startY = (@displayInfo.getLastHeight() * 2 / 3) - height
        pointFactory = ::Org::Allbinary::Graphics::PointFactory.getInstance()
        rectangle = ::Org::Allbinary::Graphics::Rectangle.new(pointFactory.createXY(30, startY), @displayInfo.getLastWidth() - 30, startY)
        return rectangle
    end
    java_overload :createRectangle, 1
    

    def open()
        @logUtil.putF(@commonStrings.START, self, "open")
        ::Org::Allbinary::Input::Motion::Gesture::Observer::BasicMotionGesturesHandler.getInstance().addListenerInterface(self.getMenuInputProcessor())
        ::Org::Allbinary::Game::Input::Event::GameKeyEventHandler.getInstance().addListener(self.getMenuInputProcessor())
        ::Org::Allbinary::Graphics::Displayable::Event::DisplayChangeEventHandler.getInstance().addListenerInterface(self)
    end
    java_overload :open, 0
    

    # throws Exception
    def close()
        @logUtil.putF(@commonStrings.START, self, @commonStrings.CLOSE)
        ::Org::Allbinary::Input::Motion::Gesture::Observer::BasicMotionGesturesHandler.getInstance().removeListener(self.getMenuInputProcessor())
        ::Org::Allbinary::Game::Input::Event::GameKeyEventHandler.getInstance().removeListener(self.getMenuInputProcessor())
        ::Org::Allbinary::Graphics::Displayable::Event::DisplayChangeEventHandler.getInstance().removeListener(self)
    end
    java_overload :close, 0
    

    # throws Exception
    def update()
        @repaintProcessor.process()
    end
    java_overload :update, 0
    

    def getSourceId()
        return @@id
    end
    java_overload :getSourceId, 0
    

    def keyPressed(keyCode)
        self.keyPressedByDevice(keyCode, 0)
    end
    java_overload :keyPressed, 1
    

    def keyReleased(keyCode)
        self.keyReleasedByDevice(keyCode, 0)
    end
    java_overload :keyReleased, 1
    

    def keyRepeated(keyCode)
        self.keyRepeatedByDevice(keyCode, 0)
    end
    java_overload :keyRepeated, 1
    

    def keyPressedByDevice(keyCode, deviceId)
        @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().SPACE).appendint(keyCode).to_s, self, @gameInputStrings.KEY_PRESSED)
        self.addGameKeyEvent(keyCode, 0, false)
    end
    java_overload :keyPressedByDevice, 2
    

    def keyReleasedByDevice(keyCode, deviceId)
        self.removeGameKeyEvent(keyCode, deviceId, false)
    end
    java_overload :keyReleasedByDevice, 2
    

    def keyRepeatedByDevice(keyCode, deviceId)
        if @isSingleKeyRepeatableProcessing
            self.addGameKeyEvent(keyCode, deviceId, true)
        end
    end
    java_overload :keyRepeatedByDevice, 2
    

    def addGameKeyEvent(keyCode, deviceId, repeated)
        begin
            gameKey = @inputToGameKeyMapping.getInstanceForCanvas(self, keyCode)
            if gameKey != @gameKeyFactory.NONE
                gameKeyEvent = @gameKeyEventFactory.getInstanceForInput(self, gameKey)
                @downGameKeyEventHandler.fireEvent(gameKeyEvent)
                @downGameKeyEventHandler.getInstanceForDevice(deviceId).fireEvent(gameKeyEvent)
            else
                @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(@gameInputStrings.NO_KEY).appendint(keyCode).to_s, self, @gameInputStrings.ADD_KEY_EVENT)
            end
        rescue StandardError => e
            @logUtil.put("Key Event Error", self, @gameInputStrings.ADD_KEY_EVENT, e)
        end
    end
    java_overload :addGameKeyEvent, 3
    

    def removeGameKeyEvent(keyCode, deviceId, repeated)
        begin
            gameKey = @inputToGameKeyMapping.getInstanceForCanvas(self, keyCode)
            if gameKey != @gameKeyFactory.NONE
                gameKeyEvent = @gameKeyEventFactory.getInstanceForInput(self, gameKey)
                @upGameKeyEventHandler.fireEvent(gameKeyEvent)
                @upGameKeyEventHandler.getInstanceForDevice(deviceId).fireEvent(gameKeyEvent)
            else
                @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(@gameInputStrings.NO_KEY).appendint(keyCode).to_s, self, @gameInputStrings.REMOVE_KEY_EVENT)
            end
        rescue StandardError => e
            @logUtil.put("Key Event Error", self, @gameInputStrings.REMOVE_KEY_EVENT, e)
        end
    end
    java_overload :removeGameKeyEvent, 3
    

    def paint(graphics)
        @myFontProcessor.process(graphics)
        @menuPaintable.paint(graphics)
        @repaintBehavior.repaint(self)
    end
    java_overload :paint, 1
    

    def setMenuInputProcessor(menuInputProcessor)
        @menuInputProcessor = menuInputProcessor
    end
    java_overload :setMenuInputProcessor, 1
    

    def getMenuInputProcessor()
        return @menuInputProcessor
    end
    java_overload :getMenuInputProcessor, 0

    def self.id()
        GameCommandCanvas.java_static_fields unless @java_static_fields_started
        return defined?(@@id) ? @@id : nil
    end

    def self.id=(value)
        GameCommandCanvas.java_static_fields unless @java_static_fields_started
        @@id = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        @@id = 0
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "GameCommandCanvas"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Javax; module Microedition; module Lcdui; autoload :CommandListener, "javax/microedition/lcdui/CommandListener" unless const_defined?(:CommandListener, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Font, "javax/microedition/lcdui/Font" unless const_defined?(:Font, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :NullCommandListener, "javax/microedition/lcdui/NullCommandListener" unless const_defined?(:NullCommandListener, false); end; end; end
module ::Org; module Allbinary; module Canvas; autoload :Processor, "org/allbinary/canvas/Processor" unless const_defined?(:Processor, false); end; end; end
module ::Org; module Allbinary; module Game; module Commands; autoload :GameCommandsFactory, "org/allbinary/game/commands/GameCommandsFactory" unless const_defined?(:GameCommandsFactory, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :Features, "org/allbinary/game/configuration/feature/Features" unless const_defined?(:Features, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :InputFeatureFactory, "org/allbinary/game/configuration/feature/InputFeatureFactory" unless const_defined?(:InputFeatureFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Displayable; autoload :RepaintBehavior, "org/allbinary/game/displayable/RepaintBehavior" unless const_defined?(:RepaintBehavior, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Input; autoload :GameInputStrings, "org/allbinary/game/input/GameInputStrings" unless const_defined?(:GameInputStrings, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Input; autoload :GameKey, "org/allbinary/game/input/GameKey" unless const_defined?(:GameKey, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Input; autoload :GameKeyFactory, "org/allbinary/game/input/GameKeyFactory" unless const_defined?(:GameKeyFactory, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Input; autoload :PlatformInputMappingFactory, "org/allbinary/game/input/PlatformInputMappingFactory" unless const_defined?(:PlatformInputMappingFactory, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Input; module Event; autoload :DownGameKeyEventHandler, "org/allbinary/game/input/event/DownGameKeyEventHandler" unless const_defined?(:DownGameKeyEventHandler, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Input; module Event; autoload :GameKeyEvent, "org/allbinary/game/input/event/GameKeyEvent" unless const_defined?(:GameKeyEvent, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Input; module Event; autoload :GameKeyEventFactory, "org/allbinary/game/input/event/GameKeyEventFactory" unless const_defined?(:GameKeyEventFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Input; module Event; autoload :GameKeyEventHandler, "org/allbinary/game/input/event/GameKeyEventHandler" unless const_defined?(:GameKeyEventHandler, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Input; module Event; autoload :UpGameKeyEventHandler, "org/allbinary/game/input/event/UpGameKeyEventHandler" unless const_defined?(:UpGameKeyEventHandler, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Input; module Mapping; autoload :InputToGameKeyMapping, "org/allbinary/game/input/mapping/InputToGameKeyMapping" unless const_defined?(:InputToGameKeyMapping, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; autoload :PointFactory, "org/allbinary/graphics/PointFactory" unless const_defined?(:PointFactory, false); end; end; end
module ::Org; module Allbinary; module Graphics; autoload :Rectangle, "org/allbinary/graphics/Rectangle" unless const_defined?(:Rectangle, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Displayable; autoload :CanvasStrings, "org/allbinary/graphics/displayable/CanvasStrings" unless const_defined?(:CanvasStrings, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Displayable; autoload :DisplayInfoSingleton, "org/allbinary/graphics/displayable/DisplayInfoSingleton" unless const_defined?(:DisplayInfoSingleton, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Displayable; module Event; autoload :DisplayChangeEvent, "org/allbinary/graphics/displayable/event/DisplayChangeEvent" unless const_defined?(:DisplayChangeEvent, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Displayable; module Event; autoload :DisplayChangeEventHandler, "org/allbinary/graphics/displayable/event/DisplayChangeEventHandler" unless const_defined?(:DisplayChangeEventHandler, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Displayable; module Screen; autoload :ScreenRepaintProcessorFactory, "org/allbinary/graphics/displayable/screen/ScreenRepaintProcessorFactory" unless const_defined?(:ScreenRepaintProcessorFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Font; autoload :MyFontProcessor, "org/allbinary/graphics/font/MyFontProcessor" unless const_defined?(:MyFontProcessor, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Font; autoload :UpdateMyFontProcessor, "org/allbinary/graphics/font/UpdateMyFontProcessor" unless const_defined?(:UpdateMyFontProcessor, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Form; autoload :CommandCurrentSelectionFormFactory, "org/allbinary/graphics/form/CommandCurrentSelectionFormFactory" unless const_defined?(:CommandCurrentSelectionFormFactory, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Form; autoload :FormPaintable, "org/allbinary/graphics/form/FormPaintable" unless const_defined?(:FormPaintable, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Form; autoload :FormTypeFactory, "org/allbinary/graphics/form/FormTypeFactory" unless const_defined?(:FormTypeFactory, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Form; autoload :PaintableForm, "org/allbinary/graphics/form/PaintableForm" unless const_defined?(:PaintableForm, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Form; autoload :ScrollSelectionForm, "org/allbinary/graphics/form/ScrollSelectionForm" unless const_defined?(:ScrollSelectionForm, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Form; autoload :ScrollSelectionFormNoneFactory, "org/allbinary/graphics/form/ScrollSelectionFormNoneFactory" unless const_defined?(:ScrollSelectionFormNoneFactory, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Form; module Item; autoload :CommandTextItemArrayFactory, "org/allbinary/graphics/form/item/CommandTextItemArrayFactory" unless const_defined?(:CommandTextItemArrayFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Form; module Item; autoload :ABCustomItem, "org/allbinary/graphics/form/item/ABCustomItem" unless const_defined?(:ABCustomItem, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Form; module Item; module Validation; autoload :AllCommandsVisitor, "org/allbinary/graphics/form/item/validation/AllCommandsVisitor" unless const_defined?(:AllCommandsVisitor, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Paint; autoload :NullPaintable, "org/allbinary/graphics/paint/NullPaintable" unless const_defined?(:NullPaintable, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Paint; autoload :Paintable, "org/allbinary/graphics/paint/Paintable" unless const_defined?(:Paintable, false); end; end; end; end
module ::Org; module Allbinary; module Input; module Motion; module Gesture; module Observer; autoload :BasicMotionGesturesHandler, "org/allbinary/input/motion/gesture/observer/BasicMotionGesturesHandler" unless const_defined?(:BasicMotionGesturesHandler, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :ForcedLogUtil, "org/allbinary/logic/communication/log/ForcedLogUtil" unless const_defined?(:ForcedLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Event; autoload :AllBinaryEventObject, "org/allbinary/logic/util/event/AllBinaryEventObject" unless const_defined?(:AllBinaryEventObject, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Event; autoload :EventStrings, "org/allbinary/logic/util/event/EventStrings" unless const_defined?(:EventStrings, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
autoload :BasicMenuInputProcessor, "org/allbinary/game/displayable/canvas/BasicMenuInputProcessor" unless const_defined?(:BasicMenuInputProcessor, false)
autoload :ImmediateCommandFormInputProcessor, "org/allbinary/game/displayable/canvas/ImmediateCommandFormInputProcessor" unless const_defined?(:ImmediateCommandFormInputProcessor, false)
autoload :NoMenuInputProcessor, "org/allbinary/game/displayable/canvas/NoMenuInputProcessor" unless const_defined?(:NoMenuInputProcessor, false)

begin
    GameCommandCanvas.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

