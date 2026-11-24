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
require "org/allbinary/logic/util/event/EventListenerInterface"

module ::Org; module Allbinary; module Input; module Motion; module Gesture; module Observer

module BaseMotionGestureEventListener
    include ::Org::Allbinary::Logic::Util::Event::EventListenerInterface
    

    def onMotionGestureEvent(motionGestureEvent)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :onMotionGestureEvent, 1
    

    def onScrolledMotionGestureEvent(motionGestureEvent)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :onScrolledMotionGestureEvent, 1
end

autoload :MotionGestureEvent, "org/allbinary/input/motion/gesture/observer/MotionGestureEvent" unless const_defined?(:MotionGestureEvent, false)

end; end; end; end; end; end

