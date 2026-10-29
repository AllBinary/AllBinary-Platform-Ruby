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
# package org.allbinary.graphics.j2me.workarea

require "java/lang/Object"
# require "java/awt"
# require "java/util/EventListener"
# require "java/util/LinkedList"
# require "javax/swing"
# require "javax/swing/tree/MutableTreeNode"
require "org/allbinary/graphics/j2me/workarea/canvas/event/MyCanvasEventListener"
require "org/allbinary/graphics/j2me/workarea/WorkAreaJPanelInterface"
require "java/lang/Runnable"

class WorkAreaJPanel < JPanel
    include WorkAreaJPanelInterface
    include MyCanvasEventListener
    include EventListener
    include Runnable
    attr_accessor :logUtil, :canvasJPanelList, :canvasHolderJPanel, :name, :selectedFrame, :propertiesJPanel, :workAreaJTreeJPanel, :isPlaying, :innerJPanel

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @canvasJPanelList = nil
        @canvasHolderJPanel = nil
        @name = nil
        @selectedFrame = 0
        @propertiesJPanel = nil
        @workAreaJTreeJPanel = nil
        @isPlaying = false
        @innerJPanel = nil
    end

    def initialize(*args)
        case args.length
        when 4 then constructor4(*args)
        when 2 then constructor2(*args)
        end
    end
    

    def constructor4(name, dimension, x, y)
        method(:initialize).super_method.call()
        initialize_fields
        begin
            self.initComponents()
            @name = name
            self.initMyComponents(dimension)
            @workAreaJTreeJPanel = WorkAreaJTreeJPanel.new(@name)
            canvasJPanel = CanvasJPanel.new(@workAreaJTreeJPanel, self.getSize(), x, y)
            @canvasJPanelList.add(canvasJPanel)
            @selectedFrame = 0
            @propertiesJPanel.set(@workAreaJTreeJPanel)
            @canvasHolderJPanel.add(canvasJPanel)
        rescue StandardError => e
            raise e
        end
    end
    

    def constructor2(workAreaDom, dimension)
        method(:initialize).super_method.call()
        initialize_fields
        begin
            self.initComponents()
            @name = workAreaDom.getName()
            self.initMyComponents(dimension)
            canvasNodeList = workAreaDom.getCanvasNodes()
            numberOfFrames = canvasNodeList.size()
            (0...numberOfFrames).each do |index|
                node = canvasNodeList.get(index)
                canvasJPanel = CanvasJPanel.new(@workAreaJTreeJPanel, self.getSize(), CanvasDom.new(node))
                @canvasJPanelList.add(canvasJPanel)
            end
            @selectedFrame = 0
            @canvasHolderJPanel.add(self.getCurrentFrame())
            @propertiesJPanel.set(@workAreaJTreeJPanel)
        rescue StandardError => e
            if LOGGING.contains(LOGGING.LOADINGERROR)
                @logUtil.put("Constructor Error", self, "WorkAreaJPanel", e)
            end
            raise e
        end
    end
    

    def initMyComponents(dimension)
        @workAreaJTreeJPanel = WorkAreaJTreeJPanel.new(@name)
        @canvasHolderJPanel = JPanel.new()
        @canvasHolderJPanel.setSize(dimension)
        @canvasHolderJPanel.setLayout(GridLayout.new(1, 1))
        self.setSize(dimension)
        @canvasJPanelList = LinkedList.new()
        gridBagLayout = GridBagLayout.new()
        gridBagConstraints = GridBagConstraints.new()
        @innerJPanel.setLayout(gridBagLayout)
        gridBagConstraints.gridx = 0
        gridBagConstraints.gridy = 0
        gridBagConstraints.gridwidth = 1
        gridBagConstraints.fill = java.awt.GridBagConstraints.BOTH
        gridBagConstraints.weightx = .05
        gridBagConstraints.weighty = .05
        toolJPanel = ToolJPanel.new()
        gridBagLayout.setConstraints(toolJPanel, gridBagConstraints)
        @innerJPanel.add(toolJPanel)
        gridBagConstraints = GridBagConstraints.new()
        gridBagConstraints.gridx = 1
        gridBagConstraints.gridy = 0
        gridBagConstraints.gridwidth = 6
        gridBagConstraints.fill = java.awt.GridBagConstraints.BOTH
        gridBagConstraints.weightx = 1
        gridBagConstraints.weighty = 1
        gridBagLayout.setConstraints(@canvasHolderJPanel, gridBagConstraints)
        @innerJPanel.add(@canvasHolderJPanel)
        gridBagConstraints = GridBagConstraints.new()
        gridBagConstraints.gridx = 8
        gridBagConstraints.gridy = 0
        gridBagConstraints.gridwidth = java.awt.GridBagConstraints.REMAINDER
        gridBagConstraints.fill = java.awt.GridBagConstraints.BOTH
        gridBagConstraints.weightx = .1
        gridBagConstraints.weighty = .1
        @propertiesJPanel = PropertiesJPanel.new()
        gridBagLayout.setConstraints(@propertiesJPanel, gridBagConstraints)
        @innerJPanel.add(@propertiesJPanel)
        MyCanvasEventService.addListener(self)
    end
    

    def getCanvasHashMap()
        canvasJPanelHashMap = StdUtil.getInstance().createHashMap()
        size = @canvasJPanelList.size()
        (0...size).each do |index|
            canvasJPanel = @canvasJPanelList.get(index)
            canvasJPanelHashMap.put(canvasJPanel.getTreeNode(), index)
        end
        return canvasJPanelHashMap
    end
    

    def play()
        java_monitor.synchronize do
        @isPlaying = true
        end
    end
    

    def stop()
        java_monitor.synchronize do
        @isPlaying = false
        end
    end
    

    def isPlaying()
        java_monitor.synchronize do
        return @isPlaying
        end
    end
    

    def getName()
        return @name
    end
    

    def setName(value)
        @name = value
    end
    

    def disableCanvas()
        @canvasHolderJPanel.removeAll()
    end
    

    def enableCanvas()
        @canvasHolderJPanel.add(self.getCurrentFrame())
    end
    

    def deselect()
        self.class.superclass.instance_method(:setVisible).bind(self).call(false)
    end
    

    def select()
        self.class.superclass.instance_method(:setVisible).bind(self).call(true)
        if @canvasHolderJPanel.getComponentCount() == 1
            component = @canvasHolderJPanel.getComponent(0)
            if component != nil
                component.repaint()
            end
        end
    end
    

    def changeZoom(factor)
        size = @canvasJPanelList.size()
        (0...size).each do |index|
            canvasJPanel = @canvasJPanelList.get(index)
            canvasJPanel.getGrid().setZoom(canvasJPanel.getGrid().getZoom() + factor)
        end
    end
    

    def getCurrentFrame()
        return @canvasJPanelList.get(@selectedFrame)
    end
    

    def initDuplicate(newCanvasJPanel)
        if newCanvasJPanel != nil
            @canvasJPanelList.add(newCanvasJPanel)
            self.select(@canvasJPanelList.size() - 1)
        end
    end
    

    # throws Exception
    def duplicate(treeNode)
        canvasJPanelHashMap = self.getCanvasHashMap()
        if canvasJPanelHashMap.containsKey(treeNode)
            frameInteger = canvasJPanelHashMap.get(treeNode)
            canvasJPanel = @canvasJPanelList.get(frameInteger.to_i)
            self.initDuplicate(canvasJPanel.duplicate())
        end
    end
    

    # throws Exception
    def autoRotate(increments, totalAngle)
        incrementAngle = (totalAngle / increments)
        (1...increments).each do |index|
            canvasJPanel = self.getCurrentFrame()
            newCanvasJPanel = canvasJPanel.duplicate()
            newCanvasJPanel.setAngle(incrementAngle * index)
            self.initDuplicate(newCanvasJPanel)
        end
    end
    

    def explodeAll()
        canvasJPanel = self.getCurrentFrame()
        canvasJPanel.explodeAll()
    end
    

    # throws Exception
    def autoExplode(numberOfFrames, explodeType)
        (1...numberOfFrames).each do |index|
            canvasJPanel = self.getCurrentFrame()
            newCanvasJPanel = canvasJPanel.duplicate()
            newCanvasJPanel.explode(index + 1, explodeType)
            self.initDuplicate(newCanvasJPanel)
        end
    end
    

    # throws Exception
    def autoMirror()
        canvasJPanel = self.getCurrentFrame()
        newCanvasJPanel = canvasJPanel.duplicate()
        newCanvasJPanel.mirror()
        self.initDuplicate(newCanvasJPanel)
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def select(index)
        java_monitor.synchronize do
        if index < @canvasJPanelList.size()
            canvasJPanel = @canvasJPanelList.get(index)
            if canvasJPanel != nil
                @canvasHolderJPanel.removeAll()
                @canvasHolderJPanel.add(canvasJPanel)
                @selectedFrame = index
                canvasJPanel.changed()
                @canvasHolderJPanel.repaint()
                canvasJPanel.repaint()
            end
        end
        end
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def select(treeNode)
        canvasJPanelHashMap = self.getCanvasHashMap()
        frameInteger = canvasJPanelHashMap.get(treeNode)
        if frameInteger != nil
            self.select(frameInteger.to_i)
        end
    end
    

    def self.getDocument()
        return WorkAreaJPanel.document
    end
    

    # throws Exception
    def toDocument()
        WorkAreaJPanel.document = DomHelper.getInstance().createDocument()
        workAreaNode = WorkAreaJPanel.document.createElement(WorkAreaDom::WORKAREA)
        nameNode = WorkAreaJPanel.document.createElement(WorkAreaDom::NAME)
        nameTextNode = WorkAreaJPanel.document.createTextNode(@name)
        nameNode.appendChild(nameTextNode)
        framesNode = WorkAreaJPanel.document.createElement(WorkAreaDom::FRAMES)
        size = @canvasJPanelList.size()
        (0...size).each do |index|
            canvasJPanel = @canvasJPanelList.get(index)
            framesNode.appendChild(canvasJPanel.toDom())
        end
        workAreaNode.appendChild(nameNode)
        workAreaNode.appendChild(framesNode)
        WorkAreaJPanel.document.appendChild(workAreaNode)
        return @@document
    end
    

    def initComponents()
        @innerJPanel = JPanel.new()
        setLayout(GridLayout.new(1, 1))
        @innerJPanel.addKeyListener(Class.new(KeyAdapter.is_a?(Class) ? KeyAdapter : Object) do
            include(KeyAdapter) unless KeyAdapter.is_a?(Class)
            

            def keyTyped(evt)
                innerJPanelKeyTyped(evt)
            end
            

            def keyPressed(evt)
                innerJPanelKeyPressed(evt)
            end
            

            def keyReleased(evt)
                innerJPanelKeyReleased(evt)
            end
        end.new())
        add(@innerJPanel)
    end
    

    def innerJPanelKeyReleased(evt)
        StatusFactory.getInstance().setStatus("Key Pressed1")
    end
    

    def innerJPanelKeyPressed(evt)
        StatusFactory.getInstance().setStatus("Key Pressed2")
    end
    

    def innerJPanelKeyTyped(evt)
        StatusFactory.getInstance().setStatus("Key Pressed3")
    end
    

    def keyPressed(keyEvent)
        self.getCurrentFrame().keyPressed(keyEvent)
    end
    

    def keyReleased(keyEvent)
    end
    

    def keyTyped(keyEvent)
    end
    

    def delete(evt)
        canvasJPanelHashMap = self.getCanvasHashMap()
        if canvasJPanelHashMap.containsKey(evt.getTreeNode())
            @canvasHolderJPanel.removeAll()
            frameInt = canvasJPanelHashMap.get(evt.getTreeNode())
            @canvasJPanelList.remove(frameInt.to_i)
            self.select(frameInt.to_i)
        end
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def duplicate(evt)
        self.duplicate(evt.getTreeNode())
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def select(evt)
        self.select(evt.getTreeNode())
        StatusFactory.getInstance().setStatus("Frame Selected")
    end
    

    def rotate(evt)
        canvasJPanelHashMap = self.getCanvasHashMap()
        treeNode = evt.getTreeNode()
        frameInt = canvasJPanelHashMap.get(evt.getTreeNode())
        canvasJPanel = @canvasJPanelList.get(frameInt.to_i)
        if canvasJPanel != nil
            canvasJPanel.addAngle(evt.getAngle())
            self.select(frameInt.to_i)
        end
        StatusFactory.getInstance().setStatus("Canvas Rotated")
    end
    

    def explode(evt)
        self.explodeAll()
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def autoExplode(evt)
        self.autoExplode(10, 0)
    end
    

    # throws Exception
    def center()
        canvasJPanel = self.getCurrentFrame()
        canvasJPanel.center()
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def center(evt)
        self.center()
    end
    

    def run()
        begin
            while true
                if self.isPlaying()
                    size = @canvasJPanelList.size()
                    (0...size).each do |index|
                        if !self.isPlaying()
                            break
                        end
                        self.select(index)
                        sleep((100) / 1000.0)
                    end
                else
                    sleep((500) / 1000.0)
                end
                sleep((250) / 1000.0)
            end
        rescue StandardError => e
        end
    end

    def self.document()
        return defined?(@@document) ? @@document : nil
    end

    def self.document=(value)
        @@document = value
    end
end

require "java/util/HashMap"
require "org/allbinary/dom/DomHelper"
require "org/allbinary/graphics/j2me/StatusFactory"
require "org/allbinary/graphics/j2me/workarea/canvas/CanvasDom"
require "org/allbinary/graphics/j2me/workarea/canvas/CanvasJPanel"
require "org/allbinary/graphics/j2me/workarea/canvas/event/MyCanvasEvent"
require "org/allbinary/graphics/j2me/workarea/canvas/event/MyCanvasEventService"
require "org/allbinary/graphics/j2me/workarea/properties/PropertiesJPanel"
require "org/allbinary/graphics/j2me/workarea/tools/ToolJPanel"
require "org/allbinary/log/LOGGING"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/util/BasicArrayList"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"
require "org/allbinary/graphics/j2me/workarea/WorkAreaDom"
require "org/allbinary/graphics/j2me/workarea/WorkAreaJTreeJPanel"
require "java/lang/Thread"

class WorkAreaJPanel
    @@document = nil
end

