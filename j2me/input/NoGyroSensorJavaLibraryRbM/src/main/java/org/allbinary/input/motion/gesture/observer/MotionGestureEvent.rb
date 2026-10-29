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
end

require "org/allbinary/graphics/GPoint"
require "org/allbinary/graphics/PointFactory"
require "org/allbinary/input/motion/gesture/MotionGestureInput"
require "org/allbinary/input/motion/gesture/TouchMotionGestureFactory"
require "org/allbinary/TsUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/string/CommonLabels"

class MotionGestureEvent
    PREVIOUS = " Previous: "
    HASHCODE = " hashcode: "
end

