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
# package org.allbinary.input


module ::Org; module Allbinary; module Input

#TouchJ2ME
class TouchJ2ME
    attr_accessor :logUtil, :DEVICE_ID, :motionRecognizer

    def jfields_org_allbinary_input_TouchJ2ME
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @DEVICE_ID = 0
        @motionRecognizer = ::Org::Allbinary::Input::Motion::AllMotionRecognizer.new()
    end
    

    def initialize()
        jfields_org_allbinary_input_TouchJ2ME
        motionGesturesHandler = @motionRecognizer.getMotionGestureRecognizer().getMotionGesturesHandler()
        motionGesturesHandler.addListenerInterface(::Org::Allbinary::Input::Motion::Gesture::Observer::GameMotionGestureListener.new(::Org::Allbinary::Input::Motion::Gesture::Observer::MotionGestureReceiveInterfaceFactory.getInstance()))
    end
    

    def pointerDragged(x, y)
        begin
            @motionRecognizer.processDraggedMotionEvent(x, y, @DEVICE_ID, 0)
        rescue StandardError => e
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
            @logUtil.put(commonStrings.EXCEPTION, self, "pointerDragged", e)
        end
    end
    

    def pointerPressed(x, y)
        begin
            @motionRecognizer.processStartMotionEvent(x, y, @DEVICE_ID, 0)
        rescue StandardError => e
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
            @logUtil.put(commonStrings.EXCEPTION, self, "pointerPressed", e)
        end
    end
    

    def pointerReleased(x, y)
        begin
            @motionRecognizer.processEndMotionEvent(x, y, @DEVICE_ID, 0)
        rescue StandardError => e
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
            @logUtil.put(commonStrings.EXCEPTION, self, "pointerReleased", e)
        end
    end
end

module ::Org; module Allbinary; module Input; module Motion; autoload :AllMotionRecognizer, "org/allbinary/input/motion/AllMotionRecognizer" unless const_defined?(:AllMotionRecognizer, false); end; end; end; end
module ::Org; module Allbinary; module Input; module Motion; module Gesture; module Observer; autoload :BasicMotionGesturesHandler, "org/allbinary/input/motion/gesture/observer/BasicMotionGesturesHandler" unless const_defined?(:BasicMotionGesturesHandler, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Input; module Motion; module Gesture; module Observer; autoload :GameMotionGestureListener, "org/allbinary/input/motion/gesture/observer/GameMotionGestureListener" unless const_defined?(:GameMotionGestureListener, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Input; module Motion; module Gesture; module Observer; autoload :MotionGestureReceiveInterfaceFactory, "org/allbinary/input/motion/gesture/observer/MotionGestureReceiveInterfaceFactory" unless const_defined?(:MotionGestureReceiveInterfaceFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end

end; end; end

