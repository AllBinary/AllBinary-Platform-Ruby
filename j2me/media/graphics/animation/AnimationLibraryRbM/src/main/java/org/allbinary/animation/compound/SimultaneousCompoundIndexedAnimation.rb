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

# require "javax/microedition/lcdui/Graphics"
require "org/allbinary/animation/IndexedAnimation"

class SimultaneousCompoundIndexedAnimation < IndexedAnimation
    attr_accessor :animationInterfaceArray

    def initialize_fields
        @animationInterfaceArray = nil
    end
    

    def initialize(animationInterfaceArray, animationBehavior)
        super(animationBehavior)
        initialize_fields
        @animationInterfaceArray = animationInterfaceArray
    end
    

    def setFrame(frameIndex)
        indexedAnimation = nil
        index = @animationInterfaceArray.length
        while (index -= 1) >= 0
            indexedAnimation = @animationInterfaceArray[index]
            indexedAnimation.setFrame(frameIndex)
        end
    end
    

    def getFrame()
        indexedAnimation = @animationInterfaceArray[0]
        return indexedAnimation.getFrame()
    end
    

    def getSize()
        indexedAnimation = @animationInterfaceArray[0]
        return indexedAnimation.getSize()
    end
    

    def previousFrame()
        indexedAnimation = nil
        index = @animationInterfaceArray.length
        while (index -= 1) >= 0
            indexedAnimation = @animationInterfaceArray[index]
            indexedAnimation.previousFrame()
        end
    end
    

    def setSequence(sequence)
    end
    

    def getSequence()
        return PrimitiveIntUtil.getArrayInstance()
    end
    

    # throws Exception
    def nextFrame()
        index = @animationInterfaceArray.length
        while (index -= 1) >= 0
            @animationInterfaceArray[index].nextFrame()
        end
    end
    

    def paintXY(graphics, x, y)
        size = @animationInterfaceArray.length
        (0...size).each do |index|
            @animationInterfaceArray[index].paintXY(graphics, x, y)
        end
    end
    

    def paintThreedXYZ(graphics, x, y, z)
        size = @animationInterfaceArray.length
        (0...size).each do |index|
            @animationInterfaceArray[index].paintThreedXYZ(graphics, x, y, z)
        end
    end
    

    def getAnimationInterfaceArray()
        return @animationInterfaceArray
    end
    

    def setAnimationInterfaceArray(animationInterfaceArray)
        @animationInterfaceArray = animationInterfaceArray
    end
end

require "org/allbinary/animation/Animation"
require "org/allbinary/animation/AnimationBehavior"
require "org/allbinary/logic/math/PrimitiveIntUtil"

