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
# package org.allbinary.game.input.motion.action

require "org/allbinary/game/input/CompleteMotionGestureInputEventListener"

class NoCompleteMotionGestureInputEventListener < CompleteMotionGestureInputEventListener
    

    def initialize()
        super()
    end
    

    def onEvent(eventObject)
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, self)
    end
    

    def onCompleteMotionGestureInputEvent(completeMotionGestureInputEvent)
    end
    

    def self.getInstance()
        return NoCompleteMotionGestureInputEventListener.instance
    end

    def self.instance()
        NoCompleteMotionGestureInputEventListener.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        NoCompleteMotionGestureInputEventListener.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = NoCompleteMotionGestureInputEventListener.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "NoCompleteMotionGestureInputEventListener"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :CompleteMotionGestureInputEvent, "org/allbinary/game/input/CompleteMotionGestureInputEvent"
autoload :ForcedLogUtil, "org/allbinary/logic/communication/log/ForcedLogUtil"
autoload :AllBinaryEventObject, "org/allbinary/logic/util/event/AllBinaryEventObject"
autoload :EventStrings, "org/allbinary/logic/util/event/EventStrings"

begin
    NoCompleteMotionGestureInputEventListener.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

