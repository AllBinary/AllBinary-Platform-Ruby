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

require "java/lang/JavaOverload"
# require "javax/swing/JTree"
# require "javax/swing/tree/DefaultMutableTreeNode"
# require "javax/swing/tree/MutableTreeNode"
# require "javax/swing/tree/TreePath"
# require "java/awt/GridLayout"
# require "java/awt/event/MouseAdapter"
# require "java/awt/event/MouseEvent"
# require "javax/swing/JMenuItem"
# require "javax/swing/JPanel"
# require "javax/swing/JPopupMenu"
# require "javax/swing/JScrollPane"
# require "javax/swing/event/PopupMenuEvent"
# require "javax/swing/event/PopupMenuListener"

module ::Org; module Allbinary; module Graphics; module J2me; module Workarea

class WorkAreaJTreeJPanel < JPanel
    attr_accessor :logUtil, :commonStrings, :rootTreeNode, :workAreaJTree, :highlightedBasicArrayList, :copyJMenuItem, :deleteJMenuItem, :itemJPopupMenu, :itemJScrollPane1, :rotateJMenuItem, :workAreaPropertiesJPanel

    def jfields_org_allbinary_graphics_j2me_workarea_WorkAreaJTreeJPanel
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @rootTreeNode = nil unless instance_variable_defined?(:@rootTreeNode)
        @workAreaJTree = nil unless instance_variable_defined?(:@workAreaJTree)
        @highlightedBasicArrayList = nil unless instance_variable_defined?(:@highlightedBasicArrayList)
        @copyJMenuItem = nil unless instance_variable_defined?(:@copyJMenuItem)
        @deleteJMenuItem = nil unless instance_variable_defined?(:@deleteJMenuItem)
        @itemJPopupMenu = nil unless instance_variable_defined?(:@itemJPopupMenu)
        @itemJScrollPane1 = nil unless instance_variable_defined?(:@itemJScrollPane1)
        @rotateJMenuItem = nil unless instance_variable_defined?(:@rotateJMenuItem)
        @workAreaPropertiesJPanel = nil unless instance_variable_defined?(:@workAreaPropertiesJPanel)
    end
    

    def initialize(workAreaName)
        super()
        jfields_org_allbinary_graphics_j2me_workarea_WorkAreaJTreeJPanel
        self.initComponents()
        @rootTreeNode = DefaultMutableTreeNode.new(workAreaName)
        @workAreaPropertiesJPanel.removeAll()
        self.updateTree()
        @highlightedBasicArrayList = ::Org::Allbinary::Util::BasicArrayListD.new()
    end
    

    def add(treeNode)
        @rootTreeNode.add(treeNode)
    end
    java_overload :add, 1
    

    def updateTree()
        @workAreaJTree = JTree.new(@rootTreeNode)
        @workAreaJTree.addMouseListener(Class.new(MouseAdapter.is_a?(Class) ? MouseAdapter : Object) do
            include(MouseAdapter) unless MouseAdapter.is_a?(Class)
            

            def mousePressed(evt)
                workAreaJTreeMousePressed(evt)
            end
            java_overload :mousePressed, 1
        end.new())
        @workAreaPropertiesJPanel.removeAll()
        @workAreaPropertiesJPanel.add(@workAreaJTree)
    end
    java_overload :updateTree, 0
    

    def getNode_j1_1(treePathArray)
        basicArrayList = ::Org::Allbinary::Util::BasicArrayListD.new()
        if treePathArray != nil
            (0...treePathArray.length).each do |index|
                basicArrayList.add(self.getNode(treePathArray[index]))
            end
        end
        return basicArrayList
    end
    

    def getNode_j1_2(treePath)
        if treePath != nil
            obj = treePath.getPath()
            if obj != nil
                node = obj[obj.length - 1]
                return node
            end
        end
        return nil
    end

    def getNode(*java_overload_args)
        return getNode_j1(*java_overload_args) if java_overload_args.length == 1
        raise ArgumentError, "No method getNode takes #{java_overload_args.length} arguments"
    end

    def getNode_j1(*java_overload_args)
        return getNode_j1_1(*java_overload_args) if true && (java_overload_args[0].nil? || (java_overload_args[0].is_a?(::Array) && (java_overload_args[0].empty? || !(java_overload_args[0][0].is_a?(::Numeric) || java_overload_args[0][0].is_a?(::String) || java_overload_args[0][0] == true || java_overload_args[0][0] == false))))
        return getNode_j1_2(*java_overload_args)
    end
    

    # throws Exception
    def deselectAll()
        size = @highlightedBasicArrayList.size()
        @logUtil.putF("size: " + (size).to_s, self, "deselectAll")
        (0...size).each do |index|
            node = @highlightedBasicArrayList.get(index)
            ::Org::Allbinary::Graphics::J2me::Workarea::Tools::Event::MyGraphicItemEventService.fire(::Org::Allbinary::Graphics::J2me::Workarea::Tools::Event::MyGraphicItemEvent.new(::Org::Allbinary::Graphics::J2me::Workarea::Tools::Event::MyGraphicItemEventSource.new(::Org::Allbinary::Graphics::J2me::Workarea::Tools::Event::MyGraphicItemEventService::DESELECT, node)))
        end
        @highlightedBasicArrayList.clear()
    end
    java_overload :deselectAll, 0
    

    # throws Exception
    def selectGraphicItem(node)
        @highlightedBasicArrayList.add(node)
        ::Org::Allbinary::Graphics::J2me::Workarea::Tools::Event::MyGraphicItemEventService.fire(::Org::Allbinary::Graphics::J2me::Workarea::Tools::Event::MyGraphicItemEvent.new(::Org::Allbinary::Graphics::J2me::Workarea::Tools::Event::MyGraphicItemEventSource.new(::Org::Allbinary::Graphics::J2me::Workarea::Tools::Event::MyGraphicItemEventService::SELECT, node)))
    end
    java_overload :selectGraphicItem, 1
    

    # throws Exception
    def removeGraphicItem(node)
        ::Org::Allbinary::Graphics::J2me::Workarea::Tools::Event::MyGraphicItemEventService.fire(::Org::Allbinary::Graphics::J2me::Workarea::Tools::Event::MyGraphicItemEvent.new(::Org::Allbinary::Graphics::J2me::Workarea::Tools::Event::MyGraphicItemEventSource.new(::Org::Allbinary::Graphics::J2me::Workarea::Tools::Event::MyGraphicItemEventService::DELETE, node)))
    end
    java_overload :removeGraphicItem, 1
    

    # throws Exception
    def removeCanvas(node)
        ::Org::Allbinary::Graphics::J2me::Workarea::Canvas::Event::MyCanvasEventService.fire(::Org::Allbinary::Graphics::J2me::Workarea::Canvas::Event::MyCanvasEvent.new(::Org::Allbinary::Graphics::J2me::Workarea::Canvas::Event::MyCanvasEventSource.new(::Org::Allbinary::Graphics::J2me::Workarea::Canvas::Event::MyCanvasEventService::DELETE, node)))
    end
    java_overload :removeCanvas, 1
    

    # throws Exception
    def remove(treePath)
        node = self.getNode(treePath)
        if node != nil
            if node.getUserObject().is_a?(::Org::Allbinary::Graphics::J2me::Workarea::Canvas::CanvasTreeLabel)
                self.removeCanvas(node)
            else
                self.removeGraphicItem(node)
            end
        end
        parent = node.getParent()
        parent.remove(node)
    end
    java_overload :remove, 1
    

    # throws Exception
    def copy_j0()
        treePath = @workAreaJTree.getSelectionPath()
        self.copy(treePath)
        self.updateTree()
        self.expand()
        self.repaint()
    end
    

    # throws Exception
    def copy_j1(treePath)
        node = self.getNode(treePath)
        if node != nil
            if node.getUserObject().is_a?(::Org::Allbinary::Graphics::J2me::Workarea::Canvas::CanvasTreeLabel)
                ::Org::Allbinary::Graphics::J2me::Workarea::Canvas::Event::MyCanvasEventService.fire(::Org::Allbinary::Graphics::J2me::Workarea::Canvas::Event::MyCanvasEvent.new(::Org::Allbinary::Graphics::J2me::Workarea::Canvas::Event::MyCanvasEventSource.new(::Org::Allbinary::Graphics::J2me::Workarea::Canvas::Event::MyCanvasEventService::DUPLICATE, node)))
            else
                ::Org::Allbinary::Graphics::J2me::Workarea::Tools::Event::MyGraphicItemEventService.fire(::Org::Allbinary::Graphics::J2me::Workarea::Tools::Event::MyGraphicItemEvent.new(::Org::Allbinary::Graphics::J2me::Workarea::Tools::Event::MyGraphicItemEventSource.new(::Org::Allbinary::Graphics::J2me::Workarea::Tools::Event::MyGraphicItemEventService::DUPLICATE, node)))
            end
        end
    end

    def copy(*java_overload_args)
        return copy_j0(*java_overload_args) if java_overload_args.length == 0
        return copy_j1(*java_overload_args) if java_overload_args.length == 1
        raise ArgumentError, "No method copy takes #{java_overload_args.length} arguments"
    end
    

    # throws Exception
    def rotate(treePath, angle)
        node = self.getNode(treePath)
        if node != nil
            if node.getUserObject().is_a?(::Org::Allbinary::Graphics::J2me::Workarea::Canvas::CanvasTreeLabel)
                ::Org::Allbinary::Graphics::J2me::Workarea::Canvas::Event::MyCanvasEventService.fire(::Org::Allbinary::Graphics::J2me::Workarea::Canvas::Event::MyCanvasEvent.new(::Org::Allbinary::Graphics::J2me::Workarea::Canvas::Event::MyCanvasEventSource.new(::Org::Allbinary::Graphics::J2me::Workarea::Canvas::Event::MyCanvasEventService::ROTATE, angle, node)))
            else
                ::Org::Allbinary::Graphics::J2me::Workarea::Tools::Event::MyGraphicItemEventService.fire(::Org::Allbinary::Graphics::J2me::Workarea::Tools::Event::MyGraphicItemEvent.new(::Org::Allbinary::Graphics::J2me::Workarea::Tools::Event::MyGraphicItemEventSource.new(::Org::Allbinary::Graphics::J2me::Workarea::Tools::Event::MyGraphicItemEventService::ROTATE, angle, node)))
            end
        end
    end
    java_overload :rotate, 2
    

    def getRootTreeNode()
        return @rootTreeNode
    end
    java_overload :getRootTreeNode, 0
    

    def expand_j0()
        @workAreaJTree.expandRow(0)
        @workAreaJTree.expandRow(1)
    end
    

    def expand_j1(treePath)
        @workAreaJTree.expandPath(treePath)
    end

    def expand(*java_overload_args)
        return expand_j0(*java_overload_args) if java_overload_args.length == 0
        return expand_j1(*java_overload_args) if java_overload_args.length == 1
        raise ArgumentError, "No method expand takes #{java_overload_args.length} arguments"
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
            java_overload :popupMenuCanceled, 1
            

            def popupMenuWillBecomeInvisible(evt)
                itemJPopupMenuPopupMenuWillBecomeInvisible(evt)
            end
            java_overload :popupMenuWillBecomeInvisible, 1
            

            def popupMenuWillBecomeVisible(evt)
                itemJPopupMenuPopupMenuWillBecomeVisible(evt)
            end
            java_overload :popupMenuWillBecomeVisible, 1
        end.new())
        @deleteJMenuItem.setText("Delete")
        @deleteJMenuItem.addMouseListener(Class.new(MouseAdapter.is_a?(Class) ? MouseAdapter : Object) do
            include(MouseAdapter) unless MouseAdapter.is_a?(Class)
            

            def mousePressed(evt)
                deleteJMenuItemMousePressed(evt)
            end
            java_overload :mousePressed, 1
        end.new())
        @itemJPopupMenu.add(@deleteJMenuItem)
        @copyJMenuItem.setText("Copy")
        @copyJMenuItem.addMouseListener(Class.new(MouseAdapter.is_a?(Class) ? MouseAdapter : Object) do
            include(MouseAdapter) unless MouseAdapter.is_a?(Class)
            

            def mousePressed(evt)
                copyJMenuItemMousePressed(evt)
            end
            java_overload :mousePressed, 1
        end.new())
        @itemJPopupMenu.add(@copyJMenuItem)
        @rotateJMenuItem.setText("Rotate 45*")
        @rotateJMenuItem.addMouseListener(Class.new(MouseAdapter.is_a?(Class) ? MouseAdapter : Object) do
            include(MouseAdapter) unless MouseAdapter.is_a?(Class)
            

            def mousePressed(evt)
                rotateJMenuItemMousePressed(evt)
            end
            java_overload :mousePressed, 1
        end.new())
        @itemJPopupMenu.add(@rotateJMenuItem)
        setLayout(GridLayout.new(1, 1))
        @workAreaPropertiesJPanel.addMouseListener(Class.new(MouseAdapter.is_a?(Class) ? MouseAdapter : Object) do
            include(MouseAdapter) unless MouseAdapter.is_a?(Class)
            

            def mousePressed(evt)
                workAreaPropertiesJPanelMousePressed(evt)
            end
            java_overload :mousePressed, 1
        end.new())
        @workAreaPropertiesJPanel.setLayout(GridLayout.new(1, 0))
        @itemJScrollPane1.setViewportView(@workAreaPropertiesJPanel)
        add(@itemJScrollPane1)
    end
    java_overload :initComponents, 0
    

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
    java_overload :rotateJMenuItemMousePressed, 1
    

    def workAreaJTreeMousePressed(evt)
        begin
            selectedTreePathArray = @workAreaJTree.getSelectionPaths()
            list = self.getNode(selectedTreePathArray)
            if list.size() > 0
                if (evt.getModifiers() & evt.BUTTON3_MASK) == evt.BUTTON3_MASK
                    (0...selectedTreePathArray.length).each do |index|
                        defaultMutableTreeNode = list.get(index)
                        if defaultMutableTreeNode.getUserObject().is_a?(::Org::Allbinary::Graphics::J2me::Workarea::Canvas::CanvasTreeLabel)
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
                        if defaultMutableTreeNode.getUserObject().is_a?(::Org::Allbinary::Graphics::J2me::Workarea::Canvas::CanvasTreeLabel)
                            ::Org::Allbinary::Graphics::J2me::Workarea::Canvas::Event::MyCanvasEventService.fire(::Org::Allbinary::Graphics::J2me::Workarea::Canvas::Event::MyCanvasEvent.new(::Org::Allbinary::Graphics::J2me::Workarea::Canvas::Event::MyCanvasEventSource.new(::Org::Allbinary::Graphics::J2me::Workarea::Canvas::Event::MyCanvasEventService::SELECT, defaultMutableTreeNode)))
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
    java_overload :workAreaJTreeMousePressed, 1
    

    def itemJPopupMenuPopupMenuWillBecomeInvisible(evt)
    end
    java_overload :itemJPopupMenuPopupMenuWillBecomeInvisible, 1
    

    def itemJPopupMenuPopupMenuWillBecomeVisible(evt)
    end
    java_overload :itemJPopupMenuPopupMenuWillBecomeVisible, 1
    

    def copyJMenuItemMousePressed(evt)
        begin
            self.copy()
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "copyJMenuItemMousePressed", e)
        end
    end
    java_overload :copyJMenuItemMousePressed, 1
    

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
    java_overload :deleteJMenuItemMousePressed, 1
    

    def workAreaPropertiesJPanelMousePressed(evt)
    end
    java_overload :workAreaPropertiesJPanelMousePressed, 1
