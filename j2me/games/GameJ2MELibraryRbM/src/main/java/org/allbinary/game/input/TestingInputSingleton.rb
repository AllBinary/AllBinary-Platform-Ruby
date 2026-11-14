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
require "org/allbinary/game/layer/AllBinaryGameLayer"
require "org/allbinary/game/input/GameInputInterface"

class TestingInputSingleton < AllBinaryGameLayer
    include GameInputInterface
    attr_accessor :inputProcessorArray, :paintable

    def initialize_fields
        @inputProcessorArray = Array.new(InputFactory.getInstance().MAX, nil)
        @paintable = NullPaintable.getInstance()
    end
    

    def self.getInstance()
        return TestingInputSingleton.instance
    end
    

    def initialize()
        super(StringUtil.getInstance().EMPTY_STRING, RectangleFactory::SINGLETON, ViewPosition.getInstanceD())
        initialize_fields
        GameInputProcessorUtil.init(@inputProcessorArray)
    end
    

    def initInputProcessors()
    end
    

    def initInputProcessorsForTestInput(aTestInputInterface)
        testInputInterface = aTestInputInterface
        @paintable = testInputInterface
        @inputProcessorArray[Canvas::UP] = Class.new(GameInputProcessor.is_a?(Class) ? GameInputProcessor : Object) do
            include(GameInputProcessor) unless GameInputProcessor.is_a?(Class)
            

            # throws Exception
            def processEvent(allbinaryLayerManager, gameKeyEvent)
                testInputInterface.up()
            end
        end.new()
        @inputProcessorArray[Canvas::DOWN] = Class.new(GameInputProcessor.is_a?(Class) ? GameInputProcessor : Object) do
            include(GameInputProcessor) unless GameInputProcessor.is_a?(Class)
            

            # throws Exception
            def processEvent(allbinaryLayerManager, gameKeyEvent)
                testInputInterface.down()
            end
        end.new()
        @inputProcessorArray[Canvas::LEFT] = Class.new(GameInputProcessor.is_a?(Class) ? GameInputProcessor : Object) do
            include(GameInputProcessor) unless GameInputProcessor.is_a?(Class)
            

            # throws Exception
            def processEvent(allbinaryLayerManager, gameKeyEvent)
                testInputInterface.left()
            end
        end.new()
        @inputProcessorArray[Canvas::RIGHT] = Class.new(GameInputProcessor.is_a?(Class) ? GameInputProcessor : Object) do
            include(GameInputProcessor) unless GameInputProcessor.is_a?(Class)
            

            # throws Exception
            def processEvent(allbinaryLayerManager, gameKeyEvent)
                testInputInterface.right()
            end
        end.new()
        @inputProcessorArray[Canvas::KEY_NUM7] = Class.new(GameInputProcessor.is_a?(Class) ? GameInputProcessor : Object) do
            include(GameInputProcessor) unless GameInputProcessor.is_a?(Class)
            

            # throws Exception
            def processEvent(allbinaryLayerManager, gameKeyEvent)
                testInputInterface.strafeLeft()
            end
        end.new()
        @inputProcessorArray[Canvas::KEY_NUM9] = Class.new(GameInputProcessor.is_a?(Class) ? GameInputProcessor : Object) do
            include(GameInputProcessor) unless GameInputProcessor.is_a?(Class)
            

            # throws Exception
            def processEvent(allbinaryLayerManager, gameKeyEvent)
                testInputInterface.strafeRight()
            end
        end.new()
        GameInputProcessorUtil.init(@inputProcessorArray)
    end
    

    # throws Exception
    def processInputList(allbinaryLayerManager, list)
        java_monitor.synchronize do
        key = 0
        gameKeyEvent = nil
        size = list.size()
        (0...size).each do |index|
            gameKeyEvent = (list.objectArray[index])
            key = gameKeyEvent.getKey()
            @inputProcessorArray[key].processEvent(allbinaryLayerManager, GameKeyEvent::NONE)
        end
        end
    end
    

    # throws Exception
    def processInput(allbinaryLayerManager)
        java_monitor.synchronize do
        self.processInputList(allbinaryLayerManager, self.getGameKeyEventList())
        self.getGameKeyEventList().clear()
        end
    end
    

    def paint(graphics)
        @paintable.paint(graphics)
    end
    

    def implmentsGameInputInterface()
        return true
    end

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

autoload :Canvas, "javax/microedition/lcdui/Canvas"
autoload :Graphics, "javax/microedition/lcdui/Graphics"
autoload :GameKeyEvent, "org/allbinary/game/input/event/GameKeyEvent"
autoload :RectangleFactory, "org/allbinary/graphics/RectangleFactory"
autoload :NullPaintable, "org/allbinary/graphics/paint/NullPaintable"
autoload :PaintableInterface, "org/allbinary/graphics/paint/PaintableInterface"
autoload :AllBinaryLayerManager, "org/allbinary/layer/AllBinaryLayerManager"
autoload :StringUtil, "org/allbinary/logic/string/StringUtil"
autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :ViewPosition, "org/allbinary/view/ViewPosition"
autoload :GameInputProcessor, "org/allbinary/game/input/GameInputProcessor"
autoload :GameInputProcessorUtil, "org/allbinary/game/input/GameInputProcessorUtil"
autoload :InputFactory, "org/allbinary/game/input/InputFactory"
autoload :TestInputInterface, "org/allbinary/game/input/TestInputInterface"

begin
    TestingInputSingleton.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

