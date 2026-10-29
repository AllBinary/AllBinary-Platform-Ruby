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
# package org.allbinary.input

require "org/allbinary/android/input/motion/AnalogLocationInputProcessor"
require "org/allbinary/game/input/GameKeyEventSourceInterface"

class DirectionalAnalogLocationInputProcessor < AnalogLocationInputProcessor
    include GameKeyEventSourceInterface
    attr_accessor :logUtil, :inputProcessorArray, :gameKeyFactory, :leftGameKeyEvent, :rightGameKeyEvent, :upGameKeyEvent, :downGameKeyEvent, :leftTriggerGameKeyEvent, :rightTriggerGameKeyEvent

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @inputProcessorArray = nil
        @gameKeyFactory = GameKeyFactory.getInstance()
        @leftGameKeyEvent = GameKeyEvent::NONE
        @rightGameKeyEvent = GameKeyEvent::NONE
        @upGameKeyEvent = GameKeyEvent::NONE
        @downGameKeyEvent = GameKeyEvent::NONE
        @leftTriggerGameKeyEvent = GameKeyEvent::NONE
        @rightTriggerGameKeyEvent = GameKeyEvent::NONE
    end
    

    def initialize(inputProcessorArray)
        super()
        initialize_fields
        @inputProcessorArray = inputProcessorArray
        begin
            @leftGameKeyEvent = GameKeyEventFactory.getInstance().getInstanceForInput(self, @gameKeyFactory.LEFT)
            @rightGameKeyEvent = GameKeyEventFactory.getInstance().getInstanceForInput(self, @gameKeyFactory.RIGHT)
            @upGameKeyEvent = GameKeyEventFactory.getInstance().getInstanceForInput(self, @gameKeyFactory.UP)
            @downGameKeyEvent = GameKeyEventFactory.getInstance().getInstanceForInput(self, @gameKeyFactory.DOWN)
            @leftTriggerGameKeyEvent = GameKeyEventFactory.getInstance().getInstanceForInput(self, @gameKeyFactory.KEY_NUM0)
            @rightTriggerGameKeyEvent = GameKeyEventFactory.getInstance().getInstanceForInput(self, @gameKeyFactory.KEY_NUM5)
        rescue StandardError => e
            commonStrings = CommonStrings.getInstance()
            @logUtil.put(commonStrings.EXCEPTION, self, commonStrings.CONSTRUCTOR, e)
        end
    end
    

    def process(allbinaryLayerManager, analogLocationInput)
        begin
            customGPoint = nil
            customGPoint = analogLocationInput.getCustomGPoint()
            x = customGPoint.getX()
            y = customGPoint.getY()
            leftTrigger = analogLocationInput.getLeftTrigger()
            rightTrigger = analogLocationInput.getRightTrigger()
            if x < 0
                @inputProcessorArray[@leftGameKeyEvent.getKey()].processAnalog(allbinaryLayerManager, @leftGameKeyEvent, x)
            elsif x > 0
                @inputProcessorArray[@rightGameKeyEvent.getKey()].processAnalog(allbinaryLayerManager, @rightGameKeyEvent, x)
            end
            if y < 0
                @inputProcessorArray[@downGameKeyEvent.getKey()].processAnalog(allbinaryLayerManager, @downGameKeyEvent, y)
            elsif y > 0
                @inputProcessorArray[@upGameKeyEvent.getKey()].processAnalog(allbinaryLayerManager, @upGameKeyEvent, y)
            end
            if leftTrigger > 0
                @inputProcessorArray[@leftTriggerGameKeyEvent.getKey()].processAnalog(allbinaryLayerManager, @leftTriggerGameKeyEvent, leftTrigger)
            end
            if rightTrigger > 0
                @inputProcessorArray[@rightTriggerGameKeyEvent.getKey()].processAnalog(allbinaryLayerManager, @rightTriggerGameKeyEvent, rightTrigger)
            end
        rescue StandardError => e
            commonStrings = CommonStrings.getInstance()
            @logUtil.put("Unable to process analog input", self, commonStrings.PROCESS, e)
        end
    end
    

    def getSourceId()
        return 0
    end
end

require "org/allbinary/game/input/GameInputProcessor"
require "org/allbinary/game/input/GameKeyFactory"
require "org/allbinary/game/input/analog/AnalogLocationInput"
require "org/allbinary/game/input/event/GameKeyEvent"
require "org/allbinary/game/input/event/GameKeyEventFactory"
require "org/allbinary/graphics/CustomGPoint"
require "org/allbinary/layer/AllBinaryLayerManager"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/string/CommonStrings"

