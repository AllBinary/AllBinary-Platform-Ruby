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
        return defined?(@@index) ? @@index : nil
    end

    def self.index=(value)
        @@index = value
    end
end

require "org/allbinary/game/input/Input"
require "org/allbinary/game/input/InputFactory"
require "org/allbinary/input/motion/gesture/MotionGestureInput"
require "org/allbinary/input/motion/gesture/TouchMotionGestureFactory"
require "org/allbinary/logic/util/event/AllBinaryEventObject"
require "org/allbinary/input/motion/gesture/observer/MotionGestureEvent"

class MotionEventFactory
    @@index = 0
end

