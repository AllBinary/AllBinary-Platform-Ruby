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

require "java/lang/Object"

class MotionEventCircularPool
    attr_accessor :MIN, :eventPool

    def initialize_fields
        @MIN = TouchMotionGestureFactory.getInstance().LAST_MOTION.getId()
        @eventPool = AllBinaryEventCircularPool.new((InputFactory.getInstance().MAX - 1) - @MIN)
    end
    

    def self.createPool(id)
        return MotionEventCircularPool.new(id)
    end
    

    def initialize(id)
        initialize_fields
        @eventPool.initAllBinaryEventCircularPool(MotionEventFactory.new(@eventPool, id))
    end
    

    # throws Exception
    def getInstance(motionGestureInput)
        java_monitor.synchronize do
        return @eventPool.getInstance(motionGestureInput.getId() - @MIN)
        end
    end
end

require "org/allbinary/game/input/InputFactory"
require "org/allbinary/input/motion/gesture/MotionGestureInput"
require "org/allbinary/input/motion/gesture/TouchMotionGestureFactory"
require "org/allbinary/logic/util/event/AllBinaryEventCircularPool"
require "org/allbinary/input/motion/gesture/observer/MotionEventFactory"
require "org/allbinary/input/motion/gesture/observer/MotionGestureEvent"

