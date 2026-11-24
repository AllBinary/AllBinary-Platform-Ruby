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
require "org/allbinary/logic/util/event/AllBinaryEventObjectFactoryInterface"

module ::Org; module Allbinary; module Input; module Motion; module Gesture; module Observer

class MotionEventFactory
    include ::Org::Allbinary::Logic::Util::Event::AllBinaryEventObjectFactoryInterface
    attr_accessor :source, :id

    def jfields_org_allbinary_input_motion_gesture_observer_MotionEventFactory
        @source = nil unless instance_variable_defined?(:@source)
        @id = nil unless instance_variable_defined?(:@id)
    end
    

    def initialize(source, id)
        jfields_org_allbinary_input_motion_gesture_observer_MotionEventFactory
        @source = source
        @id = id
        MotionEventFactory.index = ::Org::Allbinary::Input::Motion::Gesture::TouchMotionGestureFactory.getInstance().LAST_MOTION.getId()
    end
    

    def getInstance()
        inputFactory = ::Org::Allbinary::Game::Input::InputFactory.getInstance()
        input = inputFactory.getInstanceById(((MotionEventFactory.index += 1) - 1))
        if input == inputFactory.NO_INPUT
            return MotionGestureEvent.new(@source, @id, ::Org::Allbinary::Input::Motion::Gesture::TouchMotionGestureFactory.getInstance().NO_MOTION)
        else
            return MotionGestureEvent.new(@source, @id, input)
        end
    end
    java_overload :getInstance, 0

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

module ::Org; module Allbinary; module Game; module Input; autoload :Input, "org/allbinary/game/input/Input" unless const_defined?(:Input, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Input; autoload :InputFactory, "org/allbinary/game/input/InputFactory" unless const_defined?(:InputFactory, false); end; end; end; end
module ::Org; module Allbinary; module Input; module Motion; module Gesture; autoload :MotionGestureInput, "org/allbinary/input/motion/gesture/MotionGestureInput" unless const_defined?(:MotionGestureInput, false); end; end; end; end; end
module ::Org; module Allbinary; module Input; module Motion; module Gesture; autoload :TouchMotionGestureFactory, "org/allbinary/input/motion/gesture/TouchMotionGestureFactory" unless const_defined?(:TouchMotionGestureFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Event; autoload :AllBinaryEventObject, "org/allbinary/logic/util/event/AllBinaryEventObject" unless const_defined?(:AllBinaryEventObject, false); end; end; end; end; end
autoload :MotionGestureEvent, "org/allbinary/input/motion/gesture/observer/MotionGestureEvent" unless const_defined?(:MotionGestureEvent, false)

begin
    MotionEventFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end

