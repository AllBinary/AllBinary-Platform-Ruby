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
# package org.allbinary.game.input

require "java/lang/JavaOverload"
require "org/allbinary/logic/util/event/EventListenerInterface"

module ::Org; module Allbinary; module Game; module Input

module CompleteMotionGestureInputEventListenerInterface
    include ::Org::Allbinary::Logic::Util::Event::EventListenerInterface
    

    def onCompleteMotionGestureInputEvent(completeMotionGestureInputEvent)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :onCompleteMotionGestureInputEvent, 1
end

autoload :CompleteMotionGestureInputEvent, "org/allbinary/game/input/CompleteMotionGestureInputEvent" unless const_defined?(:CompleteMotionGestureInputEvent, false)

end; end; end; end

