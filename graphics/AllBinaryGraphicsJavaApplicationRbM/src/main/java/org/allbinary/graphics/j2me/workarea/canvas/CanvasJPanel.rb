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

# require "java/awt"
# require "javax/swing/tree/DefaultMutableTreeNode"
# require "javax/swing/tree/MutableTreeNode"
require "org/allbinary/graphics/j2me/workarea/tools/event/MyGraphicItemEventListener"

class CanvasJPanel < JPanel
    include MouseListener
    include MouseMotionListener
    include KeyListener
    include MyGraphicItemEventListener
    attr_accessor :logUtil, :guiLog, :gameInputStrings, :selectedTool, :graphicItemHashMap, :canvasDimension, :angle, :canvasTreeNode, :frameLabel, :workAreaJTreeJPanel, :grid

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @guiLog = GuiLog.getInstance()
        @gameInputStrings = GameInputStrings.getInstance()
        @selectedTool = nil
        @graphicItemHashMap = nil
        @canvasDimension = nil
        @angle = 0.0
        @canvasTreeNode = nil
        @frameLabel = nil
        @workAreaJTreeJPanel = nil
        @grid = nil
    end

    def initialize(*args)
        case args.length
        when 4 then constructor4(*args)
        when 3 then constructor3(*args)
        end
    end
    

    def constructor4(workAreaJTreeJPanel, dimension, x, y)
        method(:initialize).super_method.call()
        initialize_fields
        @grid = Grid.new()
        begin
            @workAreaJTreeJPanel = workAreaJTreeJPanel
            self.initComponents()
            self.initMyComponents()
            self.setSize(dimension)
            self.setCanvasSize(x, y)
        rescue StandardError => e
            if LOGGING.contains(LOGGING.GRAPHICSCREATION)
                @guiLog.put("Constructor Error", self, "contructor", e)
            end
        end
    end
    

    def constructor3(workAreaJTreeJPanel, dimension, canvasDom)
        method(:initialize).super_method.call()
        initialize_fields
        @grid = Grid.new(canvasDom.getGrid())
        begin
            @workAreaJTreeJPanel = workAreaJTreeJPanel
            self.initComponents()
            self.initMyComponents()
            self.setSize(dimension)
            self.setCanvasSize(canvasDom.getDimension().getWidth(), canvasDom.getDimension().getHeight())
            @graphicItemHashMap = canvasDom.getGraphicItemHashMap()
            graphicItemArray = @graphicItemHashMap.keySet().toArray()
            size = graphicItemArray.length
            (0...size).each do |index|
                graphicItemTreeNode = graphicItemArray[index]
                @canvasTreeNode.add(graphicItemTreeNode)
            end
            self.repaint()
            self.setAngle(canvasDom.getAngle())
            @workAreaJTreeJPanel.updateTree()
            @workAreaJTreeJPanel.expand()
            @workAreaJTreeJPanel.repaint()
        rescue StandardError => e
            if LOGGING.contains(LOGGING.GRAPHICSCREATION)
                @guiLog.put("Constructor Error", self, "contructor", e)
            end
        end
    end
    

    # throws Exception
    def initMyComponents()
        @frameLabel = CanvasTreeLabel.new("FrameLabel" + CanvasJPanel.frame.to_s)
        @canvasTreeNode = DefaultMutableTreeNode.new(@frameLabel)
        CanvasJPanel.frame += 1
        @workAreaJTreeJPanel.add(self.getTreeNode())
        @graphicItemHashMap = StdUtil.getInstance().createHashMap()
        @grid.grid = PointFactory.getInstance().createXY(0, 0)
        self.setCanvasDimension(IntegerDimension.new(0, 0))
        @selectedTool = nil
        self.addKeyListener(self)
        self.addMouseListener(self)
        self.addMouseMotionListener(self)
        MyGraphicItemEventService.addListener(self)
    end
    

    def getTreeNode()
        return @canvasTreeNode
    end
    

    def initComponents()
        setLayout(GridLayout.new(1, 1))
    end
    

    # throws Exception
    def setCanvasSize(x, y)
        @grid.isGridPossible = true
        if x <= 0
            @grid.isGridPossible = false
            raise GraphicsException.new("X Size Error: " + (x).to_s, self, "setWorkAreaSize")
        end
        if y <= 0
            @grid.isGridPossible = false
            raise GraphicsException.new("Y Size Error: " + (y).to_s, self, "setWorkAreaSize")
        end
        if x > self.getWidth()
            @grid.isGridPossible = false
        end
        if y > self.getHeight()
            @grid.isGridPossible = false
        end
        self.setCanvasDimension(IntegerDimension.new(x, y))
        @grid.isChanged = true
    end
    

    def setGrid(point)
        self.setGrid(point.getX(), point.getY())
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def setGrid(xSize, ySize)
        begin
            if xSize >= getCanvasDimension().getWidth() / 2 || xSize < 1
                raise GraphicsException.new("X Size Error: " + (xSize).to_s + " WorkArea X: " + (getCanvasDimension().getWidth()).to_s, self, "setGrid")
            end
            if ySize >= getCanvasDimension().getHeight() / 2 || ySize < 1
                raise GraphicsException.new("Y Size Error" + (ySize).to_s + " WorkArea Y: " + (getCanvasDimension().getHeight()).to_s, self, "setGrid")
            end
            @grid.grid = PointFactory.getInstance().createXY(xSize, ySize)
            @grid.isChanged = true
        rescue StandardError => e
        end
    end
    

    # throws Exception
    def setDefaultGrid()
        xPixelsPerWorkAreaPixel = self.getWidth() / self.getCanvasDimension().getWidth()
        yPixelsPerWorkAreaPixel = self.getHeight() / self.getCanvasDimension().getHeight()
        self.setGrid(1, 1)
        @grid.isChanged = true
    end
    

    def getAngle()
        return @angle
    end
    

    def setAngle(angle)
        @angle = angle
    end
    

    def addAngle(angle)
        self.setAngle(@angle + angle)
    end
    

    def explodeAll()
        newPoints = BasicArrayListD.new()
        graphicItemArray = self.getGraphicItemHashMap().keySet().toArray()
        size = graphicItemArray.length
        (0...size).each do |index|
            graphicItemNode = graphicItemArray[index]
            graphicItem = self.getGraphicItemHashMap().get(graphicItemNode)
            if graphicItem.getName() == LinesGraphicItem.getStaticName()
                while graphicItem.getPointsInterface().getSize() > 2
                    newGraphicItem = GraphicItemFactory.getInstance().getInstance(graphicItem.getName()).getInstance(self)
                    pointOne = GPoint.getInstance(graphicItem.removePoint())
                    pointTwo = GPoint.getInstance(graphicItem.removePoint())
                    if pointOne != nil && pointTwo != nil
                        newGraphicItem.addPoint(pointOne)
                        newGraphicItem.addPoint(pointTwo)
                    end
                    newPoints.add(newGraphicItem)
                end
            end
        end
        size2 = newPoints.size()
        (0...size2).each do |index|
            newGraphicItem = newPoints.get(index)
            @canvasTreeNode.add(newGraphicItem.getTreeNode())
            self.getGraphicItemHashMap().put(newGraphicItem.getTreeNode(), newGraphicItem)
        end
        @workAreaJTreeJPanel.updateTree()
        @workAreaJTreeJPanel.expand()
        @workAreaJTreeJPanel.repaint()
    end
    

    # throws Exception
    def explode(howMuch, explosionType)
        graphicItemArray = self.getGraphicItemHashMap().keySet().toArray()
        size = graphicItemArray.length
        (0...size).each do |index|
            item = self.getGraphicItemHashMap().get(graphicItemArray[index])
            basicArrayList = VectorExplosionGenerator.getInstance().createList(item.getPointsInterface().getPoints(), howMuch, VectorExplosionGenerator.getInstance().RANDOM)
            newPoints = Points.new()
            newPoints.addPoints(basicArrayList)
            item.setPointsInterface(newPoints)
            angleDelta = RandomRotationFactory.getInstance().getNextRandomAngle(howMuch)
            item.setAngle(angleDelta)
        end
        self.repaint()
    end
    

    # throws Exception
    def mirror()
        width = self.getCanvasDimension().getWidth()
        graphicItemArray = self.getGraphicItemHashMap().keySet().toArray()
        size = graphicItemArray.length
        (0...size).each do |index|
            item = self.getGraphicItemHashMap().get(graphicItemArray[index])
            basicArrayList = VectorMirrorGenerator.getInstance().getInstance(item.getPointsInterface().getPoints(), width)
            newPoints = Points.new()
            newPoints.addPoints(basicArrayList)
            item.setPointsInterface(newPoints)
        end
        self.repaint()
    end
    

    # throws Exception
    def center()
        VectorCenterGenerator.new().transform(self.getGraphicItemHashMap())
        self.repaint()
    end
    

    def setNewTool()
        begin
            StatusFactory.getInstance().setStatus("Tool Selected")
            @selectedTool = ToolFactory.getInstance().getSelectedToolFactory().getInstance(self)
            newNode = @selectedTool.getTreeNode()
            self.getGraphicItemHashMap().put(newNode, @selectedTool)
            @canvasTreeNode.add(newNode)
            if self.getSelectedTool() == nil
                raise GraphicsException.new("No Tool Selected", self, "setSelectedTool")
            end
        rescue StandardError => e
        end
    end
    

    # throws Exception
    def duplicateGraphicItem(graphicItem)
        graphicItemClone = graphicItem.duplicate()
        self.getGraphicItemHashMap().put(graphicItemClone.getTreeNode(), graphicItemClone)
        @canvasTreeNode.add(graphicItemClone.getTreeNode())
    end
    

    # throws Exception
    def duplicateGraphicItemHashMap(hashMap)
        mutableTreeNodeArray = hashMap.keySet().toArray()
        size = mutableTreeNodeArray.length
        (0...size).each do |index|
            treeNode = mutableTreeNodeArray[index]
            graphicItem = hashMap.get(treeNode)
            self.duplicateGraphicItem(graphicItem)
        end
    end
    

    def getGraphicItemHashMap()
        return @graphicItemHashMap
    end
    

    def getXPixelsPerWorkAreaPixel()
        x = self.getGrid().grid.getX() * (self.getWidth() - 10) / self.getCanvasDimension().getWidth()
        if self.getGrid().getZoom() == 1
            return 1
        else
            return x
        end
    end
    

    def getYPixelsPerWorkAreaPixel()
        y = self.getGrid().grid.getY() * (self.getHeight() - 10) / self.getCanvasDimension().getHeight()
        if self.getGrid().getZoom() == 1
            return 1
        else
            return y
        end
    end
    

    def getSelectedTool()
        return @selectedTool
    end
    

    def drawItems(graphics)
        angleDouble = @angle
        graphicItemArray = self.getGraphicItemHashMap().keySet().toArray()
        size = graphicItemArray.length
        (0...size).each do |index|
            item = self.getGraphicItemHashMap().get(graphicItemArray[index])
            item.paint(graphics, angleDouble, self.getCanvasDimension(), self.getXPixelsPerWorkAreaPixel(), self.getYPixelsPerWorkAreaPixel())
        end
    end
    

    def drawGrid(graphics)
        xAdjust = (self.getWidth() % self.getXPixelsPerWorkAreaPixel()) / 2
        yAdjust = (self.getHeight() % self.getYPixelsPerWorkAreaPixel()) / 2
        xLeft = xAdjust
        yUpper = yAdjust
        xRight = self.getWidth() - xAdjust
        yLower = self.getHeight() - yAdjust
        graphics.setColor(CanvasJPanel.gridColor)
        (yAdjust..self.getHeight() - yAdjust).step(self.getYPixelsPerWorkAreaPixel()) do |value|
            graphics.drawLine(xLeft, value, xRight, value)
        end
        (xAdjust..self.getWidth() - xAdjust).step(self.getYPixelsPerWorkAreaPixel()) do |value|
            graphics.drawLine(value, yUpper, value, yLower)
        end
    end
    

    def paint(graphics)
        begin
            if self.getGrid().isChanged
                graphics.setColor(CanvasJPanel.backgroundColor)
                graphics.fillRect(0, 0, getWidth(), getHeight())
                if self.getGrid().getZoom() > 2 && self.getGrid().isGridOn && self.getGrid().isGridPossible
                    self.setDefaultGrid()
                    self.drawGrid(graphics)
                end
                self.drawItems(graphics)
                graphics.drawString(self.getAngle().to_s, self.getWidth() - 75, self.getHeight() - 15)
                @grid.isChanged = false
            end
        rescue StandardError => e
        end
    end
    

    def repaint()
        if @grid != nil
            @grid.isChanged = true
        end
        super()
    end
    

    # throws Exception
    def toDom()
        return CanvasDom.new(self).toDom()
    end
    

    def changed()
        @grid.isChanged = true
    end
    

    def mouseClicked(mouseEvent)
        StatusFactory.getInstance().setStatusNoLog(MouseStrings.getInstance().MOUSE_CLICKED_LABEL + self.logMouseEvent(mouseEvent))
        if self.getSelectedTool() != nil && self.getSelectedTool().isActive()
            graphicItem = self.getSelectedTool()
            graphicItem.mouseClicked(mouseEvent, self.getXPixelsPerWorkAreaPixel(), self.getYPixelsPerWorkAreaPixel())
        else
            self.setNewTool()
            graphicItem = self.getSelectedTool()
            if graphicItem != nil
                graphicItem.mouseClicked(mouseEvent, self.getXPixelsPerWorkAreaPixel(), self.getYPixelsPerWorkAreaPixel())
            end
        end
        @grid.isChanged = true
        self.repaint()
        @workAreaJTreeJPanel.updateTree()
        @workAreaJTreeJPanel.expand()
        @workAreaJTreeJPanel.repaint()
    end
    

    def mouseEntered(mouseEvent)
        StatusFactory.getInstance().setStatusNoLog(self.logMouseEvent(mouseEvent))
    end
    

    def mouseExited(mouseEvent)
        StatusFactory.getInstance().setStatusNoLog(self.logMouseEvent(mouseEvent))
    end
    

    def mousePressed(mouseEvent)
        StatusFactory.getInstance().setStatusNoLog(MouseStrings.getInstance().MOUSE_PRESSED_LABEL + self.logMouseEvent(mouseEvent))
        if self.getSelectedTool() != nil
            graphicItem = self.getSelectedTool()
            graphicItem.mousePressed(mouseEvent, self.getXPixelsPerWorkAreaPixel(), self.getYPixelsPerWorkAreaPixel())
        end
        self.requestFocus()
        @grid.isChanged = true
        self.repaint()
    end
    

    def mouseReleased(mouseEvent)
        StatusFactory.getInstance().setStatusNoLog(MouseStrings.getInstance().MOUSE_RELEASED_LABEL + self.logMouseEvent(mouseEvent))
        graphicItem = self.getSelectedTool()
        if graphicItem != nil
            graphicItem.mouseReleased(mouseEvent, self.getXPixelsPerWorkAreaPixel(), self.getYPixelsPerWorkAreaPixel())
        end
        self.requestFocus()
        @grid.isChanged = true
        self.repaint()
    end
    

    def mouseDragged(mouseEvent)
        StatusFactory.getInstance().setStatusNoLog(MouseStrings.getInstance().MOUSE_DRAGGED_LABEL + self.logMouseEvent(mouseEvent))
        graphicItem = self.getSelectedTool()
        if graphicItem != nil
            graphicItem.mouseDragged(mouseEvent, self.getXPixelsPerWorkAreaPixel(), self.getYPixelsPerWorkAreaPixel())
        end
        self.requestFocus()
        @grid.isChanged = true
        self.repaint()
    end
    

    def mouseMoved(mouseEvent)
        StatusFactory.getInstance().setStatusNoLog(MouseStrings.getInstance().MOUSE_MOVED_LABEL + self.logMouseEvent(mouseEvent))
        if self.getSelectedTool() != nil && self.getSelectedTool().isActive()
            graphicItem = self.getSelectedTool()
            graphicItem.mouseMoved(mouseEvent, self.getXPixelsPerWorkAreaPixel(), self.getYPixelsPerWorkAreaPixel())
        end
        self.requestFocus()
        @grid.isChanged = true
        self.repaint()
    end
    

    def logMouseEvent(mouseEvent)
        stringBuffer = StringMaker.new()
        stringBuffer.append(PositionStrings.getInstance().X_LABEL)
        stringBuffer.appendint((mouseEvent.getX() / self.getXPixelsPerWorkAreaPixel()).to_i)
        stringBuffer.append(CommonSeps.getInstance().SPACE)
        stringBuffer.append(PositionStrings.getInstance().Y_LABEL)
        stringBuffer.appendint((mouseEvent.getY() / self.getYPixelsPerWorkAreaPixel()).to_i)
        return stringBuffer.to_s
    end
    

    def keyPressed(keyEvent)
        StatusFactory.getInstance().setStatus("Key Pressed")
        begin
            graphicItemArray = @graphicItemHashMap.keySet().toArray()
            size = graphicItemArray.length
            (0...size).each do |index|
                graphicItemInterface = @graphicItemHashMap.get(graphicItemArray[index])
                keyCode = keyEvent.getKeyCode()
                if graphicItemInterface.isActive()
                    if keyCode == keyEvent.VK_UP
                        graphicItemInterface.translate(0, -1)
                    elsif keyCode == keyEvent.VK_DOWN
                        graphicItemInterface.translate(0, 1)
                    elsif keyCode == keyEvent.VK_LEFT
                        graphicItemInterface.translate(-1, 0)
                    elsif keyCode == keyEvent.VK_RIGHT
                        graphicItemInterface.translate(1, 0)
                    end
                end
            end
        rescue StandardError => e
            commonStrings = CommonStrings.getInstance()
            @logUtil.put(commonStrings.EXCEPTION, self, @gameInputStrings.KEY_PRESSED, e)
        end
        if self.getSelectedTool() != nil && self.getSelectedTool().isActive()
            StatusFactory.getInstance().setStatus("Key Pressed for Tool")
            graphicItem = self.getSelectedTool()
            graphicItem.keyPressed(keyEvent)
        else
            self.setNewTool()
        end
        @grid.isChanged = true
        self.repaint()
    end
    

    def keyReleased(keyEvent)
    end
    

    def keyTyped(keyEvent)
    end
    

    def delete(evt)
        self.getGraphicItemHashMap().remove(evt.getTreeNode())
        @workAreaJTreeJPanel.updateTree()
        @workAreaJTreeJPanel.expand()
        @workAreaJTreeJPanel.repaint()
    end
    

    def deselect(evt)
        graphicItemInterface = self.getGraphicItemHashMap().get(evt.getTreeNode())
        if graphicItemInterface != nil
            graphicItemInterface.setColor(Color::WHITE)
            graphicItemInterface.deactivate()
            @workAreaJTreeJPanel.repaint()
        end
    end
    

    def highlight(evt)
        graphicItemInterface = self.getGraphicItemHashMap().get(evt.getTreeNode())
        if graphicItemInterface != nil
            graphicItemInterface.setColor(Color::YELLOW)
            graphicItemInterface.activate()
            @workAreaJTreeJPanel.repaint()
        end
    end
    

    # throws Exception
    def duplicate()
        newCanvasJPanel = CanvasJPanel.new(@workAreaJTreeJPanel, self.getSize(), self.getCanvasDimension().getWidth(), self.getCanvasDimension().getHeight())
        newCanvasJPanel.setGrid(self.getGrid().getGrid())
        newCanvasJPanel.setAngle(self.getAngle())
        newCanvasJPanel.duplicateGraphicItemHashMap(self.getGraphicItemHashMap())
        @workAreaJTreeJPanel.updateTree()
        @workAreaJTreeJPanel.expand()
        @workAreaJTreeJPanel.repaint()
        return newCanvasJPanel
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def duplicate(event)
        treeNode = event.getTreeNode()
        graphicItem = self.getGraphicItemHashMap().get(treeNode)
        if graphicItem != nil
            self.duplicateGraphicItem(graphicItem)
            @workAreaJTreeJPanel.updateTree()
            @workAreaJTreeJPanel.expand()
            @workAreaJTreeJPanel.repaint()
        end
    end
    

    def rotate(event)
        treeNode = event.getTreeNode()
        graphicItem = self.getGraphicItemHashMap().get(treeNode)
        if graphicItem != nil
            graphicItem.addAngle(event.getAngle())
        end
    end
    

    def getCanvasDimension()
        return @canvasDimension
    end
    

    def setCanvasDimension(canvasDimension)
        @canvasDimension = canvasDimension
    end
    

    def getGrid()
        return @grid
    end

    def self.frame()
        return defined?(@@frame) ? @@frame : nil
    end

    def self.frame=(value)
        @@frame = value
    end

    def self.gridColor()
        return defined?(@@gridColor) ? @@gridColor : nil
    end

    def self.gridColor=(value)
        @@gridColor = value
    end

    def self.backgroundColor()
        return defined?(@@backgroundColor) ? @@backgroundColor : nil
    end

    def self.backgroundColor=(value)
        @@backgroundColor = value
    end
