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

require "org/allbinary/logic/util/event/EventListenerInterface"

module BaseMotionGestureEventListener
    include EventListenerInterface
    

    def onMotionGestureEvent(motionGestureEvent)
        raise NotImplementedError
    end
    

    def onScrolledMotionGestureEvent(motionGestureEvent)
        raise NotImplementedError
    end
end

require "org/allbinary/input/motion/gesture/observer/MotionGestureEvent"

