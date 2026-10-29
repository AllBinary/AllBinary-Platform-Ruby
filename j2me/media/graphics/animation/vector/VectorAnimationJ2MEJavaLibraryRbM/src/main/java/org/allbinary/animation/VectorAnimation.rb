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

# require "javax/microedition/lcdui/Graphics"
# require "javax/microedition/lcdui/NullImage"
require "org/allbinary/animation/IndexedAnimation"
require "org/allbinary/animation/VectorAnimationInterface"

class VectorAnimation < IndexedAnimation
    include VectorAnimationInterface
    attr_accessor :currentPoints, :circularIndexUtil

    def initialize_fields
        @currentPoints = NullUtil.getInstance().NULL_INT_ARRAY_ARRAY_ARRAY
        @circularIndexUtil = CircularIndexUtil.createInstance(0)
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
        initialize_fields
        self.setPoints(currentPoints)
        self.setBasicColorP(basicColor)
    end
    

    def setBasicColorP(basicColor)
        changed = false
        if self.getBasicColorP() == nil || self.getBasicColorP().to_i != basicColor.to_i
            changed = true
        end
        super(basicColor)
        if changed
            self.updateModifiers()
        end
    end
    

    def changeBasicColor(basicColor)
        changed = false
        if self.getChangeBasicColor() == nil || self.getChangeBasicColor().to_i != basicColor.to_i
            changed = true
        end
        super(basicColor)
        if changed
            self.updateModifiers()
        end
    end
    

    def setAlpha(alpha)
        changed = false
        if @alphaP != alpha
            changed = true
        end
        super(alpha)
        if changed
            self.updateModifiers()
        end
    end
    

    def setScale(scaleX, scaleY)
    end
    

    def setMaxScale(maxScaleX, maxScaleY)
    end
    

    def updateModifiers()
    end
    

    # throws Exception
    def getAnimationSize()
        return self.getSize()
    end
    

    def getSize()
        return @currentPoints.length
    end
    

    def setSequence(sequence)
    end
    

    def getSequence()
        return PrimitiveIntUtil.getArrayInstance()
    end
    

    def nextFrame()
        @circularIndexUtil.next_()
    end
    

    def previousFrame()
        @circularIndexUtil.previous()
    end
    

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
    

    def paintXY(graphics, x, y)
        @basicSetColorUtil.setBasicColorP(graphics, @basicColor)
        self.paintVectors(graphics, x, y)
    end
    

    def getFrame()
        return @circularIndexUtil.getIndex()
    end
    

    def setFrame(index)
        @circularIndexUtil.setIndex(index)
    end
    

    def getPoints(frame)
        return @currentPoints[frame]
    end
    

    def setPoints(currentPoints)
        @currentPoints = currentPoints
        @circularIndexUtil = CircularIndexUtil.createInstance(currentPoints.length)
    end
end

require "org/allbinary/graphics/color/BasicColor"
require "org/allbinary/logic/NullUtil"
require "org/allbinary/logic/math/PrimitiveIntUtil"
require "org/allbinary/util/CircularIndexUtil"
require "org/allbinary/animation/AnimationBehavior"

