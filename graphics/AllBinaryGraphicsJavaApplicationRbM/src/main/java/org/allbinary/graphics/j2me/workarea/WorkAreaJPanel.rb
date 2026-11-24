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
require "java/lang/JavaOverload"
require "java/lang/JavaClass"
# require "java/awt/Component"
# require "java/awt/Dimension"
# require "java/awt/GridBagLayout"
require "java/util/EventListener"
# require "java/util/LinkedList"
# require "javax/swing"
# require "javax/swing/tree/MutableTreeNode"
require "org/allbinary/graphics/j2me/workarea/canvas/event/MyCanvasEventListener"
# require "java/awt/GridBagConstraints"
# require "java/awt/GridLayout"
# require "java/awt/event/KeyAdapter"
# require "java/awt/event/KeyEvent"
# require "javax/swing/JPanel"
require "org/allbinary/graphics/j2me/workarea/WorkAreaJPanelInterface"
require "java/lang/Runnable"

module ::Org; module Allbinary; module Graphics; module J2me; module Workarea

class WorkAreaJPanel < JPanel
    include WorkAreaJPanelInterface
    include ::Org::Allbinary::Graphics::J2me::Workarea::Canvas::Event::MyCanvasEventListener
    include ::Java::Util::EventListener
    include ::Java::Lang::Runnable
    attr_accessor :logUtil, :canvasJPanelList, :canvasHolderJPanel, :name, :selectedFrame, :propertiesJPanel, :workAreaJTreeJPanel, :isPlaying, :innerJPanel

    def jfields_org_allbinary_graphics_j2me_workarea_WorkAreaJPanel
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @canvasJPanelList = nil unless instance_variable_defined?(:@canvasJPanelList)
        @canvasHolderJPanel = nil unless instance_variable_defined?(:@canvasHolderJPanel)
        @name = nil unless instance_variable_defined?(:@name)
        @selectedFrame = 0 unless instance_variable_defined?(:@selectedFrame)
        @propertiesJPanel = nil unless instance_variable_defined?(:@propertiesJPanel)
        @workAreaJTreeJPanel = nil unless instance_variable_defined?(:@workAreaJTreeJPanel)
        @isPlaying = false
        @innerJPanel = nil unless instance_variable_defined?(:@innerJPanel)
    end

    def initialize(*args)
        case args.length
        when 4 then jnew_org_allbinary_graphics_j2me_workarea_WorkAreaJPanel_4(*args)
        when 2 then jnew_org_allbinary_graphics_j2me_workarea_WorkAreaJPanel_2(*args)
        else raise ArgumentError, "No constructor of WorkAreaJPanel takes #{args.length} arguments"
        end
    end
    

    def jnew_org_allbinary_graphics_j2me_workarea_WorkAreaJPanel_4(name, dimension, x, y)
        WorkAreaJPanel.superclass.instance_method(:initialize).bind(self).call()
        jfields_org_allbinary_graphics_j2me_workarea_WorkAreaJPanel
        begin
            self.initComponents()
            @name = name
            self.initMyComponents(dimension)
            @workAreaJTreeJPanel = WorkAreaJTreeJPanel.new(@name)
            canvasJPanel = ::Org::Allbinary::Graphics::J2me::Workarea::Canvas::CanvasJPanel.new(@workAreaJTreeJPanel, self.getSize(), x, y)
            @canvasJPanelList.add(canvasJPanel)
            @selectedFrame = 0
            @propertiesJPanel.set(@workAreaJTreeJPanel)
            @canvasHolderJPanel.add(canvasJPanel)
        rescue StandardError => e
            raise e
        end
    end
    

    def jnew_org_allbinary_graphics_j2me_workarea_WorkAreaJPanel_2(workAreaDom, dimension)
        WorkAreaJPanel.superclass.instance_method(:initialize).bind(self).call()
        jfields_org_allbinary_graphics_j2me_workarea_WorkAreaJPanel
        begin
            self.initComponents()
            @name = workAreaDom.getName()
            self.initMyComponents(dimension)
            canvasNodeList = workAreaDom.getCanvasNodes()
            numberOfFrames = canvasNodeList.size()
            (0...numberOfFrames).each do |index|
                node = canvasNodeList.get(index)
                canvasJPanel = ::Org::Allbinary::Graphics::J2me::Workarea::Canvas::CanvasJPanel.new(@workAreaJTreeJPanel, self.getSize(), ::Org::Allbinary::Graphics::J2me::Workarea::Canvas::CanvasDom.new(node))
                @canvasJPanelList.add(canvasJPanel)
            end
            @selectedFrame = 0
            @canvasHolderJPanel.add(self.getCurrentFrame())
            @propertiesJPanel.set(@workAreaJTreeJPanel)
        rescue StandardError => e
            if ::Org::Allbinary::Log::LOGGING.contains(::Org::Allbinary::Log::LOGGING::LOADINGERROR)
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
        gridBagConstraints.fill = GridBagConstraints::BOTH
        gridBagConstraints.weightx = 0.05
        gridBagConstraints.weighty = 0.05
        toolJPanel = ::Org::Allbinary::Graphics::J2me::Workarea::Tools::ToolJPanel.new()
        gridBagLayout.setConstraints(toolJPanel, gridBagConstraints)
        @innerJPanel.add(toolJPanel)
        gridBagConstraints = GridBagConstraints.new()
        gridBagConstraints.gridx = 1
        gridBagConstraints.gridy = 0
        gridBagConstraints.gridwidth = 6
        gridBagConstraints.fill = GridBagConstraints::BOTH
        gridBagConstraints.weightx = 1
        gridBagConstraints.weighty = 1
        gridBagLayout.setConstraints(@canvasHolderJPanel, gridBagConstraints)
        @innerJPanel.add(@canvasHolderJPanel)
        gridBagConstraints = GridBagConstraints.new()
        gridBagConstraints.gridx = 8
        gridBagConstraints.gridy = 0
        gridBagConstraints.gridwidth = GridBagConstraints::REMAINDER
        gridBagConstraints.fill = GridBagConstraints::BOTH
        gridBagConstraints.weightx = 0.1
        gridBagConstraints.weighty = 0.1
        @propertiesJPanel = ::Org::Allbinary::Graphics::J2me::Workarea::Properties::PropertiesJPanel.new()
        gridBagLayout.setConstraints(@propertiesJPanel, gridBagConstraints)
        @innerJPanel.add(@propertiesJPanel)
        ::Org::Allbinary::Graphics::J2me::Workarea::Canvas::Event::MyCanvasEventService.addListener(self)
    end
    java_overload :initMyComponents, 1
    

    def getCanvasHashMap()
        canvasJPanelHashMap = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
        size = @canvasJPanelList.size()
        (0...size).each do |index|
            canvasJPanel = @canvasJPanelList.get(index)
            canvasJPanelHashMap.put(canvasJPanel.getTreeNode(), index)
        end
        return canvasJPanelHashMap
    end
    java_overload :getCanvasHashMap, 0
    

    def play()
        java_monitor.synchronize do
        @isPlaying = true
        end
    end
    java_overload :play, 0
    

    def stop()
        java_monitor.synchronize do
        @isPlaying = false
        end
    end
    java_overload :stop, 0
    

    def isPlaying()
        java_monitor.synchronize do
        return @isPlaying
        end
    end
    java_overload :isPlaying, 0
    

    def getName()
        return @name
    end
    java_overload :getName, 0
    

    def setName(value)
        @name = value
    end
    java_overload :setName, 1
    

    def disableCanvas()
        @canvasHolderJPanel.removeAll()
    end
    java_overload :disableCanvas, 0
    

    def enableCanvas()
        @canvasHolderJPanel.add(self.getCurrentFrame())
    end
    java_overload :enableCanvas, 0
    

    def deselect()
        WorkAreaJPanel.superclass.java_super_method(:setVisible, 1).bind(self).call(false)
    end
    java_overload :deselect, 0
    

    def select_j0()
        WorkAreaJPanel.superclass.java_super_method(:setVisible, 1).bind(self).call(true)
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
    java_overload :changeZoom, 1
    

    def getCurrentFrame()
        return @canvasJPanelList.get(@selectedFrame)
    end
    java_overload :getCurrentFrame, 0
    

    def initDuplicate(newCanvasJPanel)
        if newCanvasJPanel != nil
            @canvasJPanelList.add(newCanvasJPanel)
            self.select(@canvasJPanelList.size() - 1)
        end
    end
    java_overload :initDuplicate, 1
    

    # throws Exception
    def duplicate_j1_1(treeNode)
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
    java_overload :autoRotate, 2
    

    def explodeAll()
        canvasJPanel = self.getCurrentFrame()
        canvasJPanel.explodeAll()
    end
    java_overload :explodeAll, 0
    

    # throws Exception
    def autoExplode_j2(numberOfFrames, explodeType)
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
    java_overload :autoMirror, 0
    

    def select_j1_1(index)
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
    

    def select_j1_2(treeNode)
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
        WorkAreaJPanel.document = ::Org::Allbinary::Dom::DomHelper.getInstance().createDocument()
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
    java_overload :toDocument, 0
    

    def initComponents()
        @innerJPanel = JPanel.new()
        setLayout(GridLayout.new(1, 1))
        @innerJPanel.addKeyListener(Class.new(KeyAdapter.is_a?(Class) ? KeyAdapter : Object) do
            include(KeyAdapter) unless KeyAdapter.is_a?(Class)
            

            def keyTyped(evt)
                innerJPanelKeyTyped(evt)
            end
            java_overload :keyTyped, 1
            

            def keyPressed(evt)
                innerJPanelKeyPressed(evt)
            end
            java_overload :keyPressed, 1
            

            def keyReleased(evt)
                innerJPanelKeyReleased(evt)
            end
            java_overload :keyReleased, 1
        end.new())
        add(@innerJPanel)
    end
    java_overload :initComponents, 0
    

    def innerJPanelKeyReleased(evt)
        ::Org::Allbinary::Graphics::J2me::StatusFactory.getInstance().setStatus("Key Pressed1")
    end
    java_overload :innerJPanelKeyReleased, 1
    

    def innerJPanelKeyPressed(evt)
        ::Org::Allbinary::Graphics::J2me::StatusFactory.getInstance().setStatus("Key Pressed2")
    end
    java_overload :innerJPanelKeyPressed, 1
    

    def innerJPanelKeyTyped(evt)
        ::Org::Allbinary::Graphics::J2me::StatusFactory.getInstance().setStatus("Key Pressed3")
    end
    java_overload :innerJPanelKeyTyped, 1
    

    def keyPressed(keyEvent)
        self.getCurrentFrame().keyPressed(keyEvent)
    end
    java_overload :keyPressed, 1
    

    def keyReleased(keyEvent)
    end
    java_overload :keyReleased, 1
    

    def keyTyped(keyEvent)
    end
    java_overload :keyTyped, 1
    

    def delete(evt)
        canvasJPanelHashMap = self.getCanvasHashMap()
        if canvasJPanelHashMap.containsKey(evt.getTreeNode())
            @canvasHolderJPanel.removeAll()
            frameInt = canvasJPanelHashMap.get(evt.getTreeNode())
            @canvasJPanelList.remove(frameInt.to_i)
            self.select(frameInt.to_i)
        end
    end
    java_overload :delete, 1
    

    # throws Exception
    def duplicate_j1_2(evt)
        self.duplicate(evt.getTreeNode())
    end

    def duplicate(*java_overload_args)
        return duplicate_j1(*java_overload_args) if java_overload_args.length == 1
        raise ArgumentError, "No method duplicate takes #{java_overload_args.length} arguments"
    end

    def duplicate_j1(*java_overload_args)
        return duplicate_j1_1(*java_overload_args) if true && !(java_overload_args[0].is_a?(::Numeric) || java_overload_args[0] == true || java_overload_args[0] == false || java_overload_args[0].is_a?(::Array))
        return duplicate_j1_2(*java_overload_args)
    end
    

    def select_j1_3(evt)
        self.select(evt.getTreeNode())
        ::Org::Allbinary::Graphics::J2me::StatusFactory.getInstance().setStatus("Frame Selected")
    end

    def select(*java_overload_args)
        return select_j0(*java_overload_args) if java_overload_args.length == 0
        return select_j1(*java_overload_args) if java_overload_args.length == 1
        raise ArgumentError, "No method select takes #{java_overload_args.length} arguments"
    end

    def select_j1(*java_overload_args)
        return select_j1_1(*java_overload_args) if true && java_overload_args[0].is_a?(::Integer)
        return select_j1_2(*java_overload_args) if true && !(java_overload_args[0].is_a?(::Numeric) || java_overload_args[0] == true || java_overload_args[0] == false || java_overload_args[0].is_a?(::Array))
        return select_j1_3(*java_overload_args)
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
        ::Org::Allbinary::Graphics::J2me::StatusFactory.getInstance().setStatus("Canvas Rotated")
    end
    java_overload :rotate, 1
    

    def explode(evt)
        self.explodeAll()
    end
    java_overload :explode, 1
    

    # throws Exception
    def autoExplode_j1(evt)
        self.autoExplode(10, 0)
    end

    def autoExplode(*java_overload_args)
        return autoExplode_j2(*java_overload_args) if java_overload_args.length == 2
        return autoExplode_j1(*java_overload_args) if java_overload_args.length == 1
        raise ArgumentError, "No method autoExplode takes #{java_overload_args.length} arguments"
    end
    

    # throws Exception
    def center_j0()
        canvasJPanel = self.getCurrentFrame()
        canvasJPanel.center()
    end
    

    # throws Exception
    def center_j1(evt)
        self.center()
    end

    def center(*java_overload_args)
        return center_j0(*java_overload_args) if java_overload_args.length == 0
        return center_j1(*java_overload_args) if java_overload_args.length == 1
        raise ArgumentError, "No method center takes #{java_overload_args.length} arguments"
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
    java_overload :run, 0

    def self.document()
        WorkAreaJPanel.java_static_fields unless @java_static_fields_started
        return defined?(@@document) ? @@document : nil
    end

    def self.document=(value)
        WorkAreaJPanel.java_static_fields unless @java_static_fields_started
        @@document = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@document = nil
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "WorkAreaJPanel"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Dom; autoload :DomHelper, "org/allbinary/dom/DomHelper" unless const_defined?(:DomHelper, false); end; end; end
module ::Org; module Allbinary; module Graphics; module J2me; autoload :StatusFactory, "org/allbinary/graphics/j2me/StatusFactory" unless const_defined?(:StatusFactory, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module J2me; module Workarea; module Canvas; autoload :CanvasDom, "org/allbinary/graphics/j2me/workarea/canvas/CanvasDom" unless const_defined?(:CanvasDom, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module J2me; module Workarea; module Canvas; autoload :CanvasJPanel, "org/allbinary/graphics/j2me/workarea/canvas/CanvasJPanel" unless const_defined?(:CanvasJPanel, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module J2me; module Workarea; module Canvas; module Event; autoload :MyCanvasEvent, "org/allbinary/graphics/j2me/workarea/canvas/event/MyCanvasEvent" unless const_defined?(:MyCanvasEvent, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module J2me; module Workarea; module Canvas; module Event; autoload :MyCanvasEventService, "org/allbinary/graphics/j2me/workarea/canvas/event/MyCanvasEventService" unless const_defined?(:MyCanvasEventService, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module J2me; module Workarea; module Properties; autoload :PropertiesJPanel, "org/allbinary/graphics/j2me/workarea/properties/PropertiesJPanel" unless const_defined?(:PropertiesJPanel, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module J2me; module Workarea; module Tools; autoload :ToolJPanel, "org/allbinary/graphics/j2me/workarea/tools/ToolJPanel" unless const_defined?(:ToolJPanel, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Log; autoload :LOGGING, "org/allbinary/log/LOGGING" unless const_defined?(:LOGGING, false); end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
autoload :WorkAreaDom, "org/allbinary/graphics/j2me/workarea/WorkAreaDom" unless const_defined?(:WorkAreaDom, false)
autoload :WorkAreaJTreeJPanel, "org/allbinary/graphics/j2me/workarea/WorkAreaJTreeJPanel" unless const_defined?(:WorkAreaJTreeJPanel, false)
require "java/lang/Thread"

begin
    WorkAreaJPanel.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

