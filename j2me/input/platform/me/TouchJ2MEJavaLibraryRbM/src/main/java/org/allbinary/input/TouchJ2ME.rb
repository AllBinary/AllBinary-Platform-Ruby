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


#TouchJ2ME
class TouchJ2ME
    attr_accessor :logUtil, :DEVICE_ID, :motionRecognizer

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @DEVICE_ID = 0
        @motionRecognizer = AllMotionRecognizer.new()
    end
    

    def initialize()
        initialize_fields
        motionGesturesHandler = @motionRecognizer.getMotionGestureRecognizer().getMotionGesturesHandler()
        motionGesturesHandler.addListenerInterface(GameMotionGestureListener.new(MotionGestureReceiveInterfaceFactory.getInstance()))
    end
    

    def pointerDragged(x, y)
        begin
            @motionRecognizer.processDraggedMotionEvent(x, y, @DEVICE_ID, 0)
        rescue StandardError => e
            commonStrings = CommonStrings.getInstance()
            @logUtil.put(commonStrings.EXCEPTION, self, "pointerDragged", e)
        end
    end
    

    def pointerPressed(x, y)
        begin
            @motionRecognizer.processStartMotionEvent(x, y, @DEVICE_ID, 0)
        rescue StandardError => e
            commonStrings = CommonStrings.getInstance()
            @logUtil.put(commonStrings.EXCEPTION, self, "pointerPressed", e)
        end
    end
    

    def pointerReleased(x, y)
        begin
            @motionRecognizer.processEndMotionEvent(x, y, @DEVICE_ID, 0)
        rescue StandardError => e
            commonStrings = CommonStrings.getInstance()
            @logUtil.put(commonStrings.EXCEPTION, self, "pointerReleased", e)
        end
    end
end

require "org/allbinary/input/motion/AllMotionRecognizer"
require "org/allbinary/input/motion/gesture/observer/BasicMotionGesturesHandler"
require "org/allbinary/input/motion/gesture/observer/GameMotionGestureListener"
require "org/allbinary/input/motion/gesture/observer/MotionGestureReceiveInterfaceFactory"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/string/CommonStrings"

