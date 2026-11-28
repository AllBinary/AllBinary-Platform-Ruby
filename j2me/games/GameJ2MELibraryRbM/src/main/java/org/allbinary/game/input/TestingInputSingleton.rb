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
# package org.allbinary.game.input

require "java/lang/Object"
require "java/lang/JavaOverload"
require "org/allbinary/game/layer/AllBinaryGameLayer"
require "org/allbinary/game/input/GameInputInterface"

module ::Org; module Allbinary; module Game; module Input

class TestingInputSingleton < ::Org::Allbinary::Game::Layer::AllBinaryGameLayer
    include GameInputInterface
    attr_accessor :inputProcessorArray, :testInputPaintable

    def jfields_org_allbinary_game_input_TestingInputSingleton
        @inputProcessorArray = Array.new(InputFactory.getInstance().MAX, nil)
        @testInputPaintable = ::Org::Allbinary::Graphics::Paint::NullPaintable.getInstance()
    end
    

    def self.getInstance()
        return @@instance
    end
    

    def initialize()
        super(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING, ::Org::Allbinary::Graphics::RectangleFactory::SINGLETON, ::Org::Allbinary::View::ViewPosition.getInstanceD())
        jfields_org_allbinary_game_input_TestingInputSingleton
        GameInputProcessorUtil.init(@inputProcessorArray)
    end
    

    def initInputProcessors()
    end
    java_overload :initInputProcessors, 0
    

    def initInputProcessorsForTestInput(aTestInputInterface)
        testInputInterface = aTestInputInterface
        @testInputPaintable = testInputInterface
        @inputProcessorArray[::Javax::Microedition::Lcdui::Canvas::UP] = Class.new(GameInputProcessor.is_a?(Class) ? GameInputProcessor : Object) do
            include(GameInputProcessor) unless GameInputProcessor.is_a?(Class)
            

            # throws Exception
            def processEvent(allbinaryLayerManager, gameKeyEvent)
                testInputInterface.up()
            end
            java_overload :processEvent, 2
        end.new()
        @inputProcessorArray[::Javax::Microedition::Lcdui::Canvas::DOWN] = Class.new(GameInputProcessor.is_a?(Class) ? GameInputProcessor : Object) do
            include(GameInputProcessor) unless GameInputProcessor.is_a?(Class)
            

            # throws Exception
            def processEvent(allbinaryLayerManager, gameKeyEvent)
                testInputInterface.down()
            end
            java_overload :processEvent, 2
        end.new()
        @inputProcessorArray[::Javax::Microedition::Lcdui::Canvas::LEFT] = Class.new(GameInputProcessor.is_a?(Class) ? GameInputProcessor : Object) do
            include(GameInputProcessor) unless GameInputProcessor.is_a?(Class)
            

            # throws Exception
            def processEvent(allbinaryLayerManager, gameKeyEvent)
                testInputInterface.left()
            end
            java_overload :processEvent, 2
        end.new()
        @inputProcessorArray[::Javax::Microedition::Lcdui::Canvas::RIGHT] = Class.new(GameInputProcessor.is_a?(Class) ? GameInputProcessor : Object) do
            include(GameInputProcessor) unless GameInputProcessor.is_a?(Class)
            

            # throws Exception
            def processEvent(allbinaryLayerManager, gameKeyEvent)
                testInputInterface.right()
            end
            java_overload :processEvent, 2
        end.new()
        @inputProcessorArray[::Javax::Microedition::Lcdui::Canvas::KEY_NUM7] = Class.new(GameInputProcessor.is_a?(Class) ? GameInputProcessor : Object) do
            include(GameInputProcessor) unless GameInputProcessor.is_a?(Class)
            

            # throws Exception
            def processEvent(allbinaryLayerManager, gameKeyEvent)
                testInputInterface.strafeLeft()
            end
            java_overload :processEvent, 2
        end.new()
        @inputProcessorArray[::Javax::Microedition::Lcdui::Canvas::KEY_NUM9] = Class.new(GameInputProcessor.is_a?(Class) ? GameInputProcessor : Object) do
            include(GameInputProcessor) unless GameInputProcessor.is_a?(Class)
            

            # throws Exception
            def processEvent(allbinaryLayerManager, gameKeyEvent)
                testInputInterface.strafeRight()
            end
            java_overload :processEvent, 2
        end.new()
        GameInputProcessorUtil.init(@inputProcessorArray)
    end
    java_overload :initInputProcessorsForTestInput, 1
    

    # throws Exception
    def processInputList(allbinaryLayerManager, list)
        java_monitor.synchronize do
        key = 0
        gameKeyEvent = nil
        size = list.size()
        (0...size).each do |index|
            gameKeyEvent = (list.objectArray[index])
            key = gameKeyEvent.getKey()
            @inputProcessorArray[key].processEvent(allbinaryLayerManager, ::Org::Allbinary::Game::Input::Event::GameKeyEvent::NONE)
        end
        end
    end
    java_overload :processInputList, 2
    

    # throws Exception
    def processInput(allbinaryLayerManager)
        java_monitor.synchronize do
        self.processInputList(allbinaryLayerManager, self.getGameKeyEventList())
        self.getGameKeyEventList().clear()
        end
    end
    java_overload :processInput, 1
    

    def paint(graphics)
        @testInputPaintable.paint(graphics)
    end
    java_overload :paint, 1
    

    def implmentsGameInputInterface()
        return true
    end
    java_overload :implmentsGameInputInterface, 0

    def self.instance()
        TestingInputSingleton.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        TestingInputSingleton.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = TestingInputSingleton.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "TestingInputSingleton"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Javax; module Microedition; module Lcdui; autoload :Canvas, "javax/microedition/lcdui/Canvas" unless const_defined?(:Canvas, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Game; module Input; module Event; autoload :GameKeyEvent, "org/allbinary/game/input/event/GameKeyEvent" unless const_defined?(:GameKeyEvent, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; autoload :RectangleFactory, "org/allbinary/graphics/RectangleFactory" unless const_defined?(:RectangleFactory, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Paint; autoload :NullPaintable, "org/allbinary/graphics/paint/NullPaintable" unless const_defined?(:NullPaintable, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Paint; autoload :PaintableInterface, "org/allbinary/graphics/paint/PaintableInterface" unless const_defined?(:PaintableInterface, false); end; end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayerManager, "org/allbinary/layer/AllBinaryLayerManager" unless const_defined?(:AllBinaryLayerManager, false); end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module View; autoload :ViewPosition, "org/allbinary/view/ViewPosition" unless const_defined?(:ViewPosition, false); end; end; end
autoload :GameInputProcessor, "org/allbinary/game/input/GameInputProcessor" unless const_defined?(:GameInputProcessor, false)
autoload :GameInputProcessorUtil, "org/allbinary/game/input/GameInputProcessorUtil" unless const_defined?(:GameInputProcessorUtil, false)
autoload :InputFactory, "org/allbinary/game/input/InputFactory" unless const_defined?(:InputFactory, false)
autoload :TestInputInterface, "org/allbinary/game/input/TestInputInterface" unless const_defined?(:TestInputInterface, false)

begin
    TestingInputSingleton.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

