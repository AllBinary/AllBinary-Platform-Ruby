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

require "java/lang/Object"
# require "java/awt"
# require "javax/swing/tree/DefaultMutableTreeNode"
# require "javax/swing/tree/MutableTreeNode"
require "org/allbinary/graphics/j2me/workarea/tools/GraphicItemInterface"

class LinesGraphicItem
    include GraphicItemInterface
    attr_accessor :logUtil, :commonStrings, :gameInputStrings, :treeNode, :pointTreeNodeVector, :currentMousePoint, :fulcrumPoint, :active, :theta, :color, :points

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @gameInputStrings = GameInputStrings.getInstance()
        @treeNode = nil
        @pointTreeNodeVector = nil
        @currentMousePoint = nil
        @fulcrumPoint = nil
        @active = false
        @theta = 0.0
        @color = Color.new(BasicColorFactory.getInstance().WHITE.to_i)
        @points = nil
    end

    def initialize(*args)
        case args.length
        when 0 then constructor0(*args)
        when 1 then constructor1(*args)
        end
    end
    

    def constructor0()
        initialize_fields
        @points = Points.new()
        begin
            self.init()
            @active = true
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.CONSTRUCTOR, e)
        end
    end
    

    def constructor1(linesNode)
        initialize_fields
        @points = Points.new()
        self.init()
        @active = false
        lineNodes = DomHelper.getInstance().getWithoutTextNodes(linesNode.getChildNodes())
        numberOfLines = lineNodes.size()
        (0...numberOfLines).each do |index|
            lineNode = lineNodes.get(index)
            pointNodes = DomHelper.getInstance().getWithoutTextNodes(lineNode.getChildNodes())
            pointOneNode = DomHelper.getInstance().searchNodeList(PointsDomUtil.getInstance().POINTONE, pointNodes)
            self.addPoint(pointOneNode.getChildNodes())
            if index == numberOfLines - 1
                pointTwoNode = DomHelper.getInstance().searchNodeList(PointsDomUtil.getInstance().POINTTWO, pointNodes)
                self.addPoint(pointTwoNode.getChildNodes())
            end
        end
        if numberOfLines == 0
            raise StandardError.new("Lines node does not contain a line")
        end
    end
    

    # throws Exception
    def init()
        @treeNode = DefaultMutableTreeNode.new(PointsDomUtil.getInstance().LINES + LinesGraphicItem.item)
        LinesGraphicItem.item += 1
        @points.init()
        @pointTreeNodeVector = BasicArrayListD.new()
        @fulcrumPoint = PointFactory.getInstance().createXY(0, 0)
    end
    

    # throws Exception
    def translate(x, y)
        StatusFactory.getInstance().setStatus("Translating: " + (@points.getPoints()).to_s)
        basicGraphicsPipeline = BasicGraphicsPipeline.new(@points.getPoints())
        basicGraphicsPipeline.translate(x, y)
        @points = Points.new()
        @points.addPoints(basicGraphicsPipeline.getMatrix())
    end
    

    def setRotate(theta)
        while theta > 2 * Math::PI
            theta -= 2 * Math::PI
        end
        while theta < 0.0
            theta += 2 * Math::PI
        end
        @theta = theta
    end
    

    def addRotate(theta)
        self.setRotate(@theta + theta)
    end
    

    def setAngle(angle)
        self.setRotate(((angle) * Math::PI / 180))
    end
    

    def addAngle(angle)
        self.setRotate(@theta + ((angle) * Math::PI / 180))
    end
    

    def getTreeNode()
        return @treeNode
    end
    

    def getName()
        return LinesGraphicItem::NAME
    end
    

    def self.getStaticName()
        return LinesGraphicItem::NAME
    end
    

    # throws Exception
    def addPoint(pointNodes)
        java_monitor.synchronize do
        list = DomHelper.getInstance().getWithoutTextNodes(pointNodes)
        xNode = DomHelper.getInstance().searchNodeList(PositionStrings.getInstance().X, list)
        xTextNode = xNode.getFirstChild()
        xInteger = xTextNode.getNodeValue()
        yNode = DomHelper.getInstance().searchNodeList(PositionStrings.getInstance().Y, list)
        yTextNode = yNode.getFirstChild()
        yInteger = yTextNode.getNodeValue()
        point = PointFactory.getInstance().createXY(xInteger.to_i, yInteger.to_i)
        self.addPoint(point)
        end
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def addPoint(point)
        java_monitor.synchronize do
        @points.getPoints().add(point)
        @logUtil.putF(point.to_s, self, "addPoint")
        @pointTreeNodeVector.add(DefaultMutableTreeNode.new(point.to_s))
        @treeNode.add(@pointTreeNodeVector.get(@pointTreeNodeVector.size() - 1))
        end
    end
    

    def removePoint()
        java_monitor.synchronize do
        point = nil
        if @points.getSize() > 0
            lastPoint = @points.getSize() - 1
            point = @points.getPoints().removeAt(lastPoint)
            index = @pointTreeNodeVector.size() - 1
            if index > 0
                @treeNode.remove(@pointTreeNodeVector.get(index))
                @pointTreeNodeVector.remove(index)
            end
        end
        return point
        end
    end
    

    def isActive()
        return @active
    end
    

    def deactivate()
        @active = false
    end
    

    def activate()
        @active = true
    end
    

    # throws Exception
    def duplicatePoints(list)
        size = list.size()
        (0...size).each do |index|
            point = list.get(index)
            if point != nil
                @points.getPoints().add(PointFactory.getInstance().createXY(point.getX(), point.getY()))
                @pointTreeNodeVector.add(DefaultMutableTreeNode.new(point.to_s))
                @treeNode.add(@pointTreeNodeVector.get(@pointTreeNodeVector.size() - 1))
            end
        end
    end
    

    # throws Exception
    def duplicate()
        linesGraphicItem = LinesGraphicItem.new()
        linesGraphicItem.duplicatePoints(@points.getPoints())
        linesGraphicItem.deactivate()
        return linesGraphicItem
    end
    

    def getAngle()
        return ((@theta) * 180 / Math::PI)
    end
    

    def setFulcrumPoint(point)
        @fulcrumPoint = point
    end
    

    def paint(g, canvasAngle, dimension, x, y)
        begin
            graphics = g
            graphics.setColor(getColor())
            graphics.setStroke(BasicStroke.new(x))
            if self.isActive() && @currentMousePoint != nil
                @points.getPoints().add(@currentMousePoint)
            end
            tempPointVector = PointsUtil.getInstance().doTransforms(@points.getPoints(), canvasAngle, PointFactory.getInstance().createXY(dimension.getWidth(), dimension.getHeight()))
            if self.isActive() && @currentMousePoint != nil
                @currentMousePoint = @points.getPoints().removeAt(@points.getSize() - 1)
            end
            size = tempPointVector.size()
            firstPoint = nil
            if size > 0
                firstPoint = tempPointVector.get(0)
            end
            (1...size).each do |index|
                secondPoint = tempPointVector.get(index)
                graphics.drawLine((firstPoint.getX() * x) - (x / 4), (firstPoint.getY() * y) - (y / 4), (secondPoint.getX() * x) - (x / 4), (secondPoint.getY() * y) - (y / 4))
                firstPoint = secondPoint
            end
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "mouseMoved", e)
        end
    end
    

    # throws Exception
    def toDom(canvasDom)
        return PointsDomUtil.getInstance().toDom(canvasDom, @points.getPoints())
    end
    

    def isValid()
        return @points.isValid()
    end
    

    def getPointsInterface()
        return @points
    end
    

    def setPointsInterface(points)
        @points = points
    end
    

    def getColor()
        return @color
    end
    

    def setColor(color)
        @color = color
    end
    

    def mouseClicked(mouseEvent, x, y)
        begin
            mousePoint = PointFactory.getInstance().createXY(mouseEvent.getPoint().x, mouseEvent.getPoint().y)
            if (mouseEvent.getModifiers() & mouseEvent.BUTTON1_MASK) == mouseEvent.BUTTON1_MASK
                point = PointFactory.getInstance().createXY(mousePoint.getX() / x, mousePoint.getY() / y)
                StatusFactory.getInstance().setStatus("Line Point Added: " + point.to_s)
                self.addPoint(point)
            elsif (mouseEvent.getModifiers() & mouseEvent.BUTTON3_MASK) == mouseEvent.BUTTON3_MASK
                StatusFactory.getInstance().setStatus("Line Point Removed")
                self.removePoint()
            end
            @currentMousePoint = mousePoint
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "mouseMoved", e)
        end
    end
    

    def mouseEntered(mouseEvent)
    end
    

    def mouseExited(mouseEvent)
    end
    

    def mousePressed(mouseEvent, xPixelsPerCell, yPixelsPerCell)
    end
    

    def mouseReleased(mouseEvent, xPixelsPerCell, yPixelsPerCell)
    end
    

    def mouseDragged(mouseEvent, xPixelsPerCell, yPixelsPerCell)
    end
    

    def mouseMoved(mouseEvent, x, y)
        begin
            mousePoint = PointFactory.getInstance().createXY(mouseEvent.getPoint().x, mouseEvent.getPoint().y)
            point = PointFactory.getInstance().createXY(mousePoint.getX() / x, mousePoint.getY() / y)
            @currentMousePoint = point
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "mouseMoved", e)
        end
    end
    

    def keyPressed(keyEvent)
        begin
            keyCode = keyEvent.getKeyCode()
            if keyCode == keyEvent.VK_ESCAPE
                StatusFactory.getInstance().setStatus("Deactivated")
                self.deactivate()
            elsif keyCode == keyEvent.VK_UP
                self.translate(0, -1)
            elsif keyCode == keyEvent.VK_DOWN
                self.translate(0, 1)
            elsif keyCode == keyEvent.VK_LEFT
                self.translate(-1, 0)
            elsif keyCode == keyEvent.VK_RIGHT
                self.translate(1, 0)
            end
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @gameInputStrings.KEY_PRESSED, e)
        end
    end
    

    def keyReleased(keyEvent)
    end
    

    def keyTyped(keyEvent)
    end

    def self.item()
        return defined?(@@item) ? @@item : nil
    end

    def self.item=(value)
        @@item = value
    end
end

require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/dom/DomHelper"
require "org/allbinary/game/input/GameInputStrings"
require "org/allbinary/graphics/GPoint"
require "org/allbinary/graphics/PointFactory"
require "org/allbinary/graphics/color/BasicColorFactory"
require "org/allbinary/graphics/j2me/StatusFactory"
require "org/allbinary/graphics/j2me/workarea/canvas/CanvasDom"
require "org/allbinary/graphics/j2me/workarea/canvas/IntegerDimension"
require "org/allbinary/graphics/pipeline/BasicGraphicsPipeline"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/math/PositionStrings"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/util/BasicArrayList"
require "org/w3c/dom/Node"
require "org/w3c/dom/NodeList"
require "org/allbinary/graphics/j2me/workarea/tools/Points"
require "org/allbinary/graphics/j2me/workarea/tools/PointsDomUtil"
require "org/allbinary/graphics/j2me/workarea/tools/PointsUtil"

class LinesGraphicItem
    RECT = "rect"
    ARC = "arc"
    STRING = "string"
    CHAR = "char"
    IMAGE = "image"
    @@item = 0
    NAME = "Line Tool"
end

