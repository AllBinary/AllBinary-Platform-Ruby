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

# require "javax/microedition/khronos/opengles/GL"
# require "javax/microedition/lcdui/Graphics"
require "org/allbinary/animation/IndexedAnimation"
require "org/allbinary/animation/compound/CompoundAnimationInterface"

class CompoundIndexedAnimation < IndexedAnimation
    include CompoundAnimationInterface
    attr_accessor :circularIndexUtil, :animationInterfaceArray

    def initialize_fields
        @circularIndexUtil = nil
        @animationInterfaceArray = nil
    end
    

    def initialize(animationInterfaceArray, animationBehavior)
        super(animationBehavior)
        initialize_fields
        @animationInterfaceArray = animationInterfaceArray
        @circularIndexUtil = CircularIndexUtil.createInstance(@animationInterfaceArray.length)
    end
    

    def setFrame(index)
        indexedAnimation = @animationInterfaceArray[@circularIndexUtil.getIndex()]
        indexedAnimation.setFrame(index)
    end
    

    def getFrame()
        indexedAnimation = @animationInterfaceArray[@circularIndexUtil.getIndex()]
        return indexedAnimation.getFrame()
    end
    

    def getSize()
        indexedAnimation = @animationInterfaceArray[@circularIndexUtil.getIndex()]
        return indexedAnimation.getSize()
    end
    

    def previousFrame()
        indexedAnimation = @animationInterfaceArray[@circularIndexUtil.getIndex()]
        indexedAnimation.previousFrame()
    end
    

    def setSequence(sequence)
    end
    

    def getSequence()
        return PrimitiveIntUtil.getArrayInstance()
    end
    

    # throws Exception
    def nextFrame()
        @animationInterfaceArray[@circularIndexUtil.getIndex()].nextFrame()
    end
    

    def paintXY(graphics, x, y)
        @animationInterfaceArray[@circularIndexUtil.getIndex()].paintXY(graphics, x, y)
    end
    

    def paintThreedXYZ(graphics, x, y, z)
        @animationInterfaceArray[@circularIndexUtil.getIndex()].paintThreedXYZ(graphics, x, y, z)
    end
    

    def getCurrentAnimation()
        return @animationInterfaceArray[@circularIndexUtil.getIndex()]
    end
    

    def nextAnimation()
        frame = self.getFrame()
        @circularIndexUtil.next_()
        self.setFrame(frame)
    end
    

    def previousAnimation()
        frame = self.getFrame()
        @circularIndexUtil.previous()
        self.setFrame(frame)
    end
    

    def setAnimation(index)
        frame = self.getFrame()
        @circularIndexUtil.setIndex(index)
        self.setFrame(frame)
    end
    

    def getAnimationInterfaceArray()
        return @animationInterfaceArray
    end
    

    def setAnimationInterfaceArray(animationInterfaceArray)
        @animationInterfaceArray = animationInterfaceArray
    end
    

    # throws Exception
    def set(gl)
        index = @animationInterfaceArray.length
        while (index -= 1) >= 0
            @animationInterfaceArray[index].set(gl)
        end
    end
end

require "org/allbinary/animation/Animation"
require "org/allbinary/animation/AnimationBehavior"
require "org/allbinary/logic/math/PrimitiveIntUtil"
require "org/allbinary/util/CircularIndexUtil"

