# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.animation

require "org/allbinary/animation/RotationAnimation"

class NullRotationAnimation < RotationAnimation
    

    def self.createTotalAngle(angleInfo, totalAngle, animationBehavior)
        return NullRotationAnimation.new(angleInfo, CircularIndexUtil.createInstance(totalAngle / angleInfo.getAngleIncrementInfo().getAngleIncrement()), animationBehavior)
    end
    

    def self.createQuarter(animationBehavior)
        return NullRotationAnimation.new(AngleInfo.getInstance(AngleFactory.getInstance().QUARTER_TOTAL_ANGLE), CircularIndexUtil.createInstance(4), animationBehavior)
    end
    

    def initialize(angleInfo, circularIndexUtil, animationBehavior)
        super(angleInfo, circularIndexUtil, animationBehavior)
    end
    

    # throws Exception
    def getAnimationSize()
        return 0
    end
end

require "org/allbinary/math/AngleFactory"
require "org/allbinary/math/AngleInfo"
require "org/allbinary/util/CircularIndexUtil"
require "org/allbinary/animation/AnimationBehavior"

