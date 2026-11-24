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
# package org.allbinary.animation.compound

require "java/lang/JavaOverload"
require "org/allbinary/animation/RotationAnimation"
require "org/allbinary/animation/compound/CompoundAnimationInterface"

module ::Org; module Allbinary; module Animation; module Compound

class CompoundRotationAnimation < ::Org::Allbinary::Animation::RotationAnimation
    include CompoundAnimationInterface
    attr_accessor :animationInterfaceArray

    def jfields_org_allbinary_animation_compound_CompoundRotationAnimation
        @animationInterfaceArray = nil unless instance_variable_defined?(:@animationInterfaceArray)
    end
    

    def initialize(animationInterfaceArray, animationBehavior)
        super(::Org::Allbinary::MathPackage::AngleInfo.getInstance(::Org::Allbinary::MathPackage::AngleFactory.getInstance().QUARTER_TOTAL_ANGLE), ::Org::Allbinary::Util::CircularIndexUtil.createInstance(4), animationBehavior)
        jfields_org_allbinary_animation_compound_CompoundRotationAnimation
        @animationInterfaceArray = animationInterfaceArray
        @circularIndexUtil = ::Org::Allbinary::Util::CircularIndexUtil.createInstance(@animationInterfaceArray.length)
    end
    

    def setFrame(index)
        @animationInterfaceArray[@circularIndexUtil.getIndex()].setFrame(index)
    end
    java_overload :setFrame, 1
    

    def getFrame()
        return @animationInterfaceArray[@circularIndexUtil.getIndex()].getFrame()
    end
    java_overload :getFrame, 0
    

    # throws Exception
    def getAnimationSize()
        return @animationInterfaceArray[@circularIndexUtil.getIndex()].getAnimationSize()
    end
    java_overload :getAnimationSize, 0
    

    def getSize()
        return @animationInterfaceArray[@circularIndexUtil.getIndex()].getSize()
    end
    java_overload :getSize, 0
    

    def previousFrame()
        @animationInterfaceArray[@circularIndexUtil.getIndex()].previousFrame()
    end
    java_overload :previousFrame, 0
    

    # throws Exception
    def nextFrame()
        @animationInterfaceArray[@circularIndexUtil.getIndex()].nextFrame()
    end
    java_overload :nextFrame, 0
    

    def previousRotation()
        @animationInterfaceArray[@circularIndexUtil.getIndex()].previousRotation()
    end
    java_overload :previousRotation, 0
    

    def nextRotation()
        @animationInterfaceArray[@circularIndexUtil.getIndex()].nextRotation()
    end
    java_overload :nextRotation, 0
    

    def setSequence(sequence)
    end
    java_overload :setSequence, 1
    

    def getSequence()
        return ::Org::Allbinary::Logic::MathPackage::PrimitiveIntUtil.getArrayInstance()
    end
    java_overload :getSequence, 0
    

    def paintXY(graphics, x, y)
        @animationInterfaceArray[@circularIndexUtil.getIndex()].paintXY(graphics, x, y)
    end
    java_overload :paintXY, 3
    

    def paintThreedXYZ(graphics, x, y, z)
        @animationInterfaceArray[@circularIndexUtil.getIndex()].paintThreedXYZ(graphics, x, y, z)
    end
    java_overload :paintThreedXYZ, 4
    

    def getCurrentAnimation()
        return @animationInterfaceArray[@circularIndexUtil.getIndex()]
    end
    java_overload :getCurrentAnimation, 0
    

    def nextAnimation()
        frame = self.getFrame()
        @circularIndexUtil.next_()
        self.setFrame(frame)
    end
    java_overload :nextAnimation, 0
    

    def previousAnimation()
        frame = self.getFrame()
        @circularIndexUtil.previous()
        self.setFrame(frame)
    end
    java_overload :previousAnimation, 0
    

    def setAnimation(index)
        frame = self.getFrame()
        @circularIndexUtil.setIndex(index)
        self.setFrame(frame)
    end
    java_overload :setAnimation, 1
    

    def setFrameByDirection(direction)
        @animationInterfaceArray[@circularIndexUtil.getIndex()].setFrameByDirection(direction)
    end
    java_overload :setFrameByDirection, 1
    

    def setFrameToAngle(angle)
        @animationInterfaceArray[@circularIndexUtil.getIndex()].setFrameToAngle(angle)
    end
    java_overload :setFrameToAngle, 1
    

    def adjustFrameToAngle(newAngle)
        self.adjustFrame(newAngle.getValue())
    end
    java_overload :adjustFrameToAngle, 1
    

    def adjustFrame(angle)
        @animationInterfaceArray[@circularIndexUtil.getIndex()].adjustFrame(angle)
    end
    java_overload :adjustFrame, 1
    

    def getAngleInfoP()
        return @animationInterfaceArray[@circularIndexUtil.getIndex()].getAngleInfoP()
    end
    java_overload :getAngleInfoP, 0
    

    def getAnimationInterfaceArray()
        return @animationInterfaceArray
    end
    java_overload :getAnimationInterfaceArray, 0
    

    def setAnimationInterfaceArray(animationInterfaceArray)
        @animationInterfaceArray = animationInterfaceArray
    end
    java_overload :setAnimationInterfaceArray, 1
    

    # throws Exception
    def set(gl)
        index = @animationInterfaceArray.length
        while (index -= 1) >= 0
            @animationInterfaceArray[index].set(gl)
        end
    end
    java_overload :set, 1
end

module ::Javax; module Microedition; module Khronos; module Opengles; autoload :GL, "javax/microedition/khronos/opengles/GL" unless const_defined?(:GL, false); end; end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :AnimationBehavior, "org/allbinary/animation/AnimationBehavior" unless const_defined?(:AnimationBehavior, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :IndexedAnimation, "org/allbinary/animation/IndexedAnimation" unless const_defined?(:IndexedAnimation, false); end; end; end
module ::Org; module Allbinary; module Direction; autoload :Direction, "org/allbinary/direction/Direction" unless const_defined?(:Direction, false); end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :PrimitiveIntUtil, "org/allbinary/logic/math/PrimitiveIntUtil" unless const_defined?(:PrimitiveIntUtil, false); end; end; end; end
module ::Org; module Allbinary; module MathPackage; autoload :Angle, "org/allbinary/math/Angle" unless const_defined?(:Angle, false); end; end; end
module ::Org; module Allbinary; module MathPackage; autoload :AngleFactory, "org/allbinary/math/AngleFactory" unless const_defined?(:AngleFactory, false); end; end; end
module ::Org; module Allbinary; module MathPackage; autoload :AngleInfo, "org/allbinary/math/AngleInfo" unless const_defined?(:AngleInfo, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :CircularIndexUtil, "org/allbinary/util/CircularIndexUtil" unless const_defined?(:CircularIndexUtil, false); end; end; end

end; end; end; end

