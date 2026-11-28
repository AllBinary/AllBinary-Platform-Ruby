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

class TrackballGameInputMotionEventProcessor < MotionEventProcessor
    attr_accessor :logUtil, :listener, :commonStrings

    def jfields_org_allbinary_android_input_motion_TrackballGameInputMotionEventProcessor
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @listener = ::Org::Allbinary::Game::Input::Motion::Action::SingleKeyPressGameKeyFromMotionGestureEventListener.new()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
    end
    

    def self.getInstance()
        return PROCESSOR
    end
    

    def initialize()
        super()
        jfields_org_allbinary_android_input_motion_TrackballGameInputMotionEventProcessor
    end
    

    def process(motionEvent)
        begin
            x = motionEvent.getX()
            y = motionEvent.getY()
            if x < 0.0
                @listener.onCompleteMotionGestureInputEvent(::Org::Allbinary::Input::Motion::Trackball::Action::LeftTrackballInputToGameKeyEventAction.getInstance())
            elsif x > 0.0
                @listener.onCompleteMotionGestureInputEvent(::Org::Allbinary::Input::Motion::Trackball::Action::RightTrackballInputToGameKeyEventAction.getInstance())
            end
            if y < 0.0
                @listener.onCompleteMotionGestureInputEvent(::Org::Allbinary::Input::Motion::Trackball::Action::UpTrackballInputToGameKeyEventAction.getInstance())
            elsif y > 0.0
                @listener.onCompleteMotionGestureInputEvent(::Org::Allbinary::Input::Motion::Trackball::Action::DownTrackballInputToGameKeyEventAction.getInstance())
            end
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.PROCESS, e)
        end
    end
    java_overload :process, 1

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:PROCESSOR, TrackballGameInputMotionEventProcessor.new())
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "TrackballGameInputMotionEventProcessor"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:PROCESSOR].include?(name)
        end
        super
    end
end

module ::Android; module View; autoload :MotionEvent, "android/view/MotionEvent" unless const_defined?(:MotionEvent, false); end; end
module ::Org; module Allbinary; module Game; module Input; module Motion; module Action; autoload :SingleKeyPressGameKeyFromMotionGestureEventListener, "org/allbinary/game/input/motion/action/SingleKeyPressGameKeyFromMotionGestureEventListener" unless const_defined?(:SingleKeyPressGameKeyFromMotionGestureEventListener, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Input; module Motion; module Trackball; module Action; autoload :DownTrackballInputToGameKeyEventAction, "org/allbinary/input/motion/trackball/action/DownTrackballInputToGameKeyEventAction" unless const_defined?(:DownTrackballInputToGameKeyEventAction, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Input; module Motion; module Trackball; module Action; autoload :LeftTrackballInputToGameKeyEventAction, "org/allbinary/input/motion/trackball/action/LeftTrackballInputToGameKeyEventAction" unless const_defined?(:LeftTrackballInputToGameKeyEventAction, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Input; module Motion; module Trackball; module Action; autoload :RightTrackballInputToGameKeyEventAction, "org/allbinary/input/motion/trackball/action/RightTrackballInputToGameKeyEventAction" unless const_defined?(:RightTrackballInputToGameKeyEventAction, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Input; module Motion; module Trackball; module Action; autoload :UpTrackballInputToGameKeyEventAction, "org/allbinary/input/motion/trackball/action/UpTrackballInputToGameKeyEventAction" unless const_defined?(:UpTrackballInputToGameKeyEventAction, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end

begin
    TrackballGameInputMotionEventProcessor.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

