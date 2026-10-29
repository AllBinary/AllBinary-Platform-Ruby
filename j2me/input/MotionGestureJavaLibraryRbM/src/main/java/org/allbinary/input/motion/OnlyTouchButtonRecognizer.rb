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
# package org.allbinary.input.motion

require "org/allbinary/input/motion/MotionRecognizer"

class OnlyTouchButtonRecognizer < MotionRecognizer
    attr_accessor :touchButtonRecognizer, :touchButtonProcessing

    def initialize_fields
        @touchButtonRecognizer = nil
        @touchButtonProcessing = false
    end
    

    def initialize()
        super()
        initialize_fields
        @touchButtonRecognizer = TouchButtonRecognizer.new()
    end
    

    # throws Exception
    def processStartMotionEvent(x, y, deviceId, modifiers)
        if @touchButtonRecognizer.pressTouchButtonInput(x, y, deviceId)
            @touchButtonProcessing = true
        end
    end
    

    # throws Exception
    def processEndMotionEvent(x, y, deviceId, modifiers)
        if @touchButtonProcessing
            @touchButtonProcessing = false
        end
        if @touchButtonRecognizer.releaseTouchButtonInput(x, y, deviceId)
            return
        end
    end
    

    # throws Exception
    def processDraggedMotionEvent(x, y, deviceId, modifiers)
        if @touchButtonProcessing
            @touchButtonRecognizer.pressTouchButtonInput(x, y, deviceId)
        end
    end
end

require "org/allbinary/input/motion/button/TouchButtonRecognizer"

