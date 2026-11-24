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

require "java/lang/JavaOverload"
require "org/allbinary/animation/IndexedAnimation"
require "org/allbinary/animation/RotationAnimationInterface"

module ::Org; module Allbinary; module Animation

class RotationAnimation < IndexedAnimation
    include RotationAnimationInterface
    attr_accessor :frameUtil, :directionUtil, :angleInfo, :circularIndexUtil

    def jfields_org_allbinary_animation_RotationAnimation
        @frameUtil = ::Org::Allbinary::MathPackage::FrameUtil.getInstance()
        @directionUtil = ::Org::Allbinary::Direction::DirectionUtil.getInstance()
        @angleInfo = nil unless instance_variable_defined?(:@angleInfo)
        @circularIndexUtil = nil unless instance_variable_defined?(:@circularIndexUtil)
    end
    

    def initialize(angleInfo, circularIndexUtil, animationBehavior)
        super(animationBehavior)
        jfields_org_allbinary_animation_RotationAnimation
        @angleInfo = angleInfo
        @circularIndexUtil = circularIndexUtil
    end
    

    def nextRotationX()
    end
    java_overload :nextRotationX, 0
    

    def previousRotationX()
    end
    java_overload :previousRotationX, 0
    

    def nextRotation()
        @angleInfo.adjustAngle(@circularIndexUtil.next_())
    end
    java_overload :nextRotation, 0
    

    def previousRotation()
        @angleInfo.adjustAngle(@circularIndexUtil.previous())
    end
    java_overload :previousRotation, 0
    

    def nextRotationZ()
    end
    java_overload :nextRotationZ, 0
    

    def previousRotationZ()
    end
    java_overload :previousRotationZ, 0
    

    def setFrame(index)
        @circularIndexUtil.setIndex(index)
        newFrame = @circularIndexUtil.getIndex()
        @angleInfo.adjustAngle(newFrame)
    end
    java_overload :setFrame, 1
    

    def setFrameByDirection(direction)
        angle = @directionUtil.getFrameAngle(direction)
        self.adjustFrameToAngle(angle)
    end
    java_overload :setFrameByDirection, 1
    

    def setFrameToAngle(angle)
        self.adjustFrameToAngle(angle)
    end
    java_overload :setFrameToAngle, 1
    

    def adjustFrameToAngle(angle)
        self.adjustFrame(angle.getValue())
    end
    java_overload :adjustFrameToAngle, 1
    

    def adjustFrame(angle)
        self.setFrame(@frameUtil.getFrameForAngle(angle, ((@angleInfo.getAngleIncrementInfo().getAngleIncrement()).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })))
    end
    java_overload :adjustFrame, 1
    

    def getFrame()
        return @circularIndexUtil.getIndex()
    end
    java_overload :getFrame, 0
    

    def getSize()
        return @circularIndexUtil.getSize()
    end
    java_overload :getSize, 0
    

    def getAngleInfoP()
        return @angleInfo
    end
    java_overload :getAngleInfoP, 0
    

    def toString()
        return ::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(super.to_s).append("circularIndexUtil: ").append(@circularIndexUtil.to_s).append("angleInfo: ").append(@angleInfo.to_s).to_s
    end
    java_overload :toString, 0
    alias_method :to_s, :toString
end

module ::Org; module Allbinary; module Direction; autoload :Direction, "org/allbinary/direction/Direction" unless const_defined?(:Direction, false); end; end; end
module ::Org; module Allbinary; module Direction; autoload :DirectionUtil, "org/allbinary/direction/DirectionUtil" unless const_defined?(:DirectionUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module MathPackage; autoload :Angle, "org/allbinary/math/Angle" unless const_defined?(:Angle, false); end; end; end
module ::Org; module Allbinary; module MathPackage; autoload :AngleInfo, "org/allbinary/math/AngleInfo" unless const_defined?(:AngleInfo, false); end; end; end
module ::Org; module Allbinary; module MathPackage; autoload :FrameUtil, "org/allbinary/math/FrameUtil" unless const_defined?(:FrameUtil, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :CircularIndexUtil, "org/allbinary/util/CircularIndexUtil" unless const_defined?(:CircularIndexUtil, false); end; end; end
autoload :AnimationBehavior, "org/allbinary/animation/AnimationBehavior" unless const_defined?(:AnimationBehavior, false)

end; end; end

