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
# package org.allbinary.android.input.motion.api1

require "java/lang/JavaOverload"
require "org/allbinary/android/input/motion/BaseGameInputMotionEventProcessor"

module ::Org; module Allbinary; module Android; module Input; module Motion; module Api1

class GameInputMotionEventProcessorAPI1 < ::Org::Allbinary::Android::Input::Motion::BaseGameInputMotionEventProcessor
    attr_accessor :logUtil, :motionRecognizer

    def jfields_org_allbinary_android_input_motion_api1_GameInputMotionEventProcessorAPI1
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @motionRecognizer = ::Org::Allbinary::Input::Motion::AllMotionRecognizer.new()
    end
    

    def self.getInstance()
        if @@instance == ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT
            @@instance = GameInputMotionEventProcessorAPI1.new()
        end
        return @@instance
    end
    

    def initialize()
        super()
        jfields_org_allbinary_android_input_motion_api1_GameInputMotionEventProcessorAPI1
    end
    

    def process(motionEvent)
        begin
            x = ((motionEvent.getX()).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })
            y = ((motionEvent.getY()).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })
            action = motionEvent.getAction()
            if action == ::Android::View::MotionEvent::ACTION_DOWN
                @motionRecognizer.processStartMotionEvent(x, y, motionEvent.getDeviceId(), 0)
            elsif action == ::Android::View::MotionEvent::ACTION_UP || action == ::Android::View::MotionEvent::ACTION_CANCEL
                @motionRecognizer.processEndMotionEvent(x, y, motionEvent.getDeviceId(), 0)
            elsif action == ::Android::View::MotionEvent::ACTION_MOVE
                @motionRecognizer.processDraggedMotionEvent(x, y, motionEvent.getDeviceId(), 0)
            end
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.PROCESS, e)
        end
    end
    java_overload :process, 1

    def self.instance()
        GameInputMotionEventProcessorAPI1.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        GameInputMotionEventProcessorAPI1.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "GameInputMotionEventProcessorAPI1"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Android; module View; autoload :MotionEvent, "android/view/MotionEvent" unless const_defined?(:MotionEvent, false); end; end
module ::Org; module Allbinary; module Input; module Motion; autoload :AllMotionRecognizer, "org/allbinary/input/motion/AllMotionRecognizer" unless const_defined?(:AllMotionRecognizer, false); end; end; end; end
module ::Org; module Allbinary; module Input; module Motion; autoload :MotionRecognizer, "org/allbinary/input/motion/MotionRecognizer" unless const_defined?(:MotionRecognizer, false); end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :NullUtil, "org/allbinary/logic/NullUtil" unless const_defined?(:NullUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end

begin
    GameInputMotionEventProcessorAPI1.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end

