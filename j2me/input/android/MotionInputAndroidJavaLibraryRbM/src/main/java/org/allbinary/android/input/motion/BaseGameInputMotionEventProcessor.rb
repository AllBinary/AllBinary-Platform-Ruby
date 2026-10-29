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

require "org/allbinary/android/input/motion/MotionEventProcessor"

class BaseGameInputMotionEventProcessor < MotionEventProcessor
    attr_accessor :commonStrings, :gameMotionGestureListener

    def initialize_fields
        @commonStrings = CommonStrings.getInstance()
        @gameMotionGestureListener = nil
    end
    

    def initialize()
        super()
        initialize_fields
        @gameMotionGestureListener = GameMotionGestureListener.new(MotionGestureReceiveInterfaceFactory.getInstance())
        self.addListener()
    end
    

    def process(motionEvent)
    end
    

    def addListener()
        motionGesturesHandler = BasicMotionGesturesHandler.getInstance()
        motionGesturesHandler.addListenerInterface(@gameMotionGestureListener)
    end
end

require "android/view/MotionEvent"
require "org/allbinary/input/motion/gesture/observer/BasicMotionGesturesHandler"
require "org/allbinary/input/motion/gesture/observer/GameMotionGestureListener"
require "org/allbinary/input/motion/gesture/observer/MotionGestureReceiveInterfaceFactory"
require "org/allbinary/string/CommonStrings"

