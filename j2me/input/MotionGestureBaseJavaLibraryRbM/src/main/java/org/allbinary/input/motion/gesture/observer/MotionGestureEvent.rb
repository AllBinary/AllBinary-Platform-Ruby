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

require "java/lang/Object"
require "java/lang/JavaOverload"
require "org/allbinary/logic/util/event/AllBinaryEventObject"

module ::Org; module Allbinary; module Input; module Motion; module Gesture; module Observer

class MotionGestureEvent < ::Org::Allbinary::Logic::Util::Event::AllBinaryEventObject
    attr_accessor :motionGesture, :id, :previousPoint, :currentPoint, :commonLabels

    def jfields_org_allbinary_input_motion_gesture_observer_MotionGestureEvent
        @motionGesture = ::Org::Allbinary::Input::Motion::Gesture::TouchMotionGestureFactory.getInstance().NO_MOTION
        @id = nil unless instance_variable_defined?(:@id)
        @previousPoint = ::Org::Allbinary::Graphics::PointFactory.getInstance().ZERO_ZERO
        @currentPoint = ::Org::Allbinary::Graphics::PointFactory.getInstance().ZERO_ZERO
        @commonLabels = ::Org::Allbinary::StringPackage::CommonLabels.getInstance()
    end
    

    def initialize(source, id, motionGesture)
        super(source)
        jfields_org_allbinary_input_motion_gesture_observer_MotionGestureEvent
        @id = id
        self.setMotionGesture(motionGesture)
    end
    

    def getMotionGesture()
        return @motionGesture
    end
    java_overload :getMotionGesture, 0
    

    def setMotionGesture(motionGesture)
        @motionGesture = motionGesture
    end
    java_overload :setMotionGesture, 1
    

    def getPreviousPoint()
        return @previousPoint
    end
    java_overload :getPreviousPoint, 0
    

    def setPreviousPoint(previousPoint)
        @previousPoint = previousPoint
    end
    java_overload :setPreviousPoint, 1
    

    def getCurrentPoint()
        return @currentPoint
    end
    java_overload :getCurrentPoint, 0
    

    def setCurrentPoint(currentPoint)
        @currentPoint = currentPoint
    end
    java_overload :setCurrentPoint, 1
    

    def toString()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringUtil = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance()
        stringBuffer.append(stringUtil.toString(@motionGesture))
        stringBuffer.append(@commonLabels.CURRENT)
        stringBuffer.append(stringUtil.toString(@currentPoint))
        stringBuffer.append(MotionGestureEvent::PREVIOUS)
        stringBuffer.append(stringUtil.toString(@previousPoint))
        stringBuffer.append(MotionGestureEvent::HASHCODE)
        stringBuffer.appendint(((::Org::Allbinary::TsUtil.getInstance().hashCode(self)).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }))
        return stringBuffer.to_s
    end
    java_overload :toString, 0
    alias_method :to_s, :toString
    

    def getId()
        return @id
    end
    java_overload :getId, 0

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:PREVIOUS, " Previous: ")
        const_set(:HASHCODE, " hashcode: ")
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "MotionGestureEvent"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:PREVIOUS, :HASHCODE].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Graphics; autoload :GPoint, "org/allbinary/graphics/GPoint" unless const_defined?(:GPoint, false); end; end; end
module ::Org; module Allbinary; module Graphics; autoload :PointFactory, "org/allbinary/graphics/PointFactory" unless const_defined?(:PointFactory, false); end; end; end
module ::Org; module Allbinary; module Input; module Motion; module Gesture; autoload :MotionGestureInput, "org/allbinary/input/motion/gesture/MotionGestureInput" unless const_defined?(:MotionGestureInput, false); end; end; end; end; end
module ::Org; module Allbinary; module Input; module Motion; module Gesture; autoload :TouchMotionGestureFactory, "org/allbinary/input/motion/gesture/TouchMotionGestureFactory" unless const_defined?(:TouchMotionGestureFactory, false); end; end; end; end; end
module ::Org; module Allbinary; autoload :TsUtil, "org/allbinary/TsUtil" unless const_defined?(:TsUtil, false); end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonLabels, "org/allbinary/string/CommonLabels" unless const_defined?(:CommonLabels, false); end; end; end

begin
    MotionGestureEvent.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end

