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

# require "javax/swing"
# require "javax/swing/tree/DefaultMutableTreeNode"
# require "javax/swing/tree/MutableTreeNode"
# require "javax/swing/tree/TreePath"

class WorkAreaJTreeJPanel < JPanel
    attr_accessor :logUtil, :commonStrings, :rootTreeNode, :workAreaJTree, :highlightedBasicArrayList, :copyJMenuItem, :deleteJMenuItem, :itemJPopupMenu, :itemJScrollPane1, :rotateJMenuItem, :workAreaPropertiesJPanel

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @rootTreeNode = nil
        @workAreaJTree = nil
        @highlightedBasicArrayList = nil
        @copyJMenuItem = nil
        @deleteJMenuItem = nil
        @itemJPopupMenu = nil
        @itemJScrollPane1 = nil
        @rotateJMenuItem = nil
        @workAreaPropertiesJPanel = nil
    end
    

    def initialize(workAreaName)
        super()
        initialize_fields
        self.initComponents()
        @rootTreeNode = DefaultMutableTreeNode.new(workAreaName)
        @workAreaPropertiesJPanel.removeAll()
        self.updateTree()
        @highlightedBasicArrayList = BasicArrayListD.new()
    end
    

    def add(treeNode)
        @rootTreeNode.add(treeNode)
    end
    

    def updateTree()
        @workAreaJTree = JTree.new(@rootTreeNode)
        @workAreaJTree.addMouseListener(Class.new(MouseAdapter.is_a?(Class) ? MouseAdapter : Object) do
            include(MouseAdapter) unless MouseAdapter.is_a?(Class)
            

            def mousePressed(evt)
                workAreaJTreeMousePressed(evt)
            end
        end.new())
        @workAreaPropertiesJPanel.removeAll()
        @workAreaPropertiesJPanel.add(@workAreaJTree)
    end
    

    def getNode(treePathArray)
        basicArrayList = BasicArrayListD.new()
        if treePathArray != nil
            (0...treePathArray.length).each do |index|
                basicArrayList.add(self.getNode(treePathArray[index]))
            end
        end
        return basicArrayList
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def getNode(treePath)
        if treePath != nil
            obj = treePath.getPath()
            if obj != nil
                node = obj[obj.length - 1]
                return node
            end
        end
        return nil
    end
    

    # throws Exception
    def deselectAll()
        size = @highlightedBasicArrayList.size()
        @logUtil.putF("size: " + (size).to_s, self, "deselectAll")
        (0...size).each do |index|
            node = @highlightedBasicArrayList.get(index)
            MyGraphicItemEventService.fire(MyGraphicItemEvent.new(MyGraphicItemEventSource.new(MyGraphicItemEventService::DESELECT, node)))
        end
        @highlightedBasicArrayList.clear()
    end
    

    # throws Exception
    def selectGraphicItem(node)
        @highlightedBasicArrayList.add(node)
        MyGraphicItemEventService.fire(MyGraphicItemEvent.new(MyGraphicItemEventSource.new(MyGraphicItemEventService::SELECT, node)))
    end
    

    # throws Exception
    def removeGraphicItem(node)
        MyGraphicItemEventService.fire(MyGraphicItemEvent.new(MyGraphicItemEventSource.new(MyGraphicItemEventService::DELETE, node)))
    end
    

    # throws Exception
    def removeCanvas(node)
        MyCanvasEventService.fire(MyCanvasEvent.new(MyCanvasEventSource.new(MyCanvasEventService::DELETE, node)))
    end
    

    # throws Exception
    def remove(treePath)
        node = self.getNode(treePath)
        if node != nil
            if node.getUserObject().is_a?(CanvasTreeLabel)
                self.removeCanvas(node)
            else
                self.removeGraphicItem(node)
            end
        end
        parent = node.getParent()
        parent.remove(node)
    end
    

    # throws Exception
    def copy()
        treePath = @workAreaJTree.getSelectionPath()
        self.copy(treePath)
        self.updateTree()
        self.expand()
        self.repaint()
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def copy(treePath)
        node = self.getNode(treePath)
        if node != nil
            if node.getUserObject().is_a?(CanvasTreeLabel)
                MyCanvasEventService.fire(MyCanvasEvent.new(MyCanvasEventSource.new(MyCanvasEventService::DUPLICATE, node)))
            else
                MyGraphicItemEventService.fire(MyGraphicItemEvent.new(MyGraphicItemEventSource.new(MyGraphicItemEventService::DUPLICATE, node)))
            end
        end
    end
    

    # throws Exception
    def rotate(treePath, angle)
        node = self.getNode(treePath)
        if node != nil
            if node.getUserObject().is_a?(CanvasTreeLabel)
                MyCanvasEventService.fire(MyCanvasEvent.new(MyCanvasEventSource.new(MyCanvasEventService::ROTATE, angle, node)))
            else
                MyGraphicItemEventService.fire(MyGraphicItemEvent.new(MyGraphicItemEventSource.new(MyGraphicItemEventService::ROTATE, angle, node)))
            end
        end
    end
    

    def getRootTreeNode()
        return @rootTreeNode
    end
    

    def expand()
        @workAreaJTree.expandRow(0)
        @workAreaJTree.expandRow(1)
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def expand(treePath)
        @workAreaJTree.expandPath(treePath)
    end
    

    def initComponents()
        @itemJPopupMenu = JPopupMenu.new()
        @deleteJMenuItem = JMenuItem.new()
        @copyJMenuItem = JMenuItem.new()
        @rotateJMenuItem = JMenuItem.new()
        @itemJScrollPane1 = JScrollPane.new()
        @workAreaPropertiesJPanel = JPanel.new()
        @itemJPopupMenu.addPopupMenuListener(Class.new(PopupMenuListener.is_a?(Class) ? PopupMenuListener : Object) do
            include(PopupMenuListener) unless PopupMenuListener.is_a?(Class)
            

            def popupMenuCanceled(evt)
            end
            

            def popupMenuWillBecomeInvisible(evt)
                itemJPopupMenuPopupMenuWillBecomeInvisible(evt)
            end
            

            def popupMenuWillBecomeVisible(evt)
                itemJPopupMenuPopupMenuWillBecomeVisible(evt)
            end
        end.new())
        @deleteJMenuItem.setText("Delete")
        @deleteJMenuItem.addMouseListener(Class.new(MouseAdapter.is_a?(Class) ? MouseAdapter : Object) do
            include(MouseAdapter) unless MouseAdapter.is_a?(Class)
            

            def mousePressed(evt)
                deleteJMenuItemMousePressed(evt)
            end
        end.new())
        @itemJPopupMenu.add(@deleteJMenuItem)
        @copyJMenuItem.setText("Copy")
        @copyJMenuItem.addMouseListener(Class.new(MouseAdapter.is_a?(Class) ? MouseAdapter : Object) do
            include(MouseAdapter) unless MouseAdapter.is_a?(Class)
            

            def mousePressed(evt)
                copyJMenuItemMousePressed(evt)
            end
        end.new())
        @itemJPopupMenu.add(@copyJMenuItem)
        @rotateJMenuItem.setText("Rotate 45*")
        @rotateJMenuItem.addMouseListener(Class.new(MouseAdapter.is_a?(Class) ? MouseAdapter : Object) do
            include(MouseAdapter) unless MouseAdapter.is_a?(Class)
            

            def mousePressed(evt)
                rotateJMenuItemMousePressed(evt)
            end
        end.new())
        @itemJPopupMenu.add(@rotateJMenuItem)
        setLayout(GridLayout.new(1, 1))
        @workAreaPropertiesJPanel.addMouseListener(Class.new(MouseAdapter.is_a?(Class) ? MouseAdapter : Object) do
            include(MouseAdapter) unless MouseAdapter.is_a?(Class)
            

            def mousePressed(evt)
                workAreaPropertiesJPanelMousePressed(evt)
            end
        end.new())
        @workAreaPropertiesJPanel.setLayout(GridLayout.new(1, 0))
        @itemJScrollPane1.setViewportView(@workAreaPropertiesJPanel)
        add(@itemJScrollPane1)
    end
    

    def rotateJMenuItemMousePressed(evt)
        begin
            treePath = @workAreaJTree.getSelectionPath()
            self.rotate(treePath, 45)
            self.updateTree()
            self.expand()
            self.repaint()
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "rotateJMenuItemMousePressed", e)
        end
    end
    

    def workAreaJTreeMousePressed(evt)
        begin
            selectedTreePathArray = @workAreaJTree.getSelectionPaths()
            list = self.getNode(selectedTreePathArray)
            if list.size() > 0
                if (evt.getModifiers() & evt.BUTTON3_MASK) == evt.BUTTON3_MASK
                    (0...selectedTreePathArray.length).each do |index|
                        defaultMutableTreeNode = list.get(index)
                        if defaultMutableTreeNode.getUserObject().is_a?(CanvasTreeLabel)
                            @itemJPopupMenu.show(self, evt.getX(), evt.getY())
                        else
                            @itemJPopupMenu.show(self, evt.getX(), evt.getY())
                        end
                    end
                end
                if (evt.getModifiers() & evt.BUTTON1_MASK) == evt.BUTTON1_MASK
                    self.deselectAll()
                    (0...selectedTreePathArray.length).each do |index|
                        defaultMutableTreeNode = list.get(index)
                        if defaultMutableTreeNode.getUserObject().is_a?(CanvasTreeLabel)
                            MyCanvasEventService.fire(MyCanvasEvent.new(MyCanvasEventSource.new(MyCanvasEventService::SELECT, defaultMutableTreeNode)))
                        else
                            self.selectGraphicItem(defaultMutableTreeNode)
                        end
                    end
                end
            end
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "workAreaJTreeMousePressed", e)
        end
    end
    

    def itemJPopupMenuPopupMenuWillBecomeInvisible(evt)
    end
    

    def itemJPopupMenuPopupMenuWillBecomeVisible(evt)
    end
    

    def copyJMenuItemMousePressed(evt)
        begin
            self.copy()
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "copyJMenuItemMousePressed", e)
        end
    end
    

    def deleteJMenuItemMousePressed(evt)
        begin
            selectedTreePathArray = @workAreaJTree.getSelectionPaths()
            (0...selectedTreePathArray.length).each do |index|
                treePath = selectedTreePathArray[index]
                self.remove(treePath)
                self.updateTree()
                self.expand()
                self.repaint()
            end
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "deleteJMenuItemMousePressed", e)
        end
    end
    

    def workAreaPropertiesJPanelMousePressed(evt)
    end
end

require "org/allbinary/graphics/j2me/workarea/canvas/CanvasTreeLabel"
require "org/allbinary/graphics/j2me/workarea/canvas/event/MyCanvasEvent"
require "org/allbinary/graphics/j2me/workarea/canvas/event/MyCanvasEventService"
require "org/allbinary/graphics/j2me/workarea/canvas/event/MyCanvasEventSource"
require "org/allbinary/graphics/j2me/workarea/tools/event/MyGraphicItemEvent"
require "org/allbinary/graphics/j2me/workarea/tools/event/MyGraphicItemEventService"
require "org/allbinary/graphics/j2me/workarea/tools/event/MyGraphicItemEventSource"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"

