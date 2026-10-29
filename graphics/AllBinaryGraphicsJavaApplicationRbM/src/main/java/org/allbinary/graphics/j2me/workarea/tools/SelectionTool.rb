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

# require "java/awt"
# require "javax/swing/tree/MutableTreeNode"
require "org/allbinary/graphics/j2me/workarea/tools/GraphicItemInterface"

class SelectionTool
    include GraphicItemInterface
    attr_accessor :logUtil, :commonStrings, :canvasJPanel, :active, :controlIdDown, :rectColor, :startPoint, :endPoint

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @canvasJPanel = nil
        @active = true
        @controlIdDown = false
        @rectColor = Color.new(BasicColorFactory.getInstance().RED.to_i)
        @startPoint = PointFactory.getInstance().ZERO_ZERO
        @endPoint = @startPoint
    end
    

    def initialize(canvasJPanel)
        initialize_fields
        @canvasJPanel = canvasJPanel
    end
    

    def setColor(color)
    end
    

    def getTreeNode()
        return nil
    end
    

    def getPointsInterface()
        return nil
    end
    

    def setPointsInterface(points)
    end
    

    def isValid()
        return true
    end
    

    def isActive()
        return @active
    end
    

    def deactivate()
    end
    

    def activate()
    end
    

    def setFulcrumPoint(point)
    end
    

    # throws Exception
    def translate(x, y)
    end
    

    def setRotate(theta)
    end
    

    def addRotate(theta)
    end
    

    def setAngle(angle)
    end
    

    def addAngle(angle)
    end
    

    def getAngle()
        return 0.0
    end
    

    def makeSelection()
        xRect = self.getXRect()
        xRect2 = (@endPoint.getX() - @startPoint.getX()).abs + xRect
        yRect = self.getYRect()
        yRect2 = (@endPoint.getY() - @startPoint.getY()).abs + yRect
        hashMap = @canvasJPanel.getGraphicItemHashMap()
        graphicItemArray = hashMap.keySet().toArray()
        size = graphicItemArray.length
        (0...size).each do |index|
            item = hashMap.get(graphicItemArray[index])
            if item.getName() == LinesGraphicItem.getStaticName()
                if RectangleCollisionPointUtil.allPointsInsideCell(xRect, yRect, xRect2, yRect2, item.getPointsInterface().getPoints(), @canvasJPanel.getXPixelsPerWorkAreaPixel(), @canvasJPanel.getYPixelsPerWorkAreaPixel())
                    item.setColor(Color::YELLOW)
                    item.activate()
                elsif !@controlIdDown
                    item.setColor(Color::WHITE)
                    item.deactivate()
                end
            end
        end
    end
    

    def getXRect()
        xDiff = @endPoint.getX() - @startPoint.getX()
        xRect = @startPoint.getX()
        if xDiff < 0
            xRect = @endPoint.getX()
        end
        return xRect
    end
    

    def getYRect()
        yDiff = @endPoint.getY() - @startPoint.getY()
        yRect = @startPoint.getY()
        if yDiff < 0
            yRect = @endPoint.getY()
        end
        return yRect
    end
    

    def paint(g, canvasAngle, dimension, x, y)
        g.setColor(@rectColor)
        xRect = self.getXRect()
        width = (@endPoint.getX() - @startPoint.getX()).abs
        yRect = self.getYRect()
        height = (@endPoint.getY() - @startPoint.getY()).abs
        g.drawRect(xRect, yRect, width, height)
    end
    

    # throws Exception
    def toDom(canvasDom)
        return nil
    end
    

    def removePoint()
        return nil
    end
    

    def addPoint(point)
    end
    

    def getName()
        return SelectionTool::NAME
    end
    

    def self.getStaticName()
        return SelectionTool::NAME
    end
    

    def mouseClicked(mouseEvent, xPixelsPerCell, yPixelsPerCell)
    end
    

    def mouseMoved(mouseEvent, xPixelsPerCell, yPixelsPerCell)
    end
    

    def mouseEntered(mouseEvent)
    end
    

    def mouseExited(mouseEvent)
    end
    

    def mousePressed(mouseEvent, xPixelsPerCell, yPixelsPerCell)
        @logUtil.putF(@commonStrings.START, self, MouseStrings.getInstance().MOUSE_PRESSED)
        @startPoint = PointFactory.getInstance().createXY(mouseEvent.getX(), mouseEvent.getY())
        @endPoint = @startPoint
    end
    

    def mouseReleased(mouseEvent, xPixelsPerCell, yPixelsPerCell)
        @logUtil.putF(@commonStrings.START, self, MouseStrings.getInstance().MOUSE_RELEASED)
        @endPoint = PointFactory.getInstance().createXY(mouseEvent.getX(), mouseEvent.getY())
        @active = false
        self.makeSelection()
    end
    

    def mouseDragged(mouseEvent, xPixelsPerCell, yPixelsPerCell)
        @endPoint = PointFactory.getInstance().createXY(mouseEvent.getX(), mouseEvent.getY())
    end
    

    def keyPressed(keyEvent)
        if keyEvent.getKeyCode() == keyEvent.VK_CONTROL
            @controlIdDown = true
        end
    end
    

    def keyReleased(keyEvent)
        if keyEvent.getKeyCode() == keyEvent.VK_CONTROL
            @controlIdDown = false
        end
    end
    

    def keyTyped(keyEvent)
    end
    

    # throws Exception
    def duplicate()
        return nil
    end
end

require "java/util/HashMap"
require "org/allbinary/graphics/GPoint"
require "org/allbinary/graphics/PointFactory"
require "org/allbinary/graphics/color/BasicColorFactory"
require "org/allbinary/graphics/j2me/workarea/canvas/CanvasDom"
require "org/allbinary/graphics/j2me/workarea/canvas/CanvasJPanel"
require "org/allbinary/graphics/j2me/workarea/canvas/IntegerDimension"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/math/RectangleCollisionPointUtil"
require "org/allbinary/string/CommonStrings"
require "org/w3c/dom/Node"
require "org/allbinary/graphics/j2me/workarea/tools/LinesGraphicItem"
require "org/allbinary/graphics/j2me/workarea/tools/MouseStrings"
require "org/allbinary/graphics/j2me/workarea/tools/Points"

class SelectionTool
    NAME = "Selection Tool"
end

