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
# package org.allbinary.input.motion.touch.action

require "org/allbinary/game/input/motion/action/GameKeyCompleteMotionGestureInputEvent"

class DiagonalUpRightTouchInputToGameKeyEventAction < GameKeyCompleteMotionGestureInputEvent
    

    def self.getInstance()
        if DiagonalUpRightTouchInputToGameKeyEventAction.instance == NullUtil.getInstance().NULL_OBJECT
            DiagonalUpRightTouchInputToGameKeyEventAction.instance = DiagonalUpRightTouchInputToGameKeyEventAction.new()
        end
        return DiagonalUpRightTouchInputToGameKeyEventAction.instance
    end
    

    def initialize()
        super("Diagonal Up Right Action", TouchMotionGestureFactory.getInstance().DIAGONAL_UP_RIGHT, PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance().getInputMapping())
    end

    def self.instance()
        DiagonalUpRightTouchInputToGameKeyEventAction.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        DiagonalUpRightTouchInputToGameKeyEventAction.java_static_fields unless @java_static_fields_started
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
        if name == "DiagonalUpRightTouchInputToGameKeyEventAction"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :PlatformInputMappingFactory, "org/allbinary/game/input/PlatformInputMappingFactory"
autoload :TouchMotionGestureFactory, "org/allbinary/input/motion/gesture/TouchMotionGestureFactory"
autoload :NullUtil, "org/allbinary/logic/NullUtil"

begin
    DiagonalUpRightTouchInputToGameKeyEventAction.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

