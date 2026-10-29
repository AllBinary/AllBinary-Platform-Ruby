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
# require "javax/microedition/lcdui/Canvas"
# require "javax/microedition/lcdui/Graphics"
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
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/game/input/event/GameKeyEvent"
require "org/allbinary/graphics/RectangleFactory"
require "org/allbinary/graphics/paint/NullPaintable"
require "org/allbinary/graphics/paint/PaintableInterface"
require "org/allbinary/layer/AllBinaryLayerManager"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/view/ViewPosition"
require "org/allbinary/game/input/GameInputProcessor"
require "org/allbinary/game/input/GameInputProcessorUtil"
require "org/allbinary/game/input/InputFactory"
require "org/allbinary/game/input/TestInputInterface"

class TestingInputSingleton
    @@instance = TestingInputSingleton.new()
end

