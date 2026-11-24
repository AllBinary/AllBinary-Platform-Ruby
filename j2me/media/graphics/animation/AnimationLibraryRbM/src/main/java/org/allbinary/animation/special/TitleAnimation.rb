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

require "java/lang/JavaOverload"
require "org/allbinary/animation/special/SpecialAnimation"

module ::Org; module Allbinary; module Animation; module Special

class TitleAnimation < SpecialAnimation
    attr_accessor :systemWrapper, :deltaX, :deltaY, :deltaZ, :basicColorArray, :dxArray, :dyArray, :widthP, :animationInterfaceArray, :sizeP, :y, :lastFrameStartTime, :displayInfoSingleton, :CLEAR_COLOR

    def jfields_org_allbinary_animation_special_TitleAnimation
        @systemWrapper = ::Org::Allbinary::Logic::ABSystemWrapper.getInstance()
        @deltaX = 0.0 unless instance_variable_defined?(:@deltaX)
        @deltaY = 0.0 unless instance_variable_defined?(:@deltaY)
        @deltaZ = 0.0 unless instance_variable_defined?(:@deltaZ)
        @basicColorArray = nil unless instance_variable_defined?(:@basicColorArray)
        @dxArray = nil unless instance_variable_defined?(:@dxArray)
        @dyArray = nil unless instance_variable_defined?(:@dyArray)
        @widthP = nil unless instance_variable_defined?(:@widthP)
        @animationInterfaceArray = nil unless instance_variable_defined?(:@animationInterfaceArray)
        @sizeP = nil unless instance_variable_defined?(:@sizeP)
        @y = nil unless instance_variable_defined?(:@y)
        @lastFrameStartTime = nil unless instance_variable_defined?(:@lastFrameStartTime)
        @displayInfoSingleton = ::Org::Allbinary::Graphics::Displayable::DisplayInfoSingleton.getInstance()
        @CLEAR_COLOR = ::Org::Allbinary::Graphics::Color::BasicColorFactory.getInstance().CLEAR_COLOR
    end
    

    def self.createAnimation(animationInterfaceArray, basicColorArray, dxArray, dyArray, y, width)
        return TitleAnimation.new(animationInterfaceArray, basicColorArray, dxArray, dyArray, y, width, ::Org::Allbinary::Animation::IndexedAnimationBehavior.new(1, 250))
    end
    

    def initialize(animationInterfaceArray, basicColorArray, dxArray, dyArray, y, width, animationBehavior)
        super(animationBehavior)
        jfields_org_allbinary_animation_special_TitleAnimation
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
    java_overload :nextFrame, 0
    

    def isComplete()
        indexedAnimationBehavior = self.getAnimationBehavior()
        if indexedAnimationBehavior.loopTotal == -1 || indexedAnimationBehavior.loopIndex < indexedAnimationBehavior.loopTotal || self.getFrame() != 0
            return false
        else
            return true
        end
    end
    java_overload :isComplete, 0
    

    def setSequence(sequence)
    end
    java_overload :setSequence, 1
    

    def getSequence()
        return ::Org::Allbinary::Logic::MathPackage::PrimitiveIntUtil.getArrayInstance()
    end
    java_overload :getSequence, 0
    

    def getSize()
        return @animationInterfaceArray[0].getSize()
    end
    java_overload :getSize, 0
    

    def getFrame()
        return @animationInterfaceArray[0].getFrame()
    end
    java_overload :getFrame, 0
    

    def setFrame(frame)
        (0...@sizeP).each do |index|
            @animationInterfaceArray[index].setFrame(frame)
        end
    end
    java_overload :setFrame, 1
    

    def setLastFrame()
        self.setFrame(self.getSize() - 1)
    end
    java_overload :setLastFrame, 0
    

    def reset()
        self.setLastFrame()
        indexedAnimationBehavior = (self.getAnimationBehavior())
        indexedAnimationBehavior.reset()
    end
    java_overload :reset, 0
    

    def previousFrame()
        (0...@sizeP).each do |index|
            @animationInterfaceArray[index].previousFrame()
        end
    end
    java_overload :previousFrame, 0
    

    def paintFrameXY(graphics, frame, x, y)
        self.setFrame(frame)
        self.paintXY(graphics, x, y)
    end
    java_overload :paintFrameXY, 4
    

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
    java_overload :paintXY, 3
end

module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :AnimationBehavior, "org/allbinary/animation/AnimationBehavior" unless const_defined?(:AnimationBehavior, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :IndexedAnimation, "org/allbinary/animation/IndexedAnimation" unless const_defined?(:IndexedAnimation, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :IndexedAnimationBehavior, "org/allbinary/animation/IndexedAnimationBehavior" unless const_defined?(:IndexedAnimationBehavior, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColorFactory, "org/allbinary/graphics/color/BasicColorFactory" unless const_defined?(:BasicColorFactory, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Displayable; autoload :DisplayInfoSingleton, "org/allbinary/graphics/displayable/DisplayInfoSingleton" unless const_defined?(:DisplayInfoSingleton, false); end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :ABSystemWrapper, "org/allbinary/logic/ABSystemWrapper" unless const_defined?(:ABSystemWrapper, false); end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :PrimitiveIntUtil, "org/allbinary/logic/math/PrimitiveIntUtil" unless const_defined?(:PrimitiveIntUtil, false); end; end; end; end

end; end; end; end

