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
require "org/allbinary/input/motion/gesture/observer/CompleteMotionGestureListenerInterface"

module ::Org; module Allbinary; module Input; module Motion; module Gesture; module Observer

class NullCompleteMotionGestureReceiver
    include CompleteMotionGestureListenerInterface
    attr_accessor :logUtil

    def jfields_org_allbinary_input_motion_gesture_observer_NullCompleteMotionGestureReceiver
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
    end
    

    def initialize()
        jfields_org_allbinary_input_motion_gesture_observer_NullCompleteMotionGestureReceiver
        commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @logUtil.putF("Null Gesture Reciever", self, commonStrings.CONSTRUCTOR)
    end
    

    # throws Exception
    def onMotionGestureCompleted(list)
    end
    java_overload :onMotionGestureCompleted, 1
end

module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end

end; end; end; end; end; end

