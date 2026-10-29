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
# package org.allbinary.graphics.pipeline


class BasicGraphicsPipeline
    attr_accessor :pointBasicArrayList, :noDecimalTrigTable

    def initialize_fields
        @pointBasicArrayList = nil
        @noDecimalTrigTable = NoDecimalTrigTable.getInstance()
    end
    

    def initialize(points)
        initialize_fields
        @pointBasicArrayList = points
    end
    

    def setInitMatrix(points)
        @pointBasicArrayList = points
    end
    

    def createMatrix()
    end
    

    # throws Exception
    def translate(x, y)
        newBasicArrayList = BasicArrayListD.new()
        size = @pointBasicArrayList.size()
        pointFactory = PointFactory.getInstance()
        secondPoint = nil
        (0...size).each do |index|
            secondPoint = @pointBasicArrayList.objectArray[index]
            if secondPoint.getX() != 1000
                newBasicArrayList.add(pointFactory.createXY(secondPoint.getX() + x, secondPoint.getY() + y))
            else
                newBasicArrayList.add(secondPoint)
            end
        end
        @pointBasicArrayList = newBasicArrayList
    end
    

    # throws Exception
    def rotateToAngle(angle)
        self.rotate((angle.getValue()).to_i)
    end
    

    # throws Exception
    def rotate(angle)
        newBasicArrayList = BasicArrayListD.new()
        secondPoint = nil
        y = 0
        secondX = 0
        secondY = 0
        point = nil
        pointFactory = PointFactory.getInstance()
        size = @pointBasicArrayList.size()
        sin = 0
        cos = 0
        (0...size).each do |index|
            secondPoint = @pointBasicArrayList.objectArray[index]
            if secondPoint.getX() != 1000
                sin = @noDecimalTrigTable.sin(angle)
                cos = @noDecimalTrigTable.cos(angle)
                y = secondPoint.getY() * sin
                secondX = (secondPoint.getX() * cos) - y
                secondY = (secondPoint.getX() * sin) + (secondPoint.getY() * cos)
                point = pointFactory.createXY(secondX / 10000, secondY / 10000)
                newBasicArrayList.add(point)
            else
                newBasicArrayList.add(secondPoint)
            end
        end
        @pointBasicArrayList = newBasicArrayList
    end
    

    # throws Exception
    def mirror(width)
        pointFactory = PointFactory.getInstance()
        halfWidth = (width >> 1)
        newBasicArrayList = BasicArrayListD.new()
        secondPoint = nil
        newX = 0
        point = nil
        size = @pointBasicArrayList.size()
        (0...size).each do |index|
            secondPoint = @pointBasicArrayList.objectArray[index]
            if secondPoint.getX() != 1000
                newX = 0
                if secondPoint.getX() > halfWidth
                    newX = halfWidth - (secondPoint.getX() - halfWidth)
                else
                    newX = halfWidth + (halfWidth - secondPoint.getX())
                end
                point = pointFactory.createXY(newX, secondPoint.getY())
                newBasicArrayList.add(point)
            else
                newBasicArrayList.add(secondPoint)
            end
        end
        @pointBasicArrayList = newBasicArrayList
    end
    

    def getMatrix()
        return @pointBasicArrayList
    end
end

require "org/allbinary/graphics/GPoint"
require "org/allbinary/graphics/PointFactory"
require "org/allbinary/math/Angle"
require "org/allbinary/math/NoDecimalTrigTable"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"

