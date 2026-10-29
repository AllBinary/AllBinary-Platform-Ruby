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
# package org.allbinary.input.motion.gesture.observer

require "org/allbinary/logic/util/event/handler/BasicEventHandler"

class MovedMotionGesturesHandler < BasicEventHandler
    

    def self.getInstance()
        return MovedMotionGesturesHandler::SINGLETON
    end
    

    def initialize()
        super()
    end
    

    # throws Exception
    def process(eventObject, eventListenerInterface)
        baseMotionGestureEventListener = eventListenerInterface
        baseMotionGestureEventListener.onMotionGestureEvent(eventObject)
    end
end

require "org/allbinary/logic/util/event/AllBinaryEventObject"
require "org/allbinary/logic/util/event/EventListenerInterface"
require "org/allbinary/input/motion/gesture/observer/BaseMotionGestureEventListener"
require "org/allbinary/input/motion/gesture/observer/MotionGestureEvent"

class MovedMotionGesturesHandler
    SINGLETON = MovedMotionGesturesHandler.new()
end