end

require "java/util/HashMap"
require "org/allbinary/animation/VectorExplosionGenerator"
require "org/allbinary/animation/VectorMirrorGenerator"
require "org/allbinary/animation/vector/VectorCenterGenerator"
require "org/allbinary/game/input/GameInputStrings"
require "org/allbinary/graphics/GPoint"
require "org/allbinary/graphics/PointFactory"
require "org/allbinary/graphics/color/BasicColorFactory"
require "org/allbinary/graphics/j2me/GraphicsException"
require "org/allbinary/graphics/j2me/StatusFactory"
require "org/allbinary/graphics/j2me/workarea/WorkAreaJTreeJPanel"
require "org/allbinary/graphics/j2me/workarea/tools/GraphicItemFactory"
require "org/allbinary/graphics/j2me/workarea/tools/GraphicItemInterface"
require "org/allbinary/graphics/j2me/workarea/tools/LinesGraphicItem"
require "org/allbinary/graphics/j2me/workarea/tools/MouseStrings"
require "org/allbinary/graphics/j2me/workarea/tools/Points"
require "org/allbinary/graphics/j2me/workarea/tools/ToolFactory"
require "org/allbinary/graphics/j2me/workarea/tools/event/MyGraphicItemEvent"
require "org/allbinary/graphics/j2me/workarea/tools/event/MyGraphicItemEventService"
require "org/allbinary/graphics/pipeline/RandomRotationFactory"
require "org/allbinary/log/LOGGING"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/log/GuiLog"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/math/PositionStrings"
require "org/allbinary/string/CommonSeps"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/w3c/dom/Node"
require "org/allbinary/graphics/j2me/workarea/canvas/CanvasDom"
require "org/allbinary/graphics/j2me/workarea/canvas/CanvasTreeLabel"
require "org/allbinary/graphics/j2me/workarea/canvas/Grid"
require "org/allbinary/graphics/j2me/workarea/canvas/IntegerDimension"

class CanvasJPanel
    @@frame = 0
    @@gridColor = Color.new(BasicColorFactory.getInstance().WHITE.to_i)
    @@backgroundColor = Color.new(BasicColorFactory.getInstance().CLEAR_COLOR.to_i)
end

