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
# package org.allbinary.animation

require "java/lang/JavaOverload"
require "org/allbinary/animation/IndexedAnimation"
require "org/allbinary/animation/VectorAnimationInterface"

module ::Org; module Allbinary; module Animation

class VectorAnimation < IndexedAnimation
    include VectorAnimationInterface
    attr_accessor :currentPoints, :circularIndexUtil

    def jfields_org_allbinary_animation_VectorAnimation
        @currentPoints = ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_INT_ARRAY_ARRAY_ARRAY
        @circularIndexUtil = ::Org::Allbinary::Util::CircularIndexUtil.createInstance(0)
    end
    

    def self.createVectorAnimation(currentPoints2, basicColor, animationBehavior)
        currentPoints = Array.new(1) { Array.new(currentPoints2.length) { Array.new(2, 0) } }
        size = currentPoints2.length
        (0...size).each do |index|
            currentPoints[0][index][0] = currentPoints2[index][0]
            currentPoints[0][index][1] = currentPoints2[index][1]
        end
        return VectorAnimation.new(currentPoints, basicColor, animationBehavior)
    end
    

    def initialize(currentPoints, basicColor, animationBehavior)
        super(animationBehavior)
        jfields_org_allbinary_animation_VectorAnimation
        self.setPoints(currentPoints)
        self.setBasicColorP(basicColor)
    end
    

    def setBasicColorP(basicColor)
        changed = false
        if self.getBasicColorP() == nil || self.getBasicColorP().to_i != basicColor.to_i
            changed = true
        end
        VectorAnimation.superclass.java_super_method(:setBasicColorP, 1).bind(self).call(basicColor)
        if changed
            self.updateModifiers()
        end
    end
    java_overload :setBasicColorP, 1
    

    def changeBasicColor(basicColor)
        changed = false
        if self.getChangeBasicColor() == nil || self.getChangeBasicColor().to_i != basicColor.to_i
            changed = true
        end
        VectorAnimation.superclass.java_super_method(:changeBasicColor, 1).bind(self).call(basicColor)
        if changed
            self.updateModifiers()
        end
    end
    java_overload :changeBasicColor, 1
    

    def setAlpha(alpha)
        changed = false
        if @alphaP != alpha
            changed = true
        end
        VectorAnimation.superclass.java_super_method(:setAlpha, 1).bind(self).call(alpha)
        if changed
            self.updateModifiers()
        end
    end
    java_overload :setAlpha, 1
    

    def setScale(scaleX, scaleY)
    end
    java_overload :setScale, 2
    

    def setMaxScale(maxScaleX, maxScaleY)
    end
    java_overload :setMaxScale, 2
    

    def updateModifiers()
    end
    java_overload :updateModifiers, 0
    

    # throws Exception
    def getAnimationSize()
        return self.getSize()
    end
    java_overload :getAnimationSize, 0
    

    def getSize()
        return @currentPoints.length
    end
    java_overload :getSize, 0
    

    def setSequence(sequence)
    end
    java_overload :setSequence, 1
    

    def getSequence()
        return ::Org::Allbinary::Logic::MathPackage::PrimitiveIntUtil.getArrayInstance()
    end
    java_overload :getSequence, 0
    

    def nextFrame()
        @circularIndexUtil.next_()
    end
    java_overload :nextFrame, 0
    

    def previousFrame()
        @circularIndexUtil.previous()
    end
    java_overload :previousFrame, 0
    

    def paintVectors(graphics, x, y)
        begin
            nextPointX = 0
            nextPointY = 0
            nextPoint = nil
            point = nil
            currentPointsFrame = @currentPoints[@circularIndexUtil.getIndex()]
            size = currentPointsFrame.length
            index = size - 2
            while (index -= 1) >= 0
                nextPoint = currentPointsFrame[index]
                point = currentPointsFrame[index + 1]
                nextPointX = nextPoint[0]
                nextPointY = nextPoint[1]
                if nextPointX != 1000
                    graphics.drawLine(point[0] + x, point[1] + y, nextPointX + x, nextPointY + y)
                else
                    index -= 1
                end
            end
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "paintVectors", e)
        end
    end
    java_overload :paintVectors, 3
    

    def paintXY(graphics, x, y)
        @basicSetColorUtil.setBasicColorP(graphics, @basicColor)
        self.paintVectors(graphics, x, y)
    end
    java_overload :paintXY, 3
    

    def getFrame()
        return @circularIndexUtil.getIndex()
    end
    java_overload :getFrame, 0
    

    def setFrame(index)
        @circularIndexUtil.setIndex(index)
    end
    java_overload :setFrame, 1
    

    def getPoints(frame)
        return @currentPoints[frame]
    end
    java_overload :getPoints, 1
    

    def setPoints(currentPoints)
        @currentPoints = currentPoints
        @circularIndexUtil = ::Org::Allbinary::Util::CircularIndexUtil.createInstance(currentPoints.length)
    end
    java_overload :setPoints, 1
    

    def getBasicColorP()
        return VectorAnimation.superclass.java_super_method(:getBasicColorP, 0).bind(self).call()
    end
    java_overload :getBasicColorP, 0
end

module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :NullImage, "javax/microedition/lcdui/NullImage" unless const_defined?(:NullImage, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :NullUtil, "org/allbinary/logic/NullUtil" unless const_defined?(:NullUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :PrimitiveIntUtil, "org/allbinary/logic/math/PrimitiveIntUtil" unless const_defined?(:PrimitiveIntUtil, false); end; end; end; end
module ::Org; module Allbinary; module Util; autoload :CircularIndexUtil, "org/allbinary/util/CircularIndexUtil" unless const_defined?(:CircularIndexUtil, false); end; end; end
autoload :AnimationBehavior, "org/allbinary/animation/AnimationBehavior" unless const_defined?(:AnimationBehavior, false)

end; end; end

