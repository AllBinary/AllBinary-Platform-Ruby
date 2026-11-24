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

module ::Org; module Allbinary; module Input; module Motion; module Gesture; module Observer

class MotionEventCircularPool
    attr_accessor :MIN, :eventPool

    def jfields_org_allbinary_input_motion_gesture_observer_MotionEventCircularPool
        @MIN = ::Org::Allbinary::Input::Motion::Gesture::TouchMotionGestureFactory.getInstance().LAST_MOTION.getId()
        @eventPool = ::Org::Allbinary::Logic::Util::Event::AllBinaryEventCircularPool.new((::Org::Allbinary::Game::Input::InputFactory.getInstance().MAX - 1) - @MIN)
    end
    

    def self.createPool(id)
        return MotionEventCircularPool.new(id)
    end
    

    def initialize(id)
        jfields_org_allbinary_input_motion_gesture_observer_MotionEventCircularPool
        @eventPool.initAllBinaryEventCircularPool(MotionEventFactory.new(@eventPool, id))
    end
    

    # throws Exception
    def getInstance(motionGestureInput)
        java_monitor.synchronize do
        return @eventPool.getInstance(motionGestureInput.getId() - @MIN)
        end
    end
end

module ::Org; module Allbinary; module Game; module Input; autoload :InputFactory, "org/allbinary/game/input/InputFactory" unless const_defined?(:InputFactory, false); end; end; end; end
module ::Org; module Allbinary; module Input; module Motion; module Gesture; autoload :MotionGestureInput, "org/allbinary/input/motion/gesture/MotionGestureInput" unless const_defined?(:MotionGestureInput, false); end; end; end; end; end
module ::Org; module Allbinary; module Input; module Motion; module Gesture; autoload :TouchMotionGestureFactory, "org/allbinary/input/motion/gesture/TouchMotionGestureFactory" unless const_defined?(:TouchMotionGestureFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Event; autoload :AllBinaryEventCircularPool, "org/allbinary/logic/util/event/AllBinaryEventCircularPool" unless const_defined?(:AllBinaryEventCircularPool, false); end; end; end; end; end
autoload :MotionEventFactory, "org/allbinary/input/motion/gesture/observer/MotionEventFactory" unless const_defined?(:MotionEventFactory, false)
autoload :MotionGestureEvent, "org/allbinary/input/motion/gesture/observer/MotionGestureEvent" unless const_defined?(:MotionGestureEvent, false)

end; end; end; end; end; end

