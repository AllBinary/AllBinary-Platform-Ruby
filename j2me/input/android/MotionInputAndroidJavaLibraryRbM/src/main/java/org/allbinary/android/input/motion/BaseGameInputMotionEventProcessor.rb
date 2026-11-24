#
# AllBinary Open License Version 1
# Copyright (c) 2009 AllBinary
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
# package org.allbinary.android.input.motion

require "java/lang/JavaOverload"
require "org/allbinary/android/input/motion/MotionEventProcessor"

module ::Org; module Allbinary; module Android; module Input; module Motion

class BaseGameInputMotionEventProcessor < MotionEventProcessor
    attr_accessor :commonStrings, :gameMotionGestureListener

    def jfields_org_allbinary_android_input_motion_BaseGameInputMotionEventProcessor
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @gameMotionGestureListener = nil unless instance_variable_defined?(:@gameMotionGestureListener)
    end
    

    def initialize()
        super()
        jfields_org_allbinary_android_input_motion_BaseGameInputMotionEventProcessor
        @gameMotionGestureListener = ::Org::Allbinary::Input::Motion::Gesture::Observer::GameMotionGestureListener.new(::Org::Allbinary::Input::Motion::Gesture::Observer::MotionGestureReceiveInterfaceFactory.getInstance())
        self.addListener()
    end
    

    def process(motionEvent)
    end
    java_overload :process, 1
    

    def addListener()
        motionGesturesHandler = ::Org::Allbinary::Input::Motion::Gesture::Observer::BasicMotionGesturesHandler.getInstance()
        motionGesturesHandler.addListenerInterface(@gameMotionGestureListener)
    end
    java_overload :addListener, 0
end

module ::Android; module View; autoload :MotionEvent, "android/view/MotionEvent" unless const_defined?(:MotionEvent, false); end; end
module ::Org; module Allbinary; module Input; module Motion; module Gesture; module Observer; autoload :BasicMotionGesturesHandler, "org/allbinary/input/motion/gesture/observer/BasicMotionGesturesHandler" unless const_defined?(:BasicMotionGesturesHandler, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Input; module Motion; module Gesture; module Observer; autoload :GameMotionGestureListener, "org/allbinary/input/motion/gesture/observer/GameMotionGestureListener" unless const_defined?(:GameMotionGestureListener, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Input; module Motion; module Gesture; module Observer; autoload :MotionGestureReceiveInterfaceFactory, "org/allbinary/input/motion/gesture/observer/MotionGestureReceiveInterfaceFactory" unless const_defined?(:MotionGestureReceiveInterfaceFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end

end; end; end; end; end

