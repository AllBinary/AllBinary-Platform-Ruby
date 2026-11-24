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

require "java/lang/JavaOverload"
require "java/lang/JavaClass"
# require "java/awt/Color"
# require "java/awt/Dimension"
# require "java/awt/Graphics"
# require "javax/swing/tree/DefaultMutableTreeNode"
# require "javax/swing/tree/MutableTreeNode"
require "org/allbinary/graphics/j2me/workarea/tools/event/MyGraphicItemEventListener"
# require "java/awt/GridLayout"
# require "java/awt/event/KeyEvent"
# require "java/awt/event/KeyListener"
# require "java/awt/event/MouseEvent"
# require "java/awt/event/MouseListener"
# require "java/awt/event/MouseMotionListener"
# require "javax/swing/JPanel"

module ::Org; module Allbinary; module Graphics; module J2me; module Workarea; module Canvas

class CanvasJPanel < JPanel
    include MouseListener
    include MouseMotionListener
    include KeyListener
    include ::Org::Allbinary::Graphics::J2me::Workarea::Tools::Event::MyGraphicItemEventListener
    attr_accessor :logUtil, :guiLog, :gameInputStrings, :selectedTool, :graphicItemHashMap, :canvasDimension, :angle, :canvasTreeNode, :frameLabel, :workAreaJTreeJPanel, :grid

    def jfields_org_allbinary_graphics_j2me_workarea_canvas_CanvasJPanel
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @guiLog = ::Org::Allbinary::Logic::Communication::Log::GuiLog.getInstance()
        @gameInputStrings = ::Org::Allbinary::Game::Input::GameInputStrings.getInstance()
        @selectedTool = nil
        @graphicItemHashMap = nil unless instance_variable_defined?(:@graphicItemHashMap)
        @canvasDimension = nil unless instance_variable_defined?(:@canvasDimension)
        @angle = 0.0
        @canvasTreeNode = nil unless instance_variable_defined?(:@canvasTreeNode)
        @frameLabel = nil unless instance_variable_defined?(:@frameLabel)
        @workAreaJTreeJPanel = nil unless instance_variable_defined?(:@workAreaJTreeJPanel)
        @grid = nil unless instance_variable_defined?(:@grid)
    end

    def initialize(*args)
        case args.length
        when 4 then jnew_org_allbinary_graphics_j2me_workarea_canvas_CanvasJPanel_4(*args)
        when 3 then jnew_org_allbinary_graphics_j2me_workarea_canvas_CanvasJPanel_3(*args)
        else raise ArgumentError, "No constructor of CanvasJPanel takes #{args.length} arguments"
        end
    end
    

    def jnew_org_allbinary_graphics_j2me_workarea_canvas_CanvasJPanel_4(workAreaJTreeJPanel, dimension, x, y)
        CanvasJPanel.superclass.instance_method(:initialize).bind(self).call()
        jfields_org_allbinary_graphics_j2me_workarea_canvas_CanvasJPanel
        @grid = Grid.new()
        begin
            @workAreaJTreeJPanel = workAreaJTreeJPanel
            self.initComponents()
            self.initMyComponents()
            self.setSize(dimension)
            self.setCanvasSize(x, y)
        rescue StandardError => e
            if ::Org::Allbinary::Log::LOGGING.contains(::Org::Allbinary::Log::LOGGING::GRAPHICSCREATION)
                @guiLog.put("Constructor Error", self, "contructor", e)
            end
        end
    end
    

    def jnew_org_allbinary_graphics_j2me_workarea_canvas_CanvasJPanel_3(workAreaJTreeJPanel, dimension, canvasDom)
        CanvasJPanel.superclass.instance_method(:initialize).bind(self).call()
        jfields_org_allbinary_graphics_j2me_workarea_canvas_CanvasJPanel
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
            if ::Org::Allbinary::Log::LOGGING.contains(::Org::Allbinary::Log::LOGGING::GRAPHICSCREATION)
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
        @graphicItemHashMap = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
        @grid.grid = ::Org::Allbinary::Graphics::PointFactory.getInstance().createXY(0, 0)
        self.setCanvasDimension(IntegerDimension.new(0, 0))
        @selectedTool = nil
        self.addKeyListener(self)
        self.addMouseListener(self)
        self.addMouseMotionListener(self)
        ::Org::Allbinary::Graphics::J2me::Workarea::Tools::Event::MyGraphicItemEventService.addListener(self)
    end
    java_overload :initMyComponents, 0
    

    def getTreeNode()
        return @canvasTreeNode
    end
    java_overload :getTreeNode, 0
    

    def initComponents()
        setLayout(GridLayout.new(1, 1))
    end
    java_overload :initComponents, 0
    

    # throws Exception
    def setCanvasSize(x, y)
        @grid.isGridPossible = true
        if x <= 0
            @grid.isGridPossible = false
            raise ::Org::Allbinary::Graphics::J2me::GraphicsException.new("X Size Error: " + (x).to_s, self, "setWorkAreaSize")
        end
        if y <= 0
            @grid.isGridPossible = false
            raise ::Org::Allbinary::Graphics::J2me::GraphicsException.new("Y Size Error: " + (y).to_s, self, "setWorkAreaSize")
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
    java_overload :setCanvasSize, 2
    

    def setGrid_j1(point)
        self.setGrid(point.getX(), point.getY())
    end
    

    def setGrid_j2(xSize, ySize)
        begin
            if xSize >= getCanvasDimension().getWidth() / 2 || xSize < 1
                raise ::Org::Allbinary::Graphics::J2me::GraphicsException.new("X Size Error: " + (xSize).to_s + " WorkArea X: " + (getCanvasDimension().getWidth()).to_s, self, "setGrid")
            end
            if ySize >= getCanvasDimension().getHeight() / 2 || ySize < 1
                raise ::Org::Allbinary::Graphics::J2me::GraphicsException.new("Y Size Error" + (ySize).to_s + " WorkArea Y: " + (getCanvasDimension().getHeight()).to_s, self, "setGrid")
            end
            @grid.grid = ::Org::Allbinary::Graphics::PointFactory.getInstance().createXY(xSize, ySize)
            @grid.isChanged = true
        rescue StandardError => e
        end
    end

    def setGrid(*java_overload_args)
        return setGrid_j1(*java_overload_args) if java_overload_args.length == 1
        return setGrid_j2(*java_overload_args) if java_overload_args.length == 2
        raise ArgumentError, "No method setGrid takes #{java_overload_args.length} arguments"
    end
    

    # throws Exception
    def setDefaultGrid()
        xPixelsPerWorkAreaPixel = self.getWidth() / self.getCanvasDimension().getWidth()
        yPixelsPerWorkAreaPixel = self.getHeight() / self.getCanvasDimension().getHeight()
        self.setGrid(1, 1)
        @grid.isChanged = true
    end
    java_overload :setDefaultGrid, 0
    

    def getAngle()
        return @angle
    end
    java_overload :getAngle, 0
    

    def setAngle(angle)
        @angle = angle
    end
    java_overload :setAngle, 1
    

    def addAngle(angle)
        self.setAngle(@angle + angle)
    end
    java_overload :addAngle, 1
    

    def explodeAll()
        newPoints = ::Org::Allbinary::Util::BasicArrayListD.new()
        graphicItemArray = self.getGraphicItemHashMap().keySet().toArray()
        size = graphicItemArray.length
        (0...size).each do |index|
            graphicItemNode = graphicItemArray[index]
            graphicItem = self.getGraphicItemHashMap().get(graphicItemNode)
            if graphicItem.getName() == ::Org::Allbinary::Graphics::J2me::Workarea::Tools::LinesGraphicItem.getStaticName()
                while graphicItem.getPointsInterface().getSize() > 2
                    newGraphicItem = ::Org::Allbinary::Graphics::J2me::Workarea::Tools::GraphicItemFactory.getInstance().getInstance(graphicItem.getName()).getInstance(self)
                    pointOne = ::Org::Allbinary::Graphics::GPoint.getInstance(graphicItem.removePoint())
                    pointTwo = ::Org::Allbinary::Graphics::GPoint.getInstance(graphicItem.removePoint())
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
    java_overload :explodeAll, 0
    

    # throws Exception
    def explode(howMuch, explosionType)
        graphicItemArray = self.getGraphicItemHashMap().keySet().toArray()
        size = graphicItemArray.length
        (0...size).each do |index|
            item = self.getGraphicItemHashMap().get(graphicItemArray[index])
            basicArrayList = ::Org::Allbinary::Animation::VectorExplosionGenerator.getInstance().createList(item.getPointsInterface().getPoints(), howMuch, ::Org::Allbinary::Animation::VectorExplosionGenerator.getInstance().RANDOM)
            newPoints = ::Org::Allbinary::Graphics::J2me::Workarea::Tools::Points.new()
            newPoints.addPoints(basicArrayList)
            item.setPointsInterface(newPoints)
            angleDelta = ::Org::Allbinary::Graphics::Pipeline::RandomRotationFactory.getInstance().getNextRandomAngle(howMuch)
            item.setAngle(angleDelta)
        end
        self.repaint()
    end
    java_overload :explode, 2
    

    # throws Exception
    def mirror()
        width = self.getCanvasDimension().getWidth()
        graphicItemArray = self.getGraphicItemHashMap().keySet().toArray()
        size = graphicItemArray.length
        (0...size).each do |index|
            item = self.getGraphicItemHashMap().get(graphicItemArray[index])
            basicArrayList = ::Org::Allbinary::Animation::VectorMirrorGenerator.getInstance().getInstance(item.getPointsInterface().getPoints(), width)
            newPoints = ::Org::Allbinary::Graphics::J2me::Workarea::Tools::Points.new()
            newPoints.addPoints(basicArrayList)
            item.setPointsInterface(newPoints)
        end
        self.repaint()
    end
    java_overload :mirror, 0
    

    # throws Exception
    def center()
        ::Org::Allbinary::Animation::Vector::VectorCenterGenerator.new().transform(self.getGraphicItemHashMap())
        self.repaint()
    end
    java_overload :center, 0
    

    def setNewTool()
        begin
            ::Org::Allbinary::Graphics::J2me::StatusFactory.getInstance().setStatus("Tool Selected")
            @selectedTool = ::Org::Allbinary::Graphics::J2me::Workarea::Tools::ToolFactory.getInstance().getSelectedToolFactory().getInstance(self)
            newNode = @selectedTool.getTreeNode()
            self.getGraphicItemHashMap().put(newNode, @selectedTool)
            @canvasTreeNode.add(newNode)
            if self.getSelectedTool() == nil
                raise ::Org::Allbinary::Graphics::J2me::GraphicsException.new("No Tool Selected", self, "setSelectedTool")
            end
        rescue StandardError => e
        end
    end
    java_overload :setNewTool, 0
    

    # throws Exception
    def duplicateGraphicItem(graphicItem)
        graphicItemClone = graphicItem.duplicate()
        self.getGraphicItemHashMap().put(graphicItemClone.getTreeNode(), graphicItemClone)
        @canvasTreeNode.add(graphicItemClone.getTreeNode())
    end
    java_overload :duplicateGraphicItem, 1
    

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
    java_overload :duplicateGraphicItemHashMap, 1
    

    def getGraphicItemHashMap()
        return @graphicItemHashMap
    end
    java_overload :getGraphicItemHashMap, 0
    

    def getXPixelsPerWorkAreaPixel()
        x = self.getGrid().grid.getX() * (self.getWidth() - 10) / self.getCanvasDimension().getWidth()
        if self.getGrid().getZoom() == 1
            return 1
        else
            return x
        end
    end
    java_overload :getXPixelsPerWorkAreaPixel, 0
    

    def getYPixelsPerWorkAreaPixel()
        y = self.getGrid().grid.getY() * (self.getHeight() - 10) / self.getCanvasDimension().getHeight()
        if self.getGrid().getZoom() == 1
            return 1
        else
            return y
        end
    end
    java_overload :getYPixelsPerWorkAreaPixel, 0
    

    def getSelectedTool()
        return @selectedTool
    end
    java_overload :getSelectedTool, 0
    

    def drawItems(graphics)
        angleDouble = @angle
        graphicItemArray = self.getGraphicItemHashMap().keySet().toArray()
        size = graphicItemArray.length
        (0...size).each do |index|
            item = self.getGraphicItemHashMap().get(graphicItemArray[index])
            item.paint(graphics, angleDouble, self.getCanvasDimension(), self.getXPixelsPerWorkAreaPixel(), self.getYPixelsPerWorkAreaPixel())
        end
    end
    java_overload :drawItems, 1
    

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
    java_overload :drawGrid, 1
    

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
    java_overload :paint, 1
    

    def repaint()
        if @grid != nil
            @grid.isChanged = true
        end
        CanvasJPanel.superclass.java_super_method(:repaint, 0).bind(self).call()
    end
    java_overload :repaint, 0
    

    # throws Exception
    def toDom()
        return CanvasDom.new(self).toDom()
    end
    java_overload :toDom, 0
    

    def changed()
        @grid.isChanged = true
    end
    java_overload :changed, 0
    

    def mouseClicked(mouseEvent)
        ::Org::Allbinary::Graphics::J2me::StatusFactory.getInstance().setStatusNoLog(::Org::Allbinary::Graphics::J2me::Workarea::Tools::MouseStrings.getInstance().MOUSE_CLICKED_LABEL + self.logMouseEvent(mouseEvent))
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
    java_overload :mouseClicked, 1
    

    def mouseEntered(mouseEvent)
        ::Org::Allbinary::Graphics::J2me::StatusFactory.getInstance().setStatusNoLog(self.logMouseEvent(mouseEvent))
    end
    java_overload :mouseEntered, 1
    

    def mouseExited(mouseEvent)
        ::Org::Allbinary::Graphics::J2me::StatusFactory.getInstance().setStatusNoLog(self.logMouseEvent(mouseEvent))
    end
    java_overload :mouseExited, 1
    

    def mousePressed(mouseEvent)
        ::Org::Allbinary::Graphics::J2me::StatusFactory.getInstance().setStatusNoLog(::Org::Allbinary::Graphics::J2me::Workarea::Tools::MouseStrings.getInstance().MOUSE_PRESSED_LABEL + self.logMouseEvent(mouseEvent))
        if self.getSelectedTool() != nil
            graphicItem = self.getSelectedTool()
            graphicItem.mousePressed(mouseEvent, self.getXPixelsPerWorkAreaPixel(), self.getYPixelsPerWorkAreaPixel())
        end
        self.requestFocus()
        @grid.isChanged = true
        self.repaint()
    end
    java_overload :mousePressed, 1
    

    def mouseReleased(mouseEvent)
        ::Org::Allbinary::Graphics::J2me::StatusFactory.getInstance().setStatusNoLog(::Org::Allbinary::Graphics::J2me::Workarea::Tools::MouseStrings.getInstance().MOUSE_RELEASED_LABEL + self.logMouseEvent(mouseEvent))
        graphicItem = self.getSelectedTool()
        if graphicItem != nil
            graphicItem.mouseReleased(mouseEvent, self.getXPixelsPerWorkAreaPixel(), self.getYPixelsPerWorkAreaPixel())
        end
        self.requestFocus()
        @grid.isChanged = true
        self.repaint()
    end
    java_overload :mouseReleased, 1
    

    def mouseDragged(mouseEvent)
        ::Org::Allbinary::Graphics::J2me::StatusFactory.getInstance().setStatusNoLog(::Org::Allbinary::Graphics::J2me::Workarea::Tools::MouseStrings.getInstance().MOUSE_DRAGGED_LABEL + self.logMouseEvent(mouseEvent))
        graphicItem = self.getSelectedTool()
        if graphicItem != nil
            graphicItem.mouseDragged(mouseEvent, self.getXPixelsPerWorkAreaPixel(), self.getYPixelsPerWorkAreaPixel())
        end
        self.requestFocus()
        @grid.isChanged = true
        self.repaint()
    end
    java_overload :mouseDragged, 1
    

    def mouseMoved(mouseEvent)
        ::Org::Allbinary::Graphics::J2me::StatusFactory.getInstance().setStatusNoLog(::Org::Allbinary::Graphics::J2me::Workarea::Tools::MouseStrings.getInstance().MOUSE_MOVED_LABEL + self.logMouseEvent(mouseEvent))
        if self.getSelectedTool() != nil && self.getSelectedTool().isActive()
            graphicItem = self.getSelectedTool()
            graphicItem.mouseMoved(mouseEvent, self.getXPixelsPerWorkAreaPixel(), self.getYPixelsPerWorkAreaPixel())
        end
        self.requestFocus()
        @grid.isChanged = true
        self.repaint()
    end
    java_overload :mouseMoved, 1
    

    def logMouseEvent(mouseEvent)
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append(::Org::Allbinary::MathPackage::PositionStrings.getInstance().X_LABEL)
        stringBuffer.appendint(((mouseEvent.getX() / self.getXPixelsPerWorkAreaPixel()).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }))
        stringBuffer.append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().SPACE)
        stringBuffer.append(::Org::Allbinary::MathPackage::PositionStrings.getInstance().Y_LABEL)
        stringBuffer.appendint(((mouseEvent.getY() / self.getYPixelsPerWorkAreaPixel()).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }))
        return stringBuffer.to_s
    end
    java_overload :logMouseEvent, 1
    

    def keyPressed(keyEvent)
        ::Org::Allbinary::Graphics::J2me::StatusFactory.getInstance().setStatus("Key Pressed")
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
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
            @logUtil.put(commonStrings.EXCEPTION, self, @gameInputStrings.KEY_PRESSED, e)
        end
        if self.getSelectedTool() != nil && self.getSelectedTool().isActive()
            ::Org::Allbinary::Graphics::J2me::StatusFactory.getInstance().setStatus("Key Pressed for Tool")
            graphicItem = self.getSelectedTool()
            graphicItem.keyPressed(keyEvent)
        else
            self.setNewTool()
        end
        @grid.isChanged = true
        self.repaint()
    end
    java_overload :keyPressed, 1
    

    def keyReleased(keyEvent)
    end
    java_overload :keyReleased, 1
    

    def keyTyped(keyEvent)
    end
    java_overload :keyTyped, 1
    

    def delete(evt)
        self.getGraphicItemHashMap().remove(evt.getTreeNode())
        @workAreaJTreeJPanel.updateTree()
        @workAreaJTreeJPanel.expand()
        @workAreaJTreeJPanel.repaint()
    end
    java_overload :delete, 1
    

    def deselect(evt)
        graphicItemInterface = self.getGraphicItemHashMap().get(evt.getTreeNode())
        if graphicItemInterface != nil
            graphicItemInterface.setColor(Color::WHITE)
            graphicItemInterface.deactivate()
            @workAreaJTreeJPanel.repaint()
        end
    end
    java_overload :deselect, 1
    

    def highlight(evt)
        graphicItemInterface = self.getGraphicItemHashMap().get(evt.getTreeNode())
        if graphicItemInterface != nil
            graphicItemInterface.setColor(Color::YELLOW)
            graphicItemInterface.activate()
            @workAreaJTreeJPanel.repaint()
        end
    end
    java_overload :highlight, 1
    

    # throws Exception
    def duplicate_j0()
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
    def duplicate_j1(event)
        treeNode = event.getTreeNode()
        graphicItem = self.getGraphicItemHashMap().get(treeNode)
        if graphicItem != nil
            self.duplicateGraphicItem(graphicItem)
            @workAreaJTreeJPanel.updateTree()
            @workAreaJTreeJPanel.expand()
            @workAreaJTreeJPanel.repaint()
        end
    end

    def duplicate(*java_overload_args)
        return duplicate_j0(*java_overload_args) if java_overload_args.length == 0
        return duplicate_j1(*java_overload_args) if java_overload_args.length == 1
        raise ArgumentError, "No method duplicate takes #{java_overload_args.length} arguments"
    end
    

    def rotate(event)
        treeNode = event.getTreeNode()
        graphicItem = self.getGraphicItemHashMap().get(treeNode)
        if graphicItem != nil
            graphicItem.addAngle(event.getAngle())
        end
    end
    java_overload :rotate, 1
    

    def getCanvasDimension()
        return @canvasDimension
    end
    java_overload :getCanvasDimension, 0
    

    def setCanvasDimension(canvasDimension)
        @canvasDimension = canvasDimension
    end
    java_overload :setCanvasDimension, 1
    

    def getGrid()
        return @grid
    end
    java_overload :getGrid, 0

    def self.frame()
        CanvasJPanel.java_static_fields unless @java_static_fields_started
        return defined?(@@frame) ? @@frame : nil
    end

    def self.frame=(value)
        CanvasJPanel.java_static_fields unless @java_static_fields_started
        @@frame = value
    end

    def self.gridColor()
        CanvasJPanel.java_static_fields unless @java_static_fields_started
        return defined?(@@gridColor) ? @@gridColor : nil
    end

    def self.gridColor=(value)
        CanvasJPanel.java_static_fields unless @java_static_fields_started
        @@gridColor = value
    end

    def self.backgroundColor()
        CanvasJPanel.java_static_fields unless @java_static_fields_started
        return defined?(@@backgroundColor) ? @@backgroundColor : nil
    end

    def self.backgroundColor=(value)
        CanvasJPanel.java_static_fields unless @java_static_fields_started
        @@backgroundColor = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        @@frame = 0
        begin
            @@gridColor = Color.new(::Org::Allbinary::Graphics::Color::BasicColorFactory.getInstance().WHITE.to_i)
            @@backgroundColor = Color.new(::Org::Allbinary::Graphics::Color::BasicColorFactory.getInstance().CLEAR_COLOR.to_i)
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "CanvasJPanel"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Animation; autoload :VectorExplosionGenerator, "org/allbinary/animation/VectorExplosionGenerator" unless const_defined?(:VectorExplosionGenerator, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :VectorMirrorGenerator, "org/allbinary/animation/VectorMirrorGenerator" unless const_defined?(:VectorMirrorGenerator, false); end; end; end
module ::Org; module Allbinary; module Animation; module Vector; autoload :VectorCenterGenerator, "org/allbinary/animation/vector/VectorCenterGenerator" unless const_defined?(:VectorCenterGenerator, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Input; autoload :GameInputStrings, "org/allbinary/game/input/GameInputStrings" unless const_defined?(:GameInputStrings, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; autoload :GPoint, "org/allbinary/graphics/GPoint" unless const_defined?(:GPoint, false); end; end; end
module ::Org; module Allbinary; module Graphics; autoload :PointFactory, "org/allbinary/graphics/PointFactory" unless const_defined?(:PointFactory, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColorFactory, "org/allbinary/graphics/color/BasicColorFactory" unless const_defined?(:BasicColorFactory, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module J2me; autoload :GraphicsException, "org/allbinary/graphics/j2me/GraphicsException" unless const_defined?(:GraphicsException, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module J2me; autoload :StatusFactory, "org/allbinary/graphics/j2me/StatusFactory" unless const_defined?(:StatusFactory, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module J2me; module Workarea; autoload :WorkAreaJTreeJPanel, "org/allbinary/graphics/j2me/workarea/WorkAreaJTreeJPanel" unless const_defined?(:WorkAreaJTreeJPanel, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module J2me; module Workarea; module Tools; autoload :GraphicItemFactory, "org/allbinary/graphics/j2me/workarea/tools/GraphicItemFactory" unless const_defined?(:GraphicItemFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module J2me; module Workarea; module Tools; autoload :GraphicItemInterface, "org/allbinary/graphics/j2me/workarea/tools/GraphicItemInterface" unless const_defined?(:GraphicItemInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module J2me; module Workarea; module Tools; autoload :LinesGraphicItem, "org/allbinary/graphics/j2me/workarea/tools/LinesGraphicItem" unless const_defined?(:LinesGraphicItem, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module J2me; module Workarea; module Tools; autoload :MouseStrings, "org/allbinary/graphics/j2me/workarea/tools/MouseStrings" unless const_defined?(:MouseStrings, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module J2me; module Workarea; module Tools; autoload :Points, "org/allbinary/graphics/j2me/workarea/tools/Points" unless const_defined?(:Points, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module J2me; module Workarea; module Tools; autoload :ToolFactory, "org/allbinary/graphics/j2me/workarea/tools/ToolFactory" unless const_defined?(:ToolFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module J2me; module Workarea; module Tools; module Event; autoload :MyGraphicItemEvent, "org/allbinary/graphics/j2me/workarea/tools/event/MyGraphicItemEvent" unless const_defined?(:MyGraphicItemEvent, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module J2me; module Workarea; module Tools; module Event; autoload :MyGraphicItemEventService, "org/allbinary/graphics/j2me/workarea/tools/event/MyGraphicItemEventService" unless const_defined?(:MyGraphicItemEventService, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Pipeline; autoload :RandomRotationFactory, "org/allbinary/graphics/pipeline/RandomRotationFactory" unless const_defined?(:RandomRotationFactory, false); end; end; end; end
module ::Org; module Allbinary; module Log; autoload :LOGGING, "org/allbinary/log/LOGGING" unless const_defined?(:LOGGING, false); end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :GuiLog, "org/allbinary/logic/communication/log/GuiLog" unless const_defined?(:GuiLog, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module MathPackage; autoload :PositionStrings, "org/allbinary/math/PositionStrings" unless const_defined?(:PositionStrings, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
autoload :CanvasDom, "org/allbinary/graphics/j2me/workarea/canvas/CanvasDom" unless const_defined?(:CanvasDom, false)
autoload :CanvasTreeLabel, "org/allbinary/graphics/j2me/workarea/canvas/CanvasTreeLabel" unless const_defined?(:CanvasTreeLabel, false)
autoload :Grid, "org/allbinary/graphics/j2me/workarea/canvas/Grid" unless const_defined?(:Grid, false)
autoload :IntegerDimension, "org/allbinary/graphics/j2me/workarea/canvas/IntegerDimension" unless const_defined?(:IntegerDimension, false)

begin
    CanvasJPanel.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end

