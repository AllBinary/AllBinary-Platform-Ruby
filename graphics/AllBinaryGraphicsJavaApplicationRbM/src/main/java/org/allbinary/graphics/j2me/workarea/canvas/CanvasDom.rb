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
# package org.allbinary.graphics.j2me.workarea.canvas


class CanvasDom
    attr_accessor :graphicsStrings, :graphicItemHashMap, :angle, :dimension, :grid

    def initialize_fields
        @graphicsStrings = GraphicsStrings.getInstance()
        @graphicItemHashMap = nil
        @angle = nil
        @dimension = nil
        @grid = nil
    end

    def initialize(*args)
        case args.length
        when 1 then constructor1(*args)
        when 1 then constructor1(*args)
        end
    end
    

    def constructor1(canvasNode)
        initialize_fields
        @grid = Grid.new()
        @grid.grid = PointFactory.getInstance().createXY(0, 0)
        @dimension = IntegerDimension.new(0, 0)
        name = canvasNode.getNodeName()
        if (name <=> CanvasDom::FRAME) == 0
            @graphicItemHashMap = StdUtil.getInstance().createHashMap()
            angleNode = DomHelper.getInstance().searchNodeList(ROTATE, canvasNode.getChildNodes())
            angleTextNode = angleNode.getFirstChild()
            angle = angleTextNode.getNodeValue().to_f
            self.setAngle(angle)
            sizeNode = DomHelper.getInstance().searchNodeList(SIZE, canvasNode.getChildNodes())
            xNode = DomHelper.getInstance().searchNodeList(X, sizeNode.getChildNodes())
            xTextNode = xNode.getFirstChild()
            x = xTextNode.getNodeValue().to_i
            yNode = DomHelper.getInstance().searchNodeList(Y, sizeNode.getChildNodes())
            yTextNode = yNode.getFirstChild()
            y = yTextNode.getNodeValue().to_i
            self.setWorkArea(x, y)
            zoomNode = DomHelper.getInstance().searchNodeList(ZOOM, canvasNode.getChildNodes())
            zoomTextNode = zoomNode.getFirstChild()
            @grid.setZoom(zoomTextNode.getNodeValue().to_i)
            gridNode = DomHelper.getInstance().searchNodeList(GRID, canvasNode.getChildNodes())
            gridSizeNode = DomHelper.getInstance().searchNodeList(SIZE, gridNode.getChildNodes())
            gridXNode = DomHelper.getInstance().searchNodeList(X, gridSizeNode.getChildNodes())
            gridXTextNode = gridXNode.getFirstChild()
            gridX = gridXTextNode.getNodeValue().to_i
            gridYNode = DomHelper.getInstance().searchNodeList(Y, gridSizeNode.getChildNodes())
            gridYTextNode = gridYNode.getFirstChild()
            gridY = gridYTextNode.getNodeValue().to_i
            self.setGrid(gridX, gridY)
            enableNode = DomHelper.getInstance().searchNodeList(ENABLED, gridNode.getChildNodes())
            enableTextNode = enableNode.getFirstChild()
            @grid.showGrid(enableTextNode.getNodeValue())
            possibleNode = DomHelper.getInstance().searchNodeList(POSSIBLE, gridNode.getChildNodes())
            possibleTextNode = possibleNode.getFirstChild()
            @grid.isGridPossible = possibleTextNode.getNodeValue()
            graphicItemNodeList = DomHelper.getInstance().getChildrenWithoutTextNodes(GRAPHICITEMS, canvasNode.getChildNodes())
            if graphicItemNodeList != nil
                @graphicItemHashMap = GraphicItemFactory.getInstance().getInstance(graphicItemNodeList)
            end
        else
            raise StandardError.new("Frame Element Not Found but Found: " + name)
        end
    end
    

    def constructor1(canvasJPanel)
        initialize_fields
        @angle = canvasJPanel.getAngle()
        @graphicItemHashMap = canvasJPanel.getGraphicItemHashMap()
        @dimension = canvasJPanel.getCanvasDimension()
        @grid = Grid.new(canvasJPanel.getGrid())
        @angle = canvasJPanel.getAngle()
    end
    

    def getAngle()
        return @angle
    end
    

    def getGraphicItemHashMap()
        return @graphicItemHashMap
    end
    

    def setAngle(angle)
        @angle = angle
    end
    

    # throws Exception
    def setWorkArea(x, y)
        self.setDimension(IntegerDimension.new(x, y))
    end
    

    # throws Exception
    def setGrid(gridX, gridY)
        @grid.grid = PointFactory.getInstance().createXY(gridX, gridY)
    end
    

    def getPointNode(point, pointName)
        document = WorkAreaJPanel.getDocument()
        pointNode = document.createElement(pointName)
        xNode = document.createElement(X)
        xTextNode = document.createTextNode((point.getX()).to_s)
        xNode.appendChild(xTextNode)
        yNode = document.createElement(Y)
        yTextNode = document.createTextNode((point.getY()).to_s)
        yNode.appendChild(yTextNode)
        pointNode.appendChild(xNode)
        pointNode.appendChild(yNode)
        return pointNode
    end
    

    # throws Exception
    def toDom()
        document = WorkAreaJPanel.getDocument()
        frameNode = document.createElement(FRAME)
        angleNode = document.createElement(ROTATE)
        angleTextNode = document.createTextNode(self.getAngle().to_s)
        angleNode.appendChild(angleTextNode)
        sizeNode = self.getPointNode(PointFactory.getInstance().createXY(self.getDimension().getWidth(), self.getDimension().getHeight()), SIZE)
        zoomNode = document.createElement(ZOOM)
        zoomTextNode = document.createTextNode(self.getGrid().getZoom().to_s)
        zoomNode.appendChild(zoomTextNode)
        gridNode = document.createElement(GRID)
        gridSizeNode = self.getPointNode(self.getGrid().grid, SIZE)
        gridNode.appendChild(gridSizeNode)
        enableNode = document.createElement(ENABLED)
        enableTextNode = document.createTextNode(self.getGrid().isGridOn().to_s)
        enableNode.appendChild(enableTextNode)
        gridNode.appendChild(enableNode)
        possibleNode = document.createElement(POSSIBLE)
        possibleTextNode = document.createTextNode(self.getGrid().isGridPossible().to_s)
        possibleNode.appendChild(possibleTextNode)
        gridNode.appendChild(possibleNode)
        realSizeNode = document.createElement(REAL_SIZE)
        vectorCenterGenerator = VectorCenterGenerator.new()
        vectorCenterGenerator.calculate(self.getGraphicItemHashMap())
        widthNode = document.createElement(@graphicsStrings.WIDTH)
        widthTextNode = document.createTextNode((vectorCenterGenerator.getWidth()).to_s)
        widthNode.appendChild(widthTextNode)
        realSizeNode.appendChild(widthNode)
        heightNode = document.createElement(@graphicsStrings.HEIGHT)
        heightTextNode = document.createTextNode((vectorCenterGenerator.getHeight()).to_s)
        heightNode.appendChild(heightTextNode)
        realSizeNode.appendChild(heightNode)
        frameNode.appendChild(angleNode)
        frameNode.appendChild(sizeNode)
        frameNode.appendChild(zoomNode)
        frameNode.appendChild(gridNode)
        frameNode.appendChild(realSizeNode)
        graphicItemNode = document.createElement(GRAPHICITEMS)
        graphicItemArray = self.getGraphicItemHashMap().keySet().toArray()
        size = graphicItemArray.length
        (0...size).each do |index|
            item = @graphicItemHashMap.get(graphicItemArray[index])
            if item.getName() == LinesGraphicItem.getStaticName()
                if item.isValid()
                    graphicItemNode.appendChild(item.toDom(self))
                end
            end
        end
        frameNode.appendChild(graphicItemNode)
        return frameNode
    end
    

    def getDimension()
        return @dimension
    end
    

    def setDimension(dimension)
        @dimension = dimension
    end
    

    def getGrid()
        return @grid
    end
