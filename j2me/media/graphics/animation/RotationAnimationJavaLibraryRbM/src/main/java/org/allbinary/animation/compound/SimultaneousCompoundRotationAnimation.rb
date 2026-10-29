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

class SimultaneousCompoundRotationAnimation < RotationAnimation
    attr_accessor :animationInterfaceArray

    def initialize_fields
        @animationInterfaceArray = nil
    end
    

    def initialize(animationInterfaceArray, animationBehavior)
        super(AngleInfo.getInstance(AngleFactory.getInstance().QUARTER_TOTAL_ANGLE), CircularIndexUtil.createInstance(4), animationBehavior)
        initialize_fields
        @animationInterfaceArray = animationInterfaceArray
    end
    

    def setFrame(frameIndex)
        index = @animationInterfaceArray.length
        while (index -= 1) >= 0
            @animationInterfaceArray[index].setFrame(frameIndex)
        end
    end
    

    def getFrame()
        return @animationInterfaceArray[0].getFrame()
    end
    

    # throws Exception
    def getAnimationSize()
        return @animationInterfaceArray[0].getAnimationSize()
    end
    

    def getSize()
        return @animationInterfaceArray[0].getSize()
    end
    

    def previousFrame()
        index = @animationInterfaceArray.length
        while (index -= 1) >= 0
            @animationInterfaceArray[index].previousFrame()
        end
    end
    

    # throws Exception
    def nextFrame()
        index = @animationInterfaceArray.length
        while (index -= 1) >= 0
            @animationInterfaceArray[index].nextFrame()
        end
    end
    

    def previousRotation()
        index = @animationInterfaceArray.length
        while (index -= 1) >= 0
            @animationInterfaceArray[index].previousRotation()
        end
    end
    

    def nextRotation()
        index = @animationInterfaceArray.length
        while (index -= 1) >= 0
            @animationInterfaceArray[index].nextRotation()
        end
    end
    

    def setSequence(sequence)
    end
    

    def getSequence()
        return PrimitiveIntUtil.getArrayInstance()
    end
    

    def paintXY(graphics, x, y)
        index = @animationInterfaceArray.length
        while (index -= 1) >= 0
            @animationInterfaceArray[index].paintXY(graphics, x, y)
        end
    end
    

    def paintThreedXYZ(graphics, x, y, z)
        index = @animationInterfaceArray.length
        while (index -= 1) >= 0
            @animationInterfaceArray[index].paintThreedXYZ(graphics, x, y, z)
        end
    end
    

    def setFrameByDirection(direction)
        index = @animationInterfaceArray.length
        while (index -= 1) >= 0
            @animationInterfaceArray[index].setFrameByDirection(direction)
        end
    end
    

    def setFrameToAngle(angle)
        index = @animationInterfaceArray.length
        while (index -= 1) >= 0
            @animationInterfaceArray[index].setFrameToAngle(angle)
        end
    end
    

    def adjustFrameToAngle(newAngle)
        self.adjustFrame(newAngle.getValue())
    end
    

    def adjustFrame(angle)
        index = @animationInterfaceArray.length
        while (index -= 1) >= 0
            @animationInterfaceArray[index].adjustFrame(angle)
        end
    end
    

    def getAngleInfoP()
        return @animationInterfaceArray[0].getAngleInfoP()
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
require "org/allbinary/direction/Direction"
require "org/allbinary/logic/math/PrimitiveIntUtil"
require "org/allbinary/math/Angle"
require "org/allbinary/math/AngleFactory"
require "org/allbinary/math/AngleInfo"
require "org/allbinary/util/CircularIndexUtil"

