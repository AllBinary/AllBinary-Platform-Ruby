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
# package org.allbinary.input.motion.trackball.action

require "org/allbinary/game/input/motion/action/GameKeyCompleteMotionGestureInputEvent"

class UpTrackballInputToGameKeyEventAction < GameKeyCompleteMotionGestureInputEvent
    

    def self.getInstance()
        if UpTrackballInputToGameKeyEventAction.instance == NullUtil.getInstance().NULL_OBJECT
            UpTrackballInputToGameKeyEventAction.instance = UpTrackballInputToGameKeyEventAction.new()
        end
        return UpTrackballInputToGameKeyEventAction.instance
    end
    

    def initialize()
        super("Up Action", TrackballMotionGestureFactory.getInstance().UP, PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance().getInputMapping())
    end

    def self.instance()
        UpTrackballInputToGameKeyEventAction.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        UpTrackballInputToGameKeyEventAction.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = NullUtil.getInstance().NULL_OBJECT
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "UpTrackballInputToGameKeyEventAction"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :PlatformInputMappingFactory, "org/allbinary/game/input/PlatformInputMappingFactory"
autoload :TrackballMotionGestureFactory, "org/allbinary/input/motion/gesture/TrackballMotionGestureFactory"
autoload :NullUtil, "org/allbinary/logic/NullUtil"

begin
    UpTrackballInputToGameKeyEventAction.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

