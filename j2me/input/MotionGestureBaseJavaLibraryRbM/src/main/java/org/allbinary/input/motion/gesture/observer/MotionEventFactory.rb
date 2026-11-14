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

require "org/allbinary/logic/util/event/AllBinaryEventObjectFactoryInterface"

class MotionEventFactory
    include AllBinaryEventObjectFactoryInterface
    attr_accessor :source, :id

    def initialize_fields
        @source = nil
        @id = nil
    end
    

    def initialize(source, id)
        initialize_fields
        @source = source
        @id = id
        MotionEventFactory.index = TouchMotionGestureFactory.getInstance().LAST_MOTION.getId()
    end
    

    def getInstance()
        inputFactory = InputFactory.getInstance()
        input = inputFactory.getInstanceById(((MotionEventFactory.index += 1) - 1))
        if input == inputFactory.NO_INPUT
            return MotionGestureEvent.new(@source, @id, TouchMotionGestureFactory.getInstance().NO_MOTION)
        else
            return MotionGestureEvent.new(@source, @id, input)
        end
    end

    def self.index()
        MotionEventFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@index) ? @@index : nil
    end

    def self.index=(value)
        MotionEventFactory.java_static_fields unless @java_static_fields_started
        @@index = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        @@index = 0
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "MotionEventFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :Input, "org/allbinary/game/input/Input"
autoload :InputFactory, "org/allbinary/game/input/InputFactory"
autoload :MotionGestureInput, "org/allbinary/input/motion/gesture/MotionGestureInput"
autoload :TouchMotionGestureFactory, "org/allbinary/input/motion/gesture/TouchMotionGestureFactory"
autoload :AllBinaryEventObject, "org/allbinary/logic/util/event/AllBinaryEventObject"
autoload :MotionGestureEvent, "org/allbinary/input/motion/gesture/observer/MotionGestureEvent"

begin
    MotionEventFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

