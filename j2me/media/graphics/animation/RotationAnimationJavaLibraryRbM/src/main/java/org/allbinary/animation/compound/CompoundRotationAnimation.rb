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
require "org/allbinary/animation/RotationAnimation"
require "org/allbinary/animation/compound/CompoundAnimationInterface"

class CompoundRotationAnimation < RotationAnimation
    include CompoundAnimationInterface
    attr_accessor :animationInterfaceArray

    def initialize_fields
        @animationInterfaceArray = nil
    end
    

    def initialize(animationInterfaceArray, animationBehavior)
        super(AngleInfo.getInstance(AngleFactory.getInstance().QUARTER_TOTAL_ANGLE), CircularIndexUtil.createInstance(4), animationBehavior)
        initialize_fields
        @animationInterfaceArray = animationInterfaceArray
        @circularIndexUtil = CircularIndexUtil.createInstance(@animationInterfaceArray.length)
    end
    

    def setFrame(index)
        @animationInterfaceArray[@circularIndexUtil.getIndex()].setFrame(index)
    end
    

    def getFrame()
        return @animationInterfaceArray[@circularIndexUtil.getIndex()].getFrame()
    end
    

    # throws Exception
    def getAnimationSize()
        return @animationInterfaceArray[@circularIndexUtil.getIndex()].getAnimationSize()
    end
    

    def getSize()
        return @animationInterfaceArray[@circularIndexUtil.getIndex()].getSize()
    end
    

    def previousFrame()
        @animationInterfaceArray[@circularIndexUtil.getIndex()].previousFrame()
    end
    

    # throws Exception
    def nextFrame()
        @animationInterfaceArray[@circularIndexUtil.getIndex()].nextFrame()
    end
    

    def previousRotation()
        @animationInterfaceArray[@circularIndexUtil.getIndex()].previousRotation()
    end
    

    def nextRotation()
        @animationInterfaceArray[@circularIndexUtil.getIndex()].nextRotation()
    end
    

    def setSequence(sequence)
    end
    

    def getSequence()
        return PrimitiveIntUtil.getArrayInstance()
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
    

    def setFrameByDirection(direction)
        @animationInterfaceArray[@circularIndexUtil.getIndex()].setFrameByDirection(direction)
    end
    

    def setFrameToAngle(angle)
        @animationInterfaceArray[@circularIndexUtil.getIndex()].setFrameToAngle(angle)
    end
    

    def adjustFrameToAngle(newAngle)
        self.adjustFrame(newAngle.getValue())
    end
    

    def adjustFrame(angle)
        @animationInterfaceArray[@circularIndexUtil.getIndex()].adjustFrame(angle)
    end
    

    def getAngleInfoP()
        return @animationInterfaceArray[@circularIndexUtil.getIndex()].getAngleInfoP()
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

require "org/allbinary/animation/AnimationBehavior"
require "org/allbinary/animation/IndexedAnimation"
require "org/allbinary/direction/Direction"
require "org/allbinary/logic/math/PrimitiveIntUtil"
require "org/allbinary/math/Angle"
require "org/allbinary/math/AngleFactory"
require "org/allbinary/math/AngleInfo"
require "org/allbinary/util/CircularIndexUtil"

