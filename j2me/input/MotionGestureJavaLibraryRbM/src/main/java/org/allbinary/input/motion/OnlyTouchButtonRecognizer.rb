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

require "java/lang/JavaOverload"
require "org/allbinary/input/motion/MotionRecognizer"

module ::Org; module Allbinary; module Input; module Motion

class OnlyTouchButtonRecognizer < MotionRecognizer
    attr_accessor :touchButtonRecognizer, :touchButtonProcessing

    def jfields_org_allbinary_input_motion_OnlyTouchButtonRecognizer
        @touchButtonRecognizer = nil unless instance_variable_defined?(:@touchButtonRecognizer)
        @touchButtonProcessing = false
    end
    

    def initialize()
        super()
        jfields_org_allbinary_input_motion_OnlyTouchButtonRecognizer
        @touchButtonRecognizer = ::Org::Allbinary::Input::Motion::Button::TouchButtonRecognizer.new()
    end
    

    # throws Exception
    def processStartMotionEvent(x, y, deviceId, modifiers)
        if @touchButtonRecognizer.pressTouchButtonInput(x, y, deviceId)
            @touchButtonProcessing = true
        end
    end
    java_overload :processStartMotionEvent, 4
    

    # throws Exception
    def processEndMotionEvent(x, y, deviceId, modifiers)
        if @touchButtonProcessing
            @touchButtonProcessing = false
        end
        if @touchButtonRecognizer.releaseTouchButtonInput(x, y, deviceId)
            return
        end
    end
    java_overload :processEndMotionEvent, 4
    

    # throws Exception
    def processDraggedMotionEvent(x, y, deviceId, modifiers)
        if @touchButtonProcessing
            @touchButtonRecognizer.pressTouchButtonInput(x, y, deviceId)
        end
    end
    java_overload :processDraggedMotionEvent, 4
end

module ::Org; module Allbinary; module Input; module Motion; module Button; autoload :TouchButtonRecognizer, "org/allbinary/input/motion/button/TouchButtonRecognizer" unless const_defined?(:TouchButtonRecognizer, false); end; end; end; end; end

end; end; end; end

