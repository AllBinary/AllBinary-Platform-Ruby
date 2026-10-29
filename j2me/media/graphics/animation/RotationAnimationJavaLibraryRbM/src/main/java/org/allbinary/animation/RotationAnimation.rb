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
# package org.allbinary.animation

require "org/allbinary/animation/IndexedAnimation"
require "org/allbinary/animation/RotationAnimationInterface"

class RotationAnimation < IndexedAnimation
    include RotationAnimationInterface
    attr_accessor :frameUtil, :directionUtil, :angleInfo, :circularIndexUtil

    def initialize_fields
        @frameUtil = FrameUtil.getInstance()
        @directionUtil = DirectionUtil.getInstance()
        @angleInfo = nil
        @circularIndexUtil = nil
    end
    

    def initialize(angleInfo, circularIndexUtil, animationBehavior)
        super(animationBehavior)
        initialize_fields
        @angleInfo = angleInfo
        @circularIndexUtil = circularIndexUtil
    end
    

    def nextRotationX()
    end
    

    def previousRotationX()
    end
    

    def nextRotation()
        @angleInfo.adjustAngle(@circularIndexUtil.next_())
    end
    

    def previousRotation()
        @angleInfo.adjustAngle(@circularIndexUtil.previous())
    end
    

    def nextRotationZ()
    end
    

    def previousRotationZ()
    end
    

    def setFrame(index)
        @circularIndexUtil.setIndex(index)
        newFrame = @circularIndexUtil.getIndex()
        @angleInfo.adjustAngle(newFrame)
    end
    

    def setFrameByDirection(direction)
        angle = @directionUtil.getFrameAngle(direction)
        self.adjustFrameToAngle(angle)
    end
    

    def setFrameToAngle(angle)
        self.adjustFrameToAngle(angle)
    end
    

    def adjustFrameToAngle(angle)
        self.adjustFrame(angle.getValue())
    end
    

    def adjustFrame(angle)
        self.setFrame(@frameUtil.getFrameForAngle(angle, (@angleInfo.getAngleIncrementInfo().getAngleIncrement()).to_i))
    end
    

    def getFrame()
        return @circularIndexUtil.getIndex()
    end
    

    def getSize()
        return @circularIndexUtil.getSize()
    end
    

    def getAngleInfoP()
        return @angleInfo
    end
    

    def toString()
        return StringMaker.new().append(super.to_s).append("circularIndexUtil: ").append(@circularIndexUtil.to_s).append("angleInfo: ").append(@angleInfo.to_s).to_s
    end
    alias_method :to_s, :toString
end

require "org/allbinary/direction/Direction"
require "org/allbinary/direction/DirectionUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/math/Angle"
require "org/allbinary/math/AngleInfo"
require "org/allbinary/math/FrameUtil"
require "org/allbinary/util/CircularIndexUtil"
require "org/allbinary/animation/AnimationBehavior"

