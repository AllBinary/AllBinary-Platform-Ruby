#
# AllBinary Open License Version 1
# Copyright (c) 2009 AllBinary
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
# package org.allbinary.android.input.motion.api1

require "org/allbinary/android/input/motion/BaseGameInputMotionEventProcessor"

class GameInputMotionEventProcessorAPI1 < BaseGameInputMotionEventProcessor
    attr_accessor :logUtil, :motionRecognizer

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @motionRecognizer = AllMotionRecognizer.new()
    end
    

    def self.getInstance()
        if GameInputMotionEventProcessorAPI1.instance == NullUtil.getInstance().NULL_OBJECT
            GameInputMotionEventProcessorAPI1.instance = GameInputMotionEventProcessorAPI1.new()
        end
        return GameInputMotionEventProcessorAPI1.instance
    end
    

    def initialize()
        super()
        initialize_fields
    end
    

    def process(motionEvent)
        begin
            x = (motionEvent.getX()).to_i
            y = (motionEvent.getY()).to_i
            action = motionEvent.getAction()
            if action == MotionEvent::ACTION_DOWN
                @motionRecognizer.processStartMotionEvent(x, y, motionEvent.getDeviceId(), 0)
            elsif action == MotionEvent::ACTION_UP || action == MotionEvent::ACTION_CANCEL
                @motionRecognizer.processEndMotionEvent(x, y, motionEvent.getDeviceId(), 0)
            elsif action == MotionEvent::ACTION_MOVE
                @motionRecognizer.processDraggedMotionEvent(x, y, motionEvent.getDeviceId(), 0)
            end
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.PROCESS, e)
        end
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "android/view/MotionEvent"
require "org/allbinary/input/motion/AllMotionRecognizer"
require "org/allbinary/input/motion/MotionRecognizer"
require "org/allbinary/logic/NullUtil"
require "org/allbinary/logic/communication/log/LogUtil"

class GameInputMotionEventProcessorAPI1
    @@instance = NullUtil.getInstance().NULL_OBJECT
end

