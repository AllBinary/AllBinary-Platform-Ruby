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

require "java/lang/JavaOverload"
require "org/allbinary/input/motion/gesture/observer/BaseMotionGestureEventListener"

module ::Org; module Allbinary; module Input; module Motion; module Gesture; module Observer

module MotionGestureEventListener
    include BaseMotionGestureEventListener
    

    def onPressedMotionGestureEvent(ev)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :onPressedMotionGestureEvent, 1
    

    def onUpMotionGestureEvent(ev)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :onUpMotionGestureEvent, 1
    

    def onDownMotionGestureEvent(ev)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :onDownMotionGestureEvent, 1
    

    def onLeftMotionGestureEvent(ev)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :onLeftMotionGestureEvent, 1
    

    def onRightMotionGestureEvent(ev)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :onRightMotionGestureEvent, 1
    

    def onDiagonalDownRightMotionGestureEvent(ev)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :onDiagonalDownRightMotionGestureEvent, 1
    

    def onDiagonalDownLeftMotionGestureEvent(ev)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :onDiagonalDownLeftMotionGestureEvent, 1
    

    def onDiagonalUpRightMotionGestureEvent(ev)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :onDiagonalUpRightMotionGestureEvent, 1
    

    def onDiagonalUpLeftMotionGestureEvent(ev)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :onDiagonalUpLeftMotionGestureEvent, 1
    

    # throws Exception
    def released(ev)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :released, 1
end

autoload :MotionGestureEvent, "org/allbinary/input/motion/gesture/observer/MotionGestureEvent" unless const_defined?(:MotionGestureEvent, false)

end; end; end; end; end; end

