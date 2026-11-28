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
# package org.allbinary.input.motion

require "java/lang/JavaOverload"
require "org/allbinary/input/motion/MotionRecognizer"

module ::Org; module Allbinary; module Input; module Motion

class GestureOnlyMotionRecognizer < MotionRecognizer
    attr_accessor :motionGestureRecognizer, :id

    def jfields_org_allbinary_input_motion_GestureOnlyMotionRecognizer
        @motionGestureRecognizer = nil unless instance_variable_defined?(:@motionGestureRecognizer)
        @id = nil unless instance_variable_defined?(:@id)
    end
    

    def initialize()
        super()
        jfields_org_allbinary_input_motion_GestureOnlyMotionRecognizer
        @id = ((@@index += 1) - 1)
        @motionGestureRecognizer = ::Org::Allbinary::Input::Motion::Gesture::MotionGestureRecognizer.new(@id)
    end
    

    # throws Exception
    def processStartMotionEvent(x, y, deviceId, modifiers)
        point = @@pointCircularPool.getNextInstance()
        point.setX(x)
        point.setY(y)
        @motionGestureRecognizer.processPressedMotionEvent(point, deviceId, modifiers)
    end
    java_overload :processStartMotionEvent, 4
    

    # throws Exception
    def processEndMotionEvent(x, y, deviceId, modifiers)
        point = @@pointCircularPool.getNextInstance()
        point.setX(x)
        point.setY(y)
        @motionGestureRecognizer.processReleasedMotionEvent(point, deviceId, modifiers)
    end
    java_overload :processEndMotionEvent, 4
    

    # throws Exception
    def processDraggedMotionEvent(x, y, deviceId, modifiers)
        point = @@pointCircularPool.getNextInstance()
        point.setX(x)
        point.setY(y)
        @motionGestureRecognizer.processDraggedMotionEvent(point, deviceId, modifiers)
    end
    java_overload :processDraggedMotionEvent, 4

    def self.index()
        GestureOnlyMotionRecognizer.java_static_fields unless @java_static_fields_started
        return defined?(@@index) ? @@index : nil
    end

    def self.index=(value)
        GestureOnlyMotionRecognizer.java_static_fields unless @java_static_fields_started
        @@index = value
    end

    def self.pointCircularPool()
        GestureOnlyMotionRecognizer.java_static_fields unless @java_static_fields_started
        return defined?(@@pointCircularPool) ? @@pointCircularPool : nil
    end

    def self.pointCircularPool=(value)
        GestureOnlyMotionRecognizer.java_static_fields unless @java_static_fields_started
        @@pointCircularPool = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        @@index = 0
        begin
            @@pointCircularPool = ::Org::Allbinary::Graphics::GPointCircularPool.new(40)
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "GestureOnlyMotionRecognizer"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Graphics; autoload :CustomGPoint, "org/allbinary/graphics/CustomGPoint" unless const_defined?(:CustomGPoint, false); end; end; end
module ::Org; module Allbinary; module Graphics; autoload :GPointCircularPool, "org/allbinary/graphics/GPointCircularPool" unless const_defined?(:GPointCircularPool, false); end; end; end
module ::Org; module Allbinary; module Input; module Motion; module Gesture; autoload :MotionGestureRecognizer, "org/allbinary/input/motion/gesture/MotionGestureRecognizer" unless const_defined?(:MotionGestureRecognizer, false); end; end; end; end; end

begin
    GestureOnlyMotionRecognizer.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

