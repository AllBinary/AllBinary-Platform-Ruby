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

require "org/allbinary/logic/util/event/AllBinaryEventObject"

class MotionGestureEvent < AllBinaryEventObject
    attr_accessor :motionGesture, :id, :previousPoint, :currentPoint, :commonLabels

    def initialize_fields
        @motionGesture = TouchMotionGestureFactory.getInstance().NO_MOTION
        @id = nil
        @previousPoint = PointFactory.getInstance().ZERO_ZERO
        @currentPoint = PointFactory.getInstance().ZERO_ZERO
        @commonLabels = CommonLabels.getInstance()
    end
    

    def initialize(source, id, motionGesture)
        super(source)
        initialize_fields
        @id = id
        self.setMotionGesture(motionGesture)
    end
    

    def getMotionGesture()
        return @motionGesture
    end
    

    def setMotionGesture(motionGesture)
        @motionGesture = motionGesture
    end
    

    def getPreviousPoint()
        return @previousPoint
    end
    

    def setPreviousPoint(previousPoint)
        @previousPoint = previousPoint
    end
    

    def getCurrentPoint()
        return @currentPoint
    end
    

    def setCurrentPoint(currentPoint)
        @currentPoint = currentPoint
    end
    

    def toString()
        stringBuffer = StringMaker.new()
        stringUtil = StringUtil.getInstance()
        stringBuffer.append(stringUtil.toString(@motionGesture))
        stringBuffer.append(@commonLabels.CURRENT)
        stringBuffer.append(stringUtil.toString(@currentPoint))
        stringBuffer.append(MotionGestureEvent::PREVIOUS)
        stringBuffer.append(stringUtil.toString(@previousPoint))
        stringBuffer.append(MotionGestureEvent::HASHCODE)
        stringBuffer.appendint((TsUtil.getInstance().hashCode(self)).to_i)
        return stringBuffer.to_s
    end
    alias_method :to_s, :toString
    

    def getId()
        return @id
    end

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

autoload :GPoint, "org/allbinary/graphics/GPoint"
autoload :PointFactory, "org/allbinary/graphics/PointFactory"
autoload :MotionGestureInput, "org/allbinary/input/motion/gesture/MotionGestureInput"
autoload :TouchMotionGestureFactory, "org/allbinary/input/motion/gesture/TouchMotionGestureFactory"
autoload :TsUtil, "org/allbinary/TsUtil"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :StringUtil, "org/allbinary/logic/string/StringUtil"
autoload :CommonLabels, "org/allbinary/string/CommonLabels"

begin
    MotionGestureEvent.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

