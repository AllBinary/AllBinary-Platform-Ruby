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

require "org/allbinary/input/motion/gesture/observer/BaseMotionGestureEventListener"

module MotionGestureEventListener
    include BaseMotionGestureEventListener
    

    def onPressedMotionGestureEvent(ev)
        raise NotImplementedError
    end
    

    def onUpMotionGestureEvent(ev)
        raise NotImplementedError
    end
    

    def onDownMotionGestureEvent(ev)
        raise NotImplementedError
    end
    

    def onLeftMotionGestureEvent(ev)
        raise NotImplementedError
    end
    

    def onRightMotionGestureEvent(ev)
        raise NotImplementedError
    end
    

    def onDiagonalDownRightMotionGestureEvent(ev)
        raise NotImplementedError
    end
    

    def onDiagonalDownLeftMotionGestureEvent(ev)
        raise NotImplementedError
    end
    

    def onDiagonalUpRightMotionGestureEvent(ev)
        raise NotImplementedError
    end
    

    def onDiagonalUpLeftMotionGestureEvent(ev)
        raise NotImplementedError
    end
    

    # throws Exception
    def released(ev)
        raise NotImplementedError
    end
end

require "org/allbinary/input/motion/gesture/observer/MotionGestureEvent"

