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
# package org.allbinary.android.input.motion

require "org/allbinary/android/input/motion/MotionEventProcessor"

class TrackballGameInputMotionEventProcessor < MotionEventProcessor
    attr_accessor :logUtil, :listener, :commonStrings

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @listener = SingleKeyPressGameKeyFromMotionGestureEventListener.new()
        @commonStrings = CommonStrings.getInstance()
    end
    

    def self.getInstance()
        return TrackballGameInputMotionEventProcessor::PROCESSOR
    end
    

    def initialize()
        super()
        initialize_fields
    end
    

    def process(motionEvent)
        begin
            x = motionEvent.getX()
            y = motionEvent.getY()
            if x < 0.0
                @listener.onCompleteMotionGestureInputEvent(LeftTrackballInputToGameKeyEventAction.getInstance())
            elsif x > 0.0
                @listener.onCompleteMotionGestureInputEvent(RightTrackballInputToGameKeyEventAction.getInstance())
            end
            if y < 0.0
                @listener.onCompleteMotionGestureInputEvent(UpTrackballInputToGameKeyEventAction.getInstance())
            elsif y > 0.0
                @listener.onCompleteMotionGestureInputEvent(DownTrackballInputToGameKeyEventAction.getInstance())
            end
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.PROCESS, e)
        end
    end
end

require "android/view/MotionEvent"
require "org/allbinary/game/input/motion/action/SingleKeyPressGameKeyFromMotionGestureEventListener"
require "org/allbinary/input/motion/trackball/action/DownTrackballInputToGameKeyEventAction"
require "org/allbinary/input/motion/trackball/action/LeftTrackballInputToGameKeyEventAction"
require "org/allbinary/input/motion/trackball/action/RightTrackballInputToGameKeyEventAction"
require "org/allbinary/input/motion/trackball/action/UpTrackballInputToGameKeyEventAction"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/string/CommonStrings"

class TrackballGameInputMotionEventProcessor
    PROCESSOR = TrackballGameInputMotionEventProcessor.new()
end