end

require "java/util/HashMap"
require "org/allbinary/animation/vector/VectorCenterGenerator"
require "org/allbinary/dom/DomHelper"
require "org/allbinary/graphics/GPoint"
require "org/allbinary/graphics/GraphicsStrings"
require "org/allbinary/graphics/PointFactory"
require "org/allbinary/graphics/j2me/workarea/WorkAreaJPanel"
require "org/allbinary/graphics/j2me/workarea/tools/GraphicItemFactory"
require "org/allbinary/graphics/j2me/workarea/tools/GraphicItemInterface"
require "org/allbinary/graphics/j2me/workarea/tools/LinesGraphicItem"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/util/BasicArrayList"
require "org/w3c/dom/Node"
require "org/allbinary/graphics/j2me/workarea/canvas/CanvasJPanel"
require "org/allbinary/graphics/j2me/workarea/canvas/Grid"
require "org/allbinary/graphics/j2me/workarea/canvas/IntegerDimension"

class CanvasDom
    FRAME = "frame"
    ROTATE = "rotate"
    SIZE = "size"
    X = "X"
    Y = "Y"
    ZOOM = "zoom"
    GRID = "grid"
    ENABLED = "enabled"
    POSSIBLE = "possible"
    GRAPHICITEMS = "graphicItems"
    REAL_SIZE = "realSize"
end

