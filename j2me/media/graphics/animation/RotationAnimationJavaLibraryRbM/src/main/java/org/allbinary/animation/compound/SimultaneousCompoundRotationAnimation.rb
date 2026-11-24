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

module ::Org; module Allbinary; module Animation; module Compound

class SimultaneousCompoundRotationAnimation < ::Org::Allbinary::Animation::RotationAnimation
    attr_accessor :animationInterfaceArray

    def jfields_org_allbinary_animation_compound_SimultaneousCompoundRotationAnimation
        @animationInterfaceArray = nil unless instance_variable_defined?(:@animationInterfaceArray)
    end
    

    def initialize(animationInterfaceArray, animationBehavior)
        super(::Org::Allbinary::MathPackage::AngleInfo.getInstance(::Org::Allbinary::MathPackage::AngleFactory.getInstance().QUARTER_TOTAL_ANGLE), ::Org::Allbinary::Util::CircularIndexUtil.createInstance(4), animationBehavior)
        jfields_org_allbinary_animation_compound_SimultaneousCompoundRotationAnimation
        @animationInterfaceArray = animationInterfaceArray
    end
    

    def setFrame(frameIndex)
        index = @animationInterfaceArray.length
        while (index -= 1) >= 0
            @animationInterfaceArray[index].setFrame(frameIndex)
        end
    end
    java_overload :setFrame, 1
    

    def getFrame()
        return @animationInterfaceArray[0].getFrame()
    end
    java_overload :getFrame, 0
    

    # throws Exception
    def getAnimationSize()
        return @animationInterfaceArray[0].getAnimationSize()
    end
    java_overload :getAnimationSize, 0
    

    def getSize()
        return @animationInterfaceArray[0].getSize()
    end
    java_overload :getSize, 0
    

    def previousFrame()
        index = @animationInterfaceArray.length
        while (index -= 1) >= 0
            @animationInterfaceArray[index].previousFrame()
        end
    end
    java_overload :previousFrame, 0
    

    # throws Exception
    def nextFrame()
        index = @animationInterfaceArray.length
        while (index -= 1) >= 0
            @animationInterfaceArray[index].nextFrame()
        end
    end
    java_overload :nextFrame, 0
    

    def previousRotation()
        index = @animationInterfaceArray.length
        while (index -= 1) >= 0
            @animationInterfaceArray[index].previousRotation()
        end
    end
    java_overload :previousRotation, 0
    

    def nextRotation()
        index = @animationInterfaceArray.length
        while (index -= 1) >= 0
            @animationInterfaceArray[index].nextRotation()
        end
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
        index = @animationInterfaceArray.length
        while (index -= 1) >= 0
            @animationInterfaceArray[index].paintXY(graphics, x, y)
        end
    end
    java_overload :paintXY, 3
    

    def paintThreedXYZ(graphics, x, y, z)
        index = @animationInterfaceArray.length
        while (index -= 1) >= 0
            @animationInterfaceArray[index].paintThreedXYZ(graphics, x, y, z)
        end
    end
    java_overload :paintThreedXYZ, 4
    

    def setFrameByDirection(direction)
        index = @animationInterfaceArray.length
        while (index -= 1) >= 0
            @animationInterfaceArray[index].setFrameByDirection(direction)
        end
    end
    java_overload :setFrameByDirection, 1
    

    def setFrameToAngle(angle)
        index = @animationInterfaceArray.length
        while (index -= 1) >= 0
            @animationInterfaceArray[index].setFrameToAngle(angle)
        end
    end
    java_overload :setFrameToAngle, 1
    

    def adjustFrameToAngle(newAngle)
        self.adjustFrame(newAngle.getValue())
    end
    java_overload :adjustFrameToAngle, 1
    

    def adjustFrame(angle)
        index = @animationInterfaceArray.length
        while (index -= 1) >= 0
            @animationInterfaceArray[index].adjustFrame(angle)
        end
    end
    java_overload :adjustFrame, 1
    

    def getAngleInfoP()
        return @animationInterfaceArray[0].getAngleInfoP()
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
module ::Org; module Allbinary; module Direction; autoload :Direction, "org/allbinary/direction/Direction" unless const_defined?(:Direction, false); end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :PrimitiveIntUtil, "org/allbinary/logic/math/PrimitiveIntUtil" unless const_defined?(:PrimitiveIntUtil, false); end; end; end; end
module ::Org; module Allbinary; module MathPackage; autoload :Angle, "org/allbinary/math/Angle" unless const_defined?(:Angle, false); end; end; end
module ::Org; module Allbinary; module MathPackage; autoload :AngleFactory, "org/allbinary/math/AngleFactory" unless const_defined?(:AngleFactory, false); end; end; end
module ::Org; module Allbinary; module MathPackage; autoload :AngleInfo, "org/allbinary/math/AngleInfo" unless const_defined?(:AngleInfo, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :CircularIndexUtil, "org/allbinary/util/CircularIndexUtil" unless const_defined?(:CircularIndexUtil, false); end; end; end

end; end; end; end

