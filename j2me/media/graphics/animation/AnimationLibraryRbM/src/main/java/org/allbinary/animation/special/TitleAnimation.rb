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
# package org.allbinary.animation.special

# require "javax/microedition/lcdui/Graphics"
require "org/allbinary/animation/special/SpecialAnimation"

class TitleAnimation < SpecialAnimation
    attr_accessor :systemWrapper, :deltaX, :deltaY, :deltaZ, :basicColorArray, :dxArray, :dyArray, :widthP, :animationInterfaceArray, :sizeP, :y, :lastFrameStartTime, :displayInfoSingleton, :CLEAR_COLOR

    def initialize_fields
        @systemWrapper = ABSystemWrapper.getInstance()
        @deltaX = 0.0
        @deltaY = 0.0
        @deltaZ = 0.0
        @basicColorArray = nil
        @dxArray = nil
        @dyArray = nil
        @widthP = nil
        @animationInterfaceArray = nil
        @sizeP = nil
        @y = nil
        @lastFrameStartTime = nil
        @displayInfoSingleton = DisplayInfoSingleton.getInstance()
        @CLEAR_COLOR = BasicColorFactory.getInstance().CLEAR_COLOR
    end
    

    def self.createAnimation(animationInterfaceArray, basicColorArray, dxArray, dyArray, y, width)
        return TitleAnimation.new(animationInterfaceArray, basicColorArray, dxArray, dyArray, y, width, IndexedAnimationBehavior.new(1, 250))
    end
    

    def initialize(animationInterfaceArray, basicColorArray, dxArray, dyArray, y, width, animationBehavior)
        super(animationBehavior)
        initialize_fields
        @lastFrameStartTime = @systemWrapper.currentTimeMillis()
        @animationInterfaceArray = animationInterfaceArray
        @sizeP = @animationInterfaceArray.length
        @basicColorArray = basicColorArray
        @dxArray = dxArray
        @dyArray = dyArray
        @y = y
        @widthP = width
        self.reset()
    end
    

    def nextFrame()
        currentTime = @systemWrapper.currentTimeMillis()
        totalTimeElapsed = currentTime - @lastFrameStartTime
        indexedAnimationBehavior = self.getAnimationBehavior()
        if totalTimeElapsed > indexedAnimationBehavior.frameDelayTime
            self.previousFrame()
            @lastFrameStartTime = currentTime
        end
        if @animationInterfaceArray[0].getFrame() == 0
            indexedAnimationBehavior.loopIndex += 1
        end
    end
    

    def isComplete()
        indexedAnimationBehavior = self.getAnimationBehavior()
        if indexedAnimationBehavior.loopTotal == -1 || indexedAnimationBehavior.loopIndex < indexedAnimationBehavior.loopTotal || self.getFrame() != 0
            return false
        else
            return true
        end
    end
    

    def setSequence(sequence)
    end
    

    def getSequence()
        return PrimitiveIntUtil.getArrayInstance()
    end
    

    def getSize()
        return @animationInterfaceArray[0].getSize()
    end
    

    def getFrame()
        return @animationInterfaceArray[0].getFrame()
    end
    

    def setFrame(frame)
        (0...@sizeP).each do |index|
            @animationInterfaceArray[index].setFrame(frame)
        end
    end
    

    def setLastFrame()
        self.setFrame(self.getSize() - 1)
    end
    

    def reset()
        self.setLastFrame()
        indexedAnimationBehavior = (self.getAnimationBehavior())
        indexedAnimationBehavior.reset()
    end
    

    def previousFrame()
        (0...@sizeP).each do |index|
            @animationInterfaceArray[index].previousFrame()
        end
    end
    

    def paintFrameXY(graphics, frame, x, y)
        self.setFrame(frame)
        self.paintXY(graphics, x, y)
    end
    

    def paintXY(graphics, ax, ay)
        x = 0
        if @widthP != (-2147483648)
            x = ((@displayInfoSingleton.getLastWidth() - @widthP) / 2)
        end
        deltaX = 0
        deltaY = 0
        (0...@sizeP).each do |index|
            deltaX = @dxArray[index] + x
            deltaY = @dyArray[index] + @y
            if @basicColorArray[index] != @CLEAR_COLOR
                @basicSetColorUtil.setBasicColorP(graphics, @basicColorArray[index])
            end
            @animationInterfaceArray[index].paintXY(graphics, deltaX, deltaY)
        end
    end
end

require "org/allbinary/animation/AnimationBehavior"
require "org/allbinary/animation/IndexedAnimation"
require "org/allbinary/animation/IndexedAnimationBehavior"
require "org/allbinary/graphics/color/BasicColor"
require "org/allbinary/graphics/color/BasicColorFactory"
require "org/allbinary/graphics/displayable/DisplayInfoSingleton"
require "org/allbinary/logic/ABSystemWrapper"
require "org/allbinary/logic/math/PrimitiveIntUtil"

