# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.game.input

require "java/lang/JavaOverload"
require "org/allbinary/game/input/CompleteMotionGestureInputEventListenerInterface"

module ::Org; module Allbinary; module Game; module Input

class CompleteMotionGestureInputEventListener
    include CompleteMotionGestureInputEventListenerInterface
    

    def onEvent(eventObject)
    end
    java_overload :onEvent, 1
    

    def onCompleteMotionGestureInputEvent(completeMotionGestureInputEvent)
    end
    java_overload :onCompleteMotionGestureInputEvent, 1
end

module ::Org; module Allbinary; module Logic; module Util; module Event; autoload :AllBinaryEventObject, "org/allbinary/logic/util/event/AllBinaryEventObject" unless const_defined?(:AllBinaryEventObject, false); end; end; end; end; end
autoload :CompleteMotionGestureInputEvent, "org/allbinary/game/input/CompleteMotionGestureInputEvent" unless const_defined?(:CompleteMotionGestureInputEvent, false)

end; end; end; end

