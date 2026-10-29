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
# package org.allbinary.graphics.j2me.workarea.tools


class PointsDomUtil
    attr_accessor :LINES, :POINTONE, :POINTTWO, :ROTATEDPOINTONE, :ROTATEDPOINTTWO, :LINE

    def initialize_fields
        @LINES = "lines"
        @POINTONE = "pointOne"
        @POINTTWO = "pointTwo"
        @ROTATEDPOINTONE = "rotatedPointOne"
        @ROTATEDPOINTTWO = "rotatedPointTwo"
        @LINE = "line"
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return PointsDomUtil.instance
    end
    

    # throws Exception
    def toDom(canvasDom, pointVector)
        tempPointVector = PointsUtil.getInstance().doTransforms(pointVector, canvasDom.getAngle(), PointFactory.getInstance().createXY(canvasDom.getDimension().getWidth(), canvasDom.getDimension().getHeight()))
        document = WorkAreaJPanel.getDocument()
        linesNode = document.createElement(@LINES)
        size2 = tempPointVector.size()
        size = pointVector.size()
        firstPoint = nil
        rotatedFirstPoint = nil
        index = 0
        if index < size && index < size2
            rotatedFirstPoint = tempPointVector.get(index)
            firstPoint = pointVector.get(index)
            index += 1
        end
        while index < size && index < size2
            lineNode = document.createElement(@LINE)
            rotatedSecondPoint = tempPointVector.get(index)
            secondPoint = pointVector.get(index)
            pointOneNode = self.getPointNode(firstPoint, @POINTONE)
            pointTwoNode = self.getPointNode(secondPoint, @POINTTWO)
            rotatedPointOneNode = self.getPointNode(rotatedFirstPoint, @ROTATEDPOINTONE)
            rotatedPointTwoNode = self.getPointNode(rotatedSecondPoint, @ROTATEDPOINTTWO)
            lineNode.appendChild(pointOneNode)
            lineNode.appendChild(pointTwoNode)
            lineNode.appendChild(rotatedPointOneNode)
            lineNode.appendChild(rotatedPointTwoNode)
            firstPoint = secondPoint
            rotatedFirstPoint = rotatedSecondPoint
            linesNode.appendChild(lineNode)
            index += 1
        end
        return linesNode
    end
    

    def getPointNode(point, pointName)
        document = WorkAreaJPanel.getDocument()
        pointNode = document.createElement(pointName)
        xNode = document.createElement(PositionStrings.getInstance().X)
        xTextNode = document.createTextNode((point.getX()).to_s)
        xNode.appendChild(xTextNode)
        yNode = document.createElement(PositionStrings.getInstance().Y)
        yTextNode = document.createTextNode((point.getY()).to_s)
        yNode.appendChild(yTextNode)
        pointNode.appendChild(xNode)
        pointNode.appendChild(yNode)
        return pointNode
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/graphics/GPoint"
require "org/allbinary/graphics/PointFactory"
require "org/allbinary/graphics/j2me/workarea/WorkAreaJPanel"
require "org/allbinary/graphics/j2me/workarea/canvas/CanvasDom"
require "org/allbinary/math/PositionStrings"
require "org/allbinary/util/BasicArrayList"
require "org/w3c/dom/Node"
require "org/allbinary/graphics/j2me/workarea/tools/PointsUtil"

class PointsDomUtil
    @@instance = PointsDomUtil.new()
end

