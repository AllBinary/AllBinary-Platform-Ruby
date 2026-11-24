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
require "org/allbinary/animation/IndexedAnimation"

module ::Org; module Allbinary; module Animation; module Compound

class SimultaneousCompoundIndexAnimation < ::Org::Allbinary::Animation::IndexedAnimation
    attr_accessor :animationInterfaceArray

    def jfields_org_allbinary_animation_compound_SimultaneousCompoundIndexAnimation
        @animationInterfaceArray = nil unless instance_variable_defined?(:@animationInterfaceArray)
    end
    

    def initialize(animationInterfaceArray, animationBehavior)
        super(animationBehavior)
        jfields_org_allbinary_animation_compound_SimultaneousCompoundIndexAnimation
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
    

    # throws Exception
    def set(gl)
        index = @animationInterfaceArray.length
        while (index -= 1) >= 0
            @animationInterfaceArray[index].set(gl)
        end
    end
    java_overload :set, 1
    

    def getAnimationInterfaceArray()
        return @animationInterfaceArray
    end
    java_overload :getAnimationInterfaceArray, 0
    

    def setAnimationInterfaceArray(animationInterfaceArray)
        @animationInterfaceArray = animationInterfaceArray
    end
    java_overload :setAnimationInterfaceArray, 1
end

module ::Javax; module Microedition; module Khronos; module Opengles; autoload :GL, "javax/microedition/khronos/opengles/GL" unless const_defined?(:GL, false); end; end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :AnimationBehavior, "org/allbinary/animation/AnimationBehavior" unless const_defined?(:AnimationBehavior, false); end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :PrimitiveIntUtil, "org/allbinary/logic/math/PrimitiveIntUtil" unless const_defined?(:PrimitiveIntUtil, false); end; end; end; end

end; end; end; end

