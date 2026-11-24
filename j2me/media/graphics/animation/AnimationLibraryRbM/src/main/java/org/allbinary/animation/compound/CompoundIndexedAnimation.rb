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
require "org/allbinary/animation/compound/CompoundAnimationInterface"

module ::Org; module Allbinary; module Animation; module Compound

class CompoundIndexedAnimation < ::Org::Allbinary::Animation::IndexedAnimation
    include CompoundAnimationInterface
    attr_accessor :circularIndexUtil, :animationInterfaceArray

    def jfields_org_allbinary_animation_compound_CompoundIndexedAnimation
        @circularIndexUtil = nil unless instance_variable_defined?(:@circularIndexUtil)
        @animationInterfaceArray = nil unless instance_variable_defined?(:@animationInterfaceArray)
    end
    

    def initialize(animationInterfaceArray, animationBehavior)
        super(animationBehavior)
        jfields_org_allbinary_animation_compound_CompoundIndexedAnimation
        @animationInterfaceArray = animationInterfaceArray
        @circularIndexUtil = ::Org::Allbinary::Util::CircularIndexUtil.createInstance(@animationInterfaceArray.length)
    end
    

    def setFrame(index)
        indexedAnimation = @animationInterfaceArray[@circularIndexUtil.getIndex()]
        indexedAnimation.setFrame(index)
    end
    java_overload :setFrame, 1
    

    def getFrame()
        indexedAnimation = @animationInterfaceArray[@circularIndexUtil.getIndex()]
        return indexedAnimation.getFrame()
    end
    java_overload :getFrame, 0
    

    def getSize()
        indexedAnimation = @animationInterfaceArray[@circularIndexUtil.getIndex()]
        return indexedAnimation.getSize()
    end
    java_overload :getSize, 0
    

    def previousFrame()
        indexedAnimation = @animationInterfaceArray[@circularIndexUtil.getIndex()]
        indexedAnimation.previousFrame()
    end
    java_overload :previousFrame, 0
    

    def setSequence(sequence)
    end
    java_overload :setSequence, 1
    

    def getSequence()
        return ::Org::Allbinary::Logic::MathPackage::PrimitiveIntUtil.getArrayInstance()
    end
    java_overload :getSequence, 0
    

    # throws Exception
    def nextFrame()
        @animationInterfaceArray[@circularIndexUtil.getIndex()].nextFrame()
    end
    java_overload :nextFrame, 0
    

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
module ::Org; module Allbinary; module Animation; autoload :Animation, "org/allbinary/animation/Animation" unless const_defined?(:Animation, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :AnimationBehavior, "org/allbinary/animation/AnimationBehavior" unless const_defined?(:AnimationBehavior, false); end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :PrimitiveIntUtil, "org/allbinary/logic/math/PrimitiveIntUtil" unless const_defined?(:PrimitiveIntUtil, false); end; end; end; end
module ::Org; module Allbinary; module Util; autoload :CircularIndexUtil, "org/allbinary/util/CircularIndexUtil" unless const_defined?(:CircularIndexUtil, false); end; end; end

end; end; end; end