end

module ::Org; module Allbinary; module Graphics; module J2me; module Workarea; module Canvas; autoload :CanvasTreeLabel, "org/allbinary/graphics/j2me/workarea/canvas/CanvasTreeLabel" unless const_defined?(:CanvasTreeLabel, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module J2me; module Workarea; module Canvas; module Event; autoload :MyCanvasEvent, "org/allbinary/graphics/j2me/workarea/canvas/event/MyCanvasEvent" unless const_defined?(:MyCanvasEvent, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module J2me; module Workarea; module Canvas; module Event; autoload :MyCanvasEventService, "org/allbinary/graphics/j2me/workarea/canvas/event/MyCanvasEventService" unless const_defined?(:MyCanvasEventService, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module J2me; module Workarea; module Canvas; module Event; autoload :MyCanvasEventSource, "org/allbinary/graphics/j2me/workarea/canvas/event/MyCanvasEventSource" unless const_defined?(:MyCanvasEventSource, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module J2me; module Workarea; module Tools; module Event; autoload :MyGraphicItemEvent, "org/allbinary/graphics/j2me/workarea/tools/event/MyGraphicItemEvent" unless const_defined?(:MyGraphicItemEvent, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module J2me; module Workarea; module Tools; module Event; autoload :MyGraphicItemEventService, "org/allbinary/graphics/j2me/workarea/tools/event/MyGraphicItemEventService" unless const_defined?(:MyGraphicItemEventService, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module J2me; module Workarea; module Tools; module Event; autoload :MyGraphicItemEventSource, "org/allbinary/graphics/j2me/workarea/tools/event/MyGraphicItemEventSource" unless const_defined?(:MyGraphicItemEventSource, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end

end; end; end; end; end

