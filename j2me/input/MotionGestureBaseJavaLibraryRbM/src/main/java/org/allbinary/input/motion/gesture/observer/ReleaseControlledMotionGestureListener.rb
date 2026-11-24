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
require "org/allbinary/input/motion/gesture/observer/MotionGestureEventListener"

module ::Org; module Allbinary; module Input; module Motion; module Gesture; module Observer

class ReleaseControlledMotionGestureListener
    include MotionGestureEventListener
    attr_accessor :logUtil, :commonStrings, :currentMotionGesture, :isMouseGestureOccurring, :motionGestureCollection, :signed

    def jfields_org_allbinary_input_motion_gesture_observer_ReleaseControlledMotionGestureListener
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @currentMotionGesture = ::Org::Allbinary::Input::Motion::Gesture::TouchMotionGestureFactory.getInstance().NO_MOTION
        @isMouseGestureOccurring = false
        @motionGestureCollection = ::Org::Allbinary::Util::BasicArrayListD.new()
        @signed = nil unless instance_variable_defined?(:@signed)
    end
    

    def initialize(signed)
        jfields_org_allbinary_input_motion_gesture_observer_ReleaseControlledMotionGestureListener
        @logUtil.putF(@commonStrings.START, self, @commonStrings.CONSTRUCTOR)
        @signed = signed
    end
    

    def onEvent(eventObject)
        ::Org::Allbinary::Logic::Communication::Log::ForcedLogUtil.log(@commonStrings.NOT_IMPLEMENTED, self)
    end
    java_overload :onEvent, 1
    

    def onUpMotionGestureEvent(ev)
        self.onMotionGestureEvent(ev)
    end
    java_overload :onUpMotionGestureEvent, 1
    

    def onDownMotionGestureEvent(ev)
        self.onMotionGestureEvent(ev)
    end
    java_overload :onDownMotionGestureEvent, 1
    

    def onLeftMotionGestureEvent(ev)
        self.onMotionGestureEvent(ev)
    end
    java_overload :onLeftMotionGestureEvent, 1
    

    def onRightMotionGestureEvent(ev)
        self.onMotionGestureEvent(ev)
    end
    java_overload :onRightMotionGestureEvent, 1
    

    def onDiagonalDownRightMotionGestureEvent(ev)
        self.onMotionGestureEvent(ev)
    end
    java_overload :onDiagonalDownRightMotionGestureEvent, 1
    

    def onDiagonalDownLeftMotionGestureEvent(ev)
        self.onMotionGestureEvent(ev)
    end
    java_overload :onDiagonalDownLeftMotionGestureEvent, 1
    

    def onDiagonalUpRightMotionGestureEvent(ev)
        self.onMotionGestureEvent(ev)
    end
    java_overload :onDiagonalUpRightMotionGestureEvent, 1
    

    def onDiagonalUpLeftMotionGestureEvent(ev)
        self.onMotionGestureEvent(ev)
    end
    java_overload :onDiagonalUpLeftMotionGestureEvent, 1
    

    def onPressedMotionGestureEvent(ev)
        @isMouseGestureOccurring = true
        @currentMotionGesture = ::Org::Allbinary::Input::Motion::Gesture::TouchMotionGestureFactory.getInstance().NO_MOTION
        self.onMotionGestureEvent(ev)
    end
    java_overload :onPressedMotionGestureEvent, 1
    

    def onScrolledMotionGestureEvent(motionGestureEvent)
    end
    java_overload :onScrolledMotionGestureEvent, 1
    

    def released(ev)
        begin
            if @isMouseGestureOccurring == false
                return
            end
            @isMouseGestureOccurring = false
            @signed.onMotionGestureCompleted(@motionGestureCollection)
            @motionGestureCollection.clear()
        rescue StandardError => e
            @logUtil.put(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(@commonStrings.EXCEPTION_LABEL).append(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().toString(ev.getMotionGesture())).to_s, self, "release", e)
        end
    end
    java_overload :released, 1
    

    def onMotionGestureEvent(ev)
        if @isMouseGestureOccurring == false
            return
        end
        motionGestureInput = ev.getMotionGesture()
        if motionGestureInput == ::Org::Allbinary::Input::Motion::Gesture::TouchMotionGestureFactory.getInstance().PRESSED
            self.onPressedMotionGestureEvent(ev)
        elsif motionGestureInput == ::Org::Allbinary::Input::Motion::Gesture::TouchMotionGestureFactory.getInstance().RELEASED
            self.released(ev)
        else
            if @currentMotionGesture != motionGestureInput
                @currentMotionGesture = motionGestureInput
                @motionGestureCollection.add(ev.getMotionGesture())
            end
        end
    end
    java_overload :onMotionGestureEvent, 1
end

module ::Org; module Allbinary; module Input; module Motion; module Gesture; autoload :MotionGestureInput, "org/allbinary/input/motion/gesture/MotionGestureInput" unless const_defined?(:MotionGestureInput, false); end; end; end; end; end
module ::Org; module Allbinary; module Input; module Motion; module Gesture; autoload :TouchMotionGestureFactory, "org/allbinary/input/motion/gesture/TouchMotionGestureFactory" unless const_defined?(:TouchMotionGestureFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :ForcedLogUtil, "org/allbinary/logic/communication/log/ForcedLogUtil" unless const_defined?(:ForcedLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Event; autoload :AllBinaryEventObject, "org/allbinary/logic/util/event/AllBinaryEventObject" unless const_defined?(:AllBinaryEventObject, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
autoload :CompleteMotionGestureListenerInterface, "org/allbinary/input/motion/gesture/observer/CompleteMotionGestureListenerInterface" unless const_defined?(:CompleteMotionGestureListenerInterface, false)
autoload :MotionGestureEvent, "org/allbinary/input/motion/gesture/observer/MotionGestureEvent" unless const_defined?(:MotionGestureEvent, false)

end; end; end; end; end; end

