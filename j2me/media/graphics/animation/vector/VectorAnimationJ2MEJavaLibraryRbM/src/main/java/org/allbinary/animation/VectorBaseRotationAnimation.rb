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
require "org/allbinary/animation/RotationAnimation"
require "org/allbinary/animation/VectorAnimationInterface"

class VectorBaseRotationAnimation < RotationAnimation
    include VectorAnimationInterface
    attr_accessor :currentPoints

    def initialize_fields
        @currentPoints = NullUtil.getInstance().NULL_INT_ARRAY_ARRAY_ARRAY
    end
    

    def initialize(angleInfo, currentPoints, basicColor, animationBehavior)
        super(angleInfo, CircularIndexUtil.createInstance(360 / angleInfo.getAngleIncrementInfo().getAngleIncrement()), animationBehavior)
        initialize_fields
        self.setPoints(currentPoints)
        self.setBasicColorP(basicColor)
    end
    

    # throws Exception
    def getAnimationSize()
        return self.getSize()
    end
    

    def getFrame()
        return @circularIndexUtil.getIndex()
    end
    

    def setFrame(index)
        @circularIndexUtil.setIndex(index)
    end
    

    def nextFrame()
        @circularIndexUtil.next_()
    end
    

    def previousFrame()
        @circularIndexUtil.previous()
    end
    

    def getSize()
        return @currentPoints.length
    end
    

    def setSequence(sequence)
    end
    

    def getSequence()
        return PrimitiveIntUtil.getArrayInstance()
    end
    

    def paintXY(graphics, x, y)
        @basicSetColorUtil.setBasicColorP(graphics, @basicColor)
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
    

    def getPoints(frame)
        return @currentPoints[frame]
    end
    

    def setPoints(currentPoints)
        @currentPoints = currentPoints
        @circularIndexUtil = CircularIndexUtil.createInstance(@currentPoints.length)
    end
end

require "org/allbinary/graphics/color/BasicColor"
require "org/allbinary/logic/NullUtil"
require "org/allbinary/logic/math/PrimitiveIntUtil"
require "org/allbinary/math/AngleInfo"
require "org/allbinary/util/CircularIndexUtil"
require "org/allbinary/animation/AnimationBehavior"

