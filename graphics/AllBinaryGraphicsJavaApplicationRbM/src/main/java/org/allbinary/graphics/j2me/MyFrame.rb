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
# package org.allbinary.graphics.j2me

require "java/lang/JavaOverload"
require "java/lang/JavaClass"
# require "java/awt"
# require "java/io/File"
# require "javax/swing"
require "org/allbinary/gui/dialog/FileJDialogListenerInterface"
require "org/allbinary/gui/dialog/HashMapJDialogListenerInterface"
# require "java/awt/BorderLayout"
# require "java/awt/Dimension"
# require "java/awt/GridLayout"
# require "java/awt/event/ActionEvent"
# require "java/awt/event/ActionListener"
# require "java/awt/event/KeyEvent"
# require "java/awt/event/KeyListener"
# require "java/awt/event/MouseAdapter"
# require "java/awt/event/MouseEvent"
# require "java/awt/event/WindowAdapter"
# require "java/awt/event/WindowEvent"
# require "javax/swing/JButton"
# require "javax/swing/JFrame"
# require "javax/swing/JLabel"
# require "javax/swing/JMenu"
# require "javax/swing/JMenuBar"
# require "javax/swing/JMenuItem"
# require "javax/swing/JPanel"
# require "javax/swing/JTabbedPane"
# require "javax/swing/JToolBar"
# require "javax/swing/event/ChangeEvent"
# require "javax/swing/event/ChangeListener"

module ::Org; module Allbinary; module Graphics; module J2me

class MyFrame < JFrame
    include ::Org::Allbinary::Gui::Dialog::FileJDialogListenerInterface
    include ::Org::Allbinary::Gui::Dialog::HashMapJDialogListenerInterface
    include KeyListener
    attr_accessor :logUtil, :commonStrings, :guiLog, :xslHelper, :JAVA_TEMPLATE, :SAVEEXTENSION, :JAVAEXTENSION, :fileJDialog, :rotateJDialog, :animateJButton, :autoDamageJMenuItem, :autoExplodeJMenuItem, :autoGrowJMenuItem, :autoRotateGenerationJMenuItem, :autoSheildMenuItem, :autoShrinkJMenuItem, :centerJMenuItem, :copyJMenuItem1, :exitJMenuItem, :explodeAllJMenuItem, :exportJMenuItem1, :fileJMenu, :frameJMenu, :generateJMenu, :insertAfterJMenuItem, :insertBeforeJMenuItem, :jButton1, :jButton2, :jButton3, :jButton4, :jButton41, :jButton5, :jMenu1, :jMenuItem1, :jPanel1, :jTabbedPane, :jToolBar1, :mainJPanel, :menuJMenuBar, :newJMenuItem, :nextFrameJMenuItem, :objectJMenu, :openJButton, :openJMenuItem, :playJButton, :previousFrameJMenuItem, :removeJMenuItem, :saveAsJMenuItem, :saveJButton, :saveJMenuItem, :statusJPanel, :stopJjButton, :viewJMenu, :zoomInJMenuItem, :zoomOutJMenuItem

    def jfields_org_allbinary_graphics_j2me_MyFrame
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @guiLog = ::Org::Allbinary::Logic::Communication::Log::GuiLog.getInstance()
        @xslHelper = ::Org::Allbinary::DataPackage::Tree::Dom::XslHelper.getInstance()
        @JAVA_TEMPLATE = "svgExport.xsl"
        @SAVEEXTENSION = ".gxml"
        @JAVAEXTENSION = ".javax"
        @fileJDialog = nil unless instance_variable_defined?(:@fileJDialog)
        @rotateJDialog = nil unless instance_variable_defined?(:@rotateJDialog)
        @animateJButton = nil unless instance_variable_defined?(:@animateJButton)
        @autoDamageJMenuItem = nil unless instance_variable_defined?(:@autoDamageJMenuItem)
        @autoExplodeJMenuItem = nil unless instance_variable_defined?(:@autoExplodeJMenuItem)
        @autoGrowJMenuItem = nil unless instance_variable_defined?(:@autoGrowJMenuItem)
        @autoRotateGenerationJMenuItem = nil unless instance_variable_defined?(:@autoRotateGenerationJMenuItem)
        @autoSheildMenuItem = nil unless instance_variable_defined?(:@autoSheildMenuItem)
        @autoShrinkJMenuItem = nil unless instance_variable_defined?(:@autoShrinkJMenuItem)
        @centerJMenuItem = nil unless instance_variable_defined?(:@centerJMenuItem)
        @copyJMenuItem1 = nil unless instance_variable_defined?(:@copyJMenuItem1)
        @exitJMenuItem = nil unless instance_variable_defined?(:@exitJMenuItem)
        @explodeAllJMenuItem = nil unless instance_variable_defined?(:@explodeAllJMenuItem)
        @exportJMenuItem1 = nil unless instance_variable_defined?(:@exportJMenuItem1)
        @fileJMenu = nil unless instance_variable_defined?(:@fileJMenu)
        @frameJMenu = nil unless instance_variable_defined?(:@frameJMenu)
        @generateJMenu = nil unless instance_variable_defined?(:@generateJMenu)
        @insertAfterJMenuItem = nil unless instance_variable_defined?(:@insertAfterJMenuItem)
        @insertBeforeJMenuItem = nil unless instance_variable_defined?(:@insertBeforeJMenuItem)
        @jButton1 = nil unless instance_variable_defined?(:@jButton1)
        @jButton2 = nil unless instance_variable_defined?(:@jButton2)
        @jButton3 = nil unless instance_variable_defined?(:@jButton3)
        @jButton4 = nil unless instance_variable_defined?(:@jButton4)
        @jButton41 = nil unless instance_variable_defined?(:@jButton41)
        @jButton5 = nil unless instance_variable_defined?(:@jButton5)
        @jMenu1 = nil unless instance_variable_defined?(:@jMenu1)
        @jMenuItem1 = nil unless instance_variable_defined?(:@jMenuItem1)
        @jPanel1 = nil unless instance_variable_defined?(:@jPanel1)
        @jTabbedPane = nil unless instance_variable_defined?(:@jTabbedPane)
        @jToolBar1 = nil unless instance_variable_defined?(:@jToolBar1)
        @mainJPanel = nil unless instance_variable_defined?(:@mainJPanel)
        @menuJMenuBar = nil unless instance_variable_defined?(:@menuJMenuBar)
        @newJMenuItem = nil unless instance_variable_defined?(:@newJMenuItem)
        @nextFrameJMenuItem = nil unless instance_variable_defined?(:@nextFrameJMenuItem)
        @objectJMenu = nil unless instance_variable_defined?(:@objectJMenu)
        @openJButton = nil unless instance_variable_defined?(:@openJButton)
        @openJMenuItem = nil unless instance_variable_defined?(:@openJMenuItem)
        @playJButton = nil unless instance_variable_defined?(:@playJButton)
        @previousFrameJMenuItem = nil unless instance_variable_defined?(:@previousFrameJMenuItem)
        @removeJMenuItem = nil unless instance_variable_defined?(:@removeJMenuItem)
        @saveAsJMenuItem = nil unless instance_variable_defined?(:@saveAsJMenuItem)
        @saveJButton = nil unless instance_variable_defined?(:@saveJButton)
        @saveJMenuItem = nil unless instance_variable_defined?(:@saveJMenuItem)
        @statusJPanel = nil unless instance_variable_defined?(:@statusJPanel)
        @stopJjButton = nil unless instance_variable_defined?(:@stopJjButton)
        @viewJMenu = nil unless instance_variable_defined?(:@viewJMenu)
        @zoomInJMenuItem = nil unless instance_variable_defined?(:@zoomInJMenuItem)
        @zoomOutJMenuItem = nil unless instance_variable_defined?(:@zoomOutJMenuItem)
    end
    

    def initialize()
        super()
        jfields_org_allbinary_graphics_j2me_MyFrame
        self.initComponents()
        self.setSize(Dimension.new(550, 400))
        @mainJPanel.setSize(Dimension.new(550, 400))
        @jTabbedPane.setSize(Dimension.new(550, 400))
        @fileJDialog = ::Org::Allbinary::Gui::Dialog::FileJDialog.new()
        @fileJDialog.addFinishedListener(self)
        @rotateJDialog = ::Org::Allbinary::Graphics::J2me::Dialog::RotateJDialog.new(self, false)
    end
    

    def initComponents()
        @jToolBar1 = JToolBar.new()
        @jButton2 = JButton.new()
        @saveJButton = JButton.new()
        @jButton1 = JButton.new()
        @openJButton = JButton.new()
        @jButton3 = JButton.new()
        @jButton4 = JButton.new()
        @jButton41 = JButton.new()
        @jButton5 = JButton.new()
        @animateJButton = JButton.new()
        @playJButton = JButton.new()
        @stopJjButton = JButton.new()
        @jPanel1 = JPanel.new()
        @mainJPanel = JPanel.new()
        @jTabbedPane = JTabbedPane.new()
        @statusJPanel = JPanel.new()
        MyFrame.statusJLabel = JLabel.new()
        @menuJMenuBar = JMenuBar.new()
        @fileJMenu = JMenu.new()
        @newJMenuItem = JMenuItem.new()
        @openJMenuItem = JMenuItem.new()
        @saveJMenuItem = JMenuItem.new()
        @saveAsJMenuItem = JMenuItem.new()
        @exportJMenuItem1 = JMenuItem.new()
        @exitJMenuItem = JMenuItem.new()
        @viewJMenu = JMenu.new()
        @zoomInJMenuItem = JMenuItem.new()
        @zoomOutJMenuItem = JMenuItem.new()
        @objectJMenu = JMenu.new()
        @explodeAllJMenuItem = JMenuItem.new()
        @frameJMenu = JMenu.new()
        @previousFrameJMenuItem = JMenuItem.new()
        @nextFrameJMenuItem = JMenuItem.new()
        @removeJMenuItem = JMenuItem.new()
        @copyJMenuItem1 = JMenuItem.new()
        @insertAfterJMenuItem = JMenuItem.new()
        @insertBeforeJMenuItem = JMenuItem.new()
        @generateJMenu = JMenu.new()
        @centerJMenuItem = JMenuItem.new()
        @autoDamageJMenuItem = JMenuItem.new()
        @autoExplodeJMenuItem = JMenuItem.new()
        @autoGrowJMenuItem = JMenuItem.new()
        @jMenuItem1 = JMenuItem.new()
        @autoRotateGenerationJMenuItem = JMenuItem.new()
        @autoSheildMenuItem = JMenuItem.new()
        @autoShrinkJMenuItem = JMenuItem.new()
        @jMenu1 = JMenu.new()
        addWindowListener(Class.new(WindowAdapter.is_a?(Class) ? WindowAdapter : Object) do
            include(WindowAdapter) unless WindowAdapter.is_a?(Class)
            

            def windowClosing(evt)
                exitForm(evt)
            end
            java_overload :windowClosing, 1
        end.new())
        @jButton2.setText("New")
        @jButton2.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                jButton2ActionPerformed(evt)
            end
            java_overload :actionPerformed, 1
        end.new())
        @jToolBar1.add(@jButton2)
        @saveJButton.setText("Save")
        @saveJButton.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                saveJButtonActionPerformed(evt)
            end
            java_overload :actionPerformed, 1
        end.new())
        @jToolBar1.add(@saveJButton)
        @jButton1.setText("Export")
        @jButton1.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                jButton1ActionPerformed(evt)
            end
            java_overload :actionPerformed, 1
        end.new())
        @jToolBar1.add(@jButton1)
        @openJButton.setText("Open")
        @openJButton.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                openJButtonActionPerformed(evt)
            end
            java_overload :actionPerformed, 1
        end.new())
        @jToolBar1.add(@openJButton)
        @jButton3.setText("Copy")
        @jToolBar1.add(@jButton3)
        @jButton4.setText("Insert Before")
        @jToolBar1.add(@jButton4)
        @jButton41.setText("Insert After")
        @jToolBar1.add(@jButton41)
        @jButton5.setText("Delete")
        @jToolBar1.add(@jButton5)
        @animateJButton.setText("AnimateEdit")
        @jToolBar1.add(@animateJButton)
        @playJButton.setText("Play")
        @playJButton.addMouseListener(Class.new(MouseAdapter.is_a?(Class) ? MouseAdapter : Object) do
            include(MouseAdapter) unless MouseAdapter.is_a?(Class)
            

            def mousePressed(evt)
                playJButtonMousePressed(evt)
            end
            java_overload :mousePressed, 1
        end.new())
        @jToolBar1.add(@playJButton)
        @stopJjButton.setText("Stop")
        @stopJjButton.addMouseListener(Class.new(MouseAdapter.is_a?(Class) ? MouseAdapter : Object) do
            include(MouseAdapter) unless MouseAdapter.is_a?(Class)
            

            def mousePressed(evt)
                stopJjButtonMousePressed(evt)
            end
            java_overload :mousePressed, 1
        end.new())
        @jToolBar1.add(@stopJjButton)
        getContentPane().add(@jToolBar1, BorderLayout::NORTH)
        @jPanel1.setLayout(GridLayout.new(1, 0))
        @mainJPanel.setLayout(GridLayout.new(1, 0))
        @jTabbedPane.setMinimumSize(Dimension.new(550, 400))
        @jTabbedPane.addChangeListener(Class.new(ChangeListener.is_a?(Class) ? ChangeListener : Object) do
            include(ChangeListener) unless ChangeListener.is_a?(Class)
            

            def stateChanged(evt)
                jTabbedPaneStateChanged(evt)
            end
            java_overload :stateChanged, 1
        end.new())
        @mainJPanel.add(@jTabbedPane)
        @jPanel1.add(@mainJPanel)
        getContentPane().add(@jPanel1, BorderLayout::CENTER)
        @statusJPanel.setLayout(GridLayout.new(1, 0))
        MyFrame.statusJLabel.setText("Status Bar")
        @statusJPanel.add(MyFrame.statusJLabel)
        getContentPane().add(@statusJPanel, BorderLayout::SOUTH)
        @fileJMenu.setText("File")
        @fileJMenu.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                fileJMenuActionPerformed(evt)
            end
            java_overload :actionPerformed, 1
        end.new())
        @newJMenuItem.setText("New")
        @newJMenuItem.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                newJMenuItemActionPerformed(evt)
            end
            java_overload :actionPerformed, 1
        end.new())
        @fileJMenu.add(@newJMenuItem)
        @openJMenuItem.setText("Open")
        @openJMenuItem.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                openJMenuItemActionPerformed(evt)
            end
            java_overload :actionPerformed, 1
        end.new())
        @fileJMenu.add(@openJMenuItem)
        @saveJMenuItem.setText("Save")
        @saveJMenuItem.addMouseListener(Class.new(MouseAdapter.is_a?(Class) ? MouseAdapter : Object) do
            include(MouseAdapter) unless MouseAdapter.is_a?(Class)
            

            def mousePressed(evt)
                saveJMenuItemMousePressed(evt)
            end
            java_overload :mousePressed, 1
        end.new())
        @fileJMenu.add(@saveJMenuItem)
        @saveAsJMenuItem.setText("SaveAs")
        @fileJMenu.add(@saveAsJMenuItem)
        @exportJMenuItem1.setText("Export")
        @exportJMenuItem1.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                exportJMenuItem1ActionPerformed(evt)
            end
            java_overload :actionPerformed, 1
        end.new())
        @fileJMenu.add(@exportJMenuItem1)
        @exitJMenuItem.setText("Exit")
        @exitJMenuItem.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                exitJMenuItemActionPerformed(evt)
            end
            java_overload :actionPerformed, 1
        end.new())
        @fileJMenu.add(@exitJMenuItem)
        @menuJMenuBar.add(@fileJMenu)
        @viewJMenu.setText("View")
        @zoomInJMenuItem.setText("Zoom In")
        @zoomInJMenuItem.addMouseListener(Class.new(MouseAdapter.is_a?(Class) ? MouseAdapter : Object) do
            include(MouseAdapter) unless MouseAdapter.is_a?(Class)
            

            def mousePressed(evt)
                zoomInJMenuItemMousePressed(evt)
            end
            java_overload :mousePressed, 1
        end.new())
        @viewJMenu.add(@zoomInJMenuItem)
        @zoomOutJMenuItem.setText("Zoom Out")
        @zoomOutJMenuItem.addMouseListener(Class.new(MouseAdapter.is_a?(Class) ? MouseAdapter : Object) do
            include(MouseAdapter) unless MouseAdapter.is_a?(Class)
            

            def mousePressed(evt)
                zoomOutJMenuItemMousePressed(evt)
            end
            java_overload :mousePressed, 1
        end.new())
        @viewJMenu.add(@zoomOutJMenuItem)
        @menuJMenuBar.add(@viewJMenu)
        @objectJMenu.setText("Objects")
        @explodeAllJMenuItem.setText("Explode All")
        @explodeAllJMenuItem.addMouseListener(Class.new(MouseAdapter.is_a?(Class) ? MouseAdapter : Object) do
            include(MouseAdapter) unless MouseAdapter.is_a?(Class)
            

            def mousePressed(evt)
                explodeAllJMenuItemMousePressed(evt)
            end
            java_overload :mousePressed, 1
        end.new())
        @objectJMenu.add(@explodeAllJMenuItem)
        @menuJMenuBar.add(@objectJMenu)
        @frameJMenu.setText("Frame")
        @frameJMenu.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                frameJMenuActionPerformed(evt)
            end
            java_overload :actionPerformed, 1
        end.new())
        @previousFrameJMenuItem.setText("Previous")
        @frameJMenu.add(@previousFrameJMenuItem)
        @nextFrameJMenuItem.setText(::Org::Allbinary::StringPackage::CommonLabels.getInstance().NEXT)
        @frameJMenu.add(@nextFrameJMenuItem)
        @removeJMenuItem.setText("Remove")
        @frameJMenu.add(@removeJMenuItem)
        @copyJMenuItem1.setText("Copy")
        @frameJMenu.add(@copyJMenuItem1)
        @insertAfterJMenuItem.setText("Ins After")
        @frameJMenu.add(@insertAfterJMenuItem)
        @insertBeforeJMenuItem.setText("Ins Before")
        @frameJMenu.add(@insertBeforeJMenuItem)
        @menuJMenuBar.add(@frameJMenu)
        @generateJMenu.setText("Generate")
        @centerJMenuItem.setText("Center")
        @centerJMenuItem.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                centerJMenuItemActionPerformed(evt)
            end
            java_overload :actionPerformed, 1
        end.new())
        @generateJMenu.add(@centerJMenuItem)
        @autoDamageJMenuItem.setText("Damage")
        @generateJMenu.add(@autoDamageJMenuItem)
        @autoExplodeJMenuItem.setText("Explode")
        @autoExplodeJMenuItem.addMouseListener(Class.new(MouseAdapter.is_a?(Class) ? MouseAdapter : Object) do
            include(MouseAdapter) unless MouseAdapter.is_a?(Class)
            

            def mousePressed(evt)
                autoExplodeJMenuItemMousePressed(evt)
            end
            java_overload :mousePressed, 1
        end.new())
        @generateJMenu.add(@autoExplodeJMenuItem)
        @autoGrowJMenuItem.setText("Grow")
        @generateJMenu.add(@autoGrowJMenuItem)
        @jMenuItem1.setText("Mirror")
        @jMenuItem1.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                jMenuItem1ActionPerformed(evt)
            end
            java_overload :actionPerformed, 1
        end.new())
        @generateJMenu.add(@jMenuItem1)
        @autoRotateGenerationJMenuItem.setText("Rotate")
        @autoRotateGenerationJMenuItem.addMouseListener(Class.new(MouseAdapter.is_a?(Class) ? MouseAdapter : Object) do
            include(MouseAdapter) unless MouseAdapter.is_a?(Class)
            

            def mousePressed(evt)
                autoRotateGenerationJMenuItemMousePressed(evt)
            end
            java_overload :mousePressed, 1
        end.new())
        @generateJMenu.add(@autoRotateGenerationJMenuItem)
        @autoSheildMenuItem.setText("Shield")
        @generateJMenu.add(@autoSheildMenuItem)
        @autoShrinkJMenuItem.setText("Shrink")
        @generateJMenu.add(@autoShrinkJMenuItem)
        @menuJMenuBar.add(@generateJMenu)
        @jMenu1.setText("Help")
        @menuJMenuBar.add(@jMenu1)
        setJMenuBar(@menuJMenuBar)
        pack()
    end
    java_overload :initComponents, 0
    

    def explodeAllJMenuItemMousePressed(evt)
        begin
            ::Org::Allbinary::Graphics::J2me::Workarea::Canvas::Event::MyCanvasEventService.fire(::Org::Allbinary::Graphics::J2me::Workarea::Canvas::Event::MyCanvasEvent.new(::Org::Allbinary::Graphics::J2me::Workarea::Canvas::Event::MyCanvasEventSource.new(::Org::Allbinary::Graphics::J2me::Workarea::Canvas::Event::MyCanvasEventService::EXPLODE, nil)))
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "explodeAllJMenuItemMousePressed", e)
        end
    end
    java_overload :explodeAllJMenuItemMousePressed, 1
    

    def autoExplodeJMenuItemMousePressed(evt)
        begin
            ::Org::Allbinary::Graphics::J2me::Workarea::Canvas::Event::MyCanvasEventService.fire(::Org::Allbinary::Graphics::J2me::Workarea::Canvas::Event::MyCanvasEvent.new(::Org::Allbinary::Graphics::J2me::Workarea::Canvas::Event::MyCanvasEventSource.new(::Org::Allbinary::Graphics::J2me::Workarea::Canvas::Event::MyCanvasEventService::AUTOEXPLODE, nil)))
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "autoExplodeJMenuItemMousePressed", e)
        end
    end
    java_overload :autoExplodeJMenuItemMousePressed, 1
    

    def stopJjButtonMousePressed(evt)
        self.getSelectedWorkArea().stop()
    end
    java_overload :stopJjButtonMousePressed, 1
    

    def playJButtonMousePressed(evt)
        self.getSelectedWorkArea().play()
    end
    java_overload :playJButtonMousePressed, 1
    

    def autoRotateGenerationJMenuItemMousePressed(evt)
        @rotateJDialog.setVisible(true)
    end
    java_overload :autoRotateGenerationJMenuItemMousePressed, 1
    

    def zoomOutJMenuItemMousePressed(evt)
        self.getSelectedWorkArea().changeZoom(-1)
    end
    java_overload :zoomOutJMenuItemMousePressed, 1
    

    def zoomInJMenuItemMousePressed(evt)
        self.getSelectedWorkArea().changeZoom(1)
    end
    java_overload :zoomInJMenuItemMousePressed, 1
    

    def openJMenuItemActionPerformed(evt)
        self.openGraphics()
    end
    java_overload :openJMenuItemActionPerformed, 1
    

    def exportJMenuItem1ActionPerformed(evt)
        self.export()
    end
    java_overload :exportJMenuItem1ActionPerformed, 1
    

    def saveJMenuItemMousePressed(evt)
        self.save()
    end
    java_overload :saveJMenuItemMousePressed, 1
    

    def jTabbedPaneStateChanged(evt)
        self.updateSelectedWorkArea()
    end
    java_overload :jTabbedPaneStateChanged, 1
    

    def frameJMenuActionPerformed(evt)
    end
    java_overload :frameJMenuActionPerformed, 1
    

    def exitJMenuItemActionPerformed(evt)
        exit(0)
    end
    java_overload :exitJMenuItemActionPerformed, 1
    

    def newJMenuItemActionPerformed(evt)
        self.newGraphics()
    end
    java_overload :newJMenuItemActionPerformed, 1
    

    def fileJMenuActionPerformed(evt)
    end
    java_overload :fileJMenuActionPerformed, 1
    

    def exitForm(evt)
        exit(0)
    end
    java_overload :exitForm, 1
    

    def openJButtonActionPerformed(evt)
        self.openGraphics()
    end
    java_overload :openJButtonActionPerformed, 1
    

    def jButton2ActionPerformed(evt)
        self.newGraphics()
    end
    java_overload :jButton2ActionPerformed, 1
    

    def centerJMenuItemActionPerformed(evt)
        begin
            ::Org::Allbinary::Graphics::J2me::Workarea::Canvas::Event::MyCanvasEventService.fire(::Org::Allbinary::Graphics::J2me::Workarea::Canvas::Event::MyCanvasEvent.new(::Org::Allbinary::Graphics::J2me::Workarea::Canvas::Event::MyCanvasEventSource.new(::Org::Allbinary::Graphics::J2me::Workarea::Canvas::Event::MyCanvasEventService::CENTER, nil)))
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "centerJMenuItemActionPerformed", e)
        end
    end
    java_overload :centerJMenuItemActionPerformed, 1
    

    def saveJButtonActionPerformed(evt)
        self.save()
    end
    java_overload :saveJButtonActionPerformed, 1
    

    def jButton1ActionPerformed(evt)
        self.export()
    end
    java_overload :jButton1ActionPerformed, 1
    

    def jMenuItem1ActionPerformed(evt)
        begin
            self.getSelectedWorkArea().autoMirror()
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "centerJMenuItemActionPerformed", e)
        end
    end
    java_overload :jMenuItem1ActionPerformed, 1
    

    def onFiles(files)
        begin
            @logUtil.putF("Reading: " + (files).to_s, self, "onFiles")
            (0...files.length).each do |index|
                document = ::Org::Allbinary::Dom::DomHelper.getInstance().createDocument(files[index])
                workAreaJPanel = ::Org::Allbinary::Graphics::J2me::Workarea::WorkAreaJPanel.new(::Org::Allbinary::Graphics::J2me::Workarea::WorkAreaDom.new(document), self.getSize())
                workAreaJPanel.setLayout(GridLayout.new(1, 1))
                self.add(workAreaJPanel)
            end
            @fileJDialog.setVisible(false)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "onFiles", e)
        end
    end
    java_overload :onFiles, 1
    

    def newGraphics()
        begin
            newName = "graphic" + (MyFrame.numberOfWorkAreas).to_s
            dim = self.getSize()
            newDialog = ::Org::Allbinary::Graphics::J2me::Dialog::NewWorkAreaJDialog.new(self, false, dim, newName)
        rescue StandardError => e
            if ::Org::Allbinary::Log::LOGGING.contains(::Org::Allbinary::Log::LOGGING::MENUEVENT)
                @guiLog.put(@commonStrings.EXCEPTION, self, "newJMenuItemActionPerformed", e)
            end
        end
    end
    java_overload :newGraphics, 0
    

    def openGraphics()
        begin
            @logUtil.putF("Starting", self, "openImageJMenuItemActionPerformed")
            @fileJDialog.setVisible(true)
        rescue StandardError => e
            if ::Org::Allbinary::Log::LOGGING.contains(::Org::Allbinary::Log::LOGGING::MENUEVENT)
                @guiLog.put(@commonStrings.EXCEPTION, self, "open", e)
            end
        end
    end
    java_overload :openGraphics, 0
    

    def export()
        begin
            workAreaJPanel = @jTabbedPane.getSelectedComponent()
            file = File.new(SAVE_PATH + "/" + workAreaJPanel.getName() + @JAVAEXTENSION)
            document = workAreaJPanel.toDocument()
            @logUtil.putF("Export: " + ::Org::Allbinary::Dom::DomHelper.getInstance().toString(document), self, "exportJMenuItem1ActionPerformed")
            @xslHelper.export(file, (MyFrame::TEMPLATE_EXPORT_PATH).to_s + "/" + @JAVA_TEMPLATE, document)
        rescue StandardError => e
            if ::Org::Allbinary::Log::LOGGING.contains(::Org::Allbinary::Log::LOGGING::MENUEVENT)
                @guiLog.put(@commonStrings.EXCEPTION, self, "export", e)
            end
        end
    end
    java_overload :export, 0
    

    def save()
        begin
            workAreaJPanel = @jTabbedPane.getSelectedComponent()
            ::Org::Allbinary::Dom::DomHelper.getInstance().save(File.new(SAVE_PATH + "/" + workAreaJPanel.getName() + @SAVEEXTENSION), workAreaJPanel.toDocument())
        rescue StandardError => e
            if ::Org::Allbinary::Log::LOGGING.contains(::Org::Allbinary::Log::LOGGING::MENUEVENT)
                @guiLog.put(@commonStrings.EXCEPTION, self, @commonStrings.SAVE, e)
            end
        end
    end
    java_overload :save, 0
    

    # throws Exception
    def onHashMap(hashMap)
        angleIncrementInteger = hashMap.get((0).to_s)
        totalRotationInteger = hashMap.get((1).to_s)
        self.getSelectedWorkArea().autoRotate(angleIncrementInteger.to_i, totalRotationInteger.to_i)
    end
    java_overload :onHashMap, 1
    

    def getSelectedWorkArea()
        return @jTabbedPane.getSelectedComponent()
    end
    java_overload :getSelectedWorkArea, 0
    

    def updateSelectedWorkArea()
        numberOfTabs = @jTabbedPane.getTabCount()
        (0...numberOfTabs).each do |index|
            workAreaJPanel = @jTabbedPane.getComponentAt(index)
            workAreaJPanel.deselect()
        end
        workAreaJPanel = @jTabbedPane.getSelectedComponent()
        if workAreaJPanel != nil
            workAreaJPanel.select()
        end
    end
    java_overload :updateSelectedWorkArea, 0
    

    # throws Exception
    def add(newCanvasInterface)
        begin
            @@numberOfWorkAreas += 1
            if @@numberOfWorkAreas == MyFrame::MAXWORKAREAS
                raise StandardError.new()
            end
            @jTabbedPane.addTab(newCanvasInterface.getName(), newCanvasInterface)
            @jTabbedPane.setSelectedComponent(newCanvasInterface)
            animationThread = ::Java::Lang::JavaThread.new(newCanvasInterface)
            animationThread.start()
            self.updateSelectedWorkArea()
        rescue StandardError => e
            if ::Org::Allbinary::Log::LOGGING.contains(::Org::Allbinary::Log::LOGGING::GRAPHICSCREATION)
                @guiLog.put(@commonStrings.EXCEPTION, self, "addNewCanvas", e)
            end
        end
    end
    java_overload :add, 1
    

    def keyPressed(keyEvent)
        self.getSelectedWorkArea().keyPressed(keyEvent)
    end
    java_overload :keyPressed, 1
    

    def keyReleased(keyEvent)
    end
    java_overload :keyReleased, 1
    

    def keyTyped(keyEvent)
    end
    java_overload :keyTyped, 1
    

    def self.main(args)
        begin
            ::Org::Allbinary::MathPackage::AngleFactory.getInstance()
            ::Org::Allbinary::Logic::MathPackage::SmallIntegerSingletonFactory.getInstance().init()
            MyFrame.new().show()
        rescue StandardError => e
            logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
            logUtil.put(::Org::Allbinary::StringPackage::CommonStrings.getInstance().EXCEPTION, nil, "main", e)
        end
    end

    def self.numberOfWorkAreas()
        MyFrame.java_static_fields unless @java_static_fields_started
        return defined?(@@numberOfWorkAreas) ? @@numberOfWorkAreas : nil
    end

    def self.numberOfWorkAreas=(value)
        MyFrame.java_static_fields unless @java_static_fields_started
        @@numberOfWorkAreas = value
    end

    def self.statusJLabel()
        MyFrame.java_static_fields unless @java_static_fields_started
        return defined?(@@statusJLabel) ? @@statusJLabel : nil
    end

    def self.statusJLabel=(value)
        MyFrame.java_static_fields unless @java_static_fields_started
        @@statusJLabel = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:MAXWORKAREAS, 10)
        @@numberOfWorkAreas = 0
        const_set(:PATH, "G:/mnt/bc/mydev/work/graphics/AllBinaryGraphicsJavaApplication")
        begin
            const_set(:SAVE_PATH, (MyFrame::PATH).to_s + "/save")
            const_set(:TEMPLATE_EXPORT_PATH, (MyFrame::PATH).to_s + "/templates/export")
            @@statusJLabel = nil
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "MyFrame"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:MAXWORKAREAS, :PATH, :SAVE_PATH, :TEMPLATE_EXPORT_PATH].include?(name)
        end
        super
    end
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :XslHelper, "org/allbinary/data/tree/dom/XslHelper" unless const_defined?(:XslHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module Dom; autoload :DomHelper, "org/allbinary/dom/DomHelper" unless const_defined?(:DomHelper, false); end; end; end
module ::Org; module Allbinary; module Graphics; module J2me; module Dialog; autoload :NewWorkAreaJDialog, "org/allbinary/graphics/j2me/dialog/NewWorkAreaJDialog" unless const_defined?(:NewWorkAreaJDialog, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module J2me; module Dialog; autoload :RotateJDialog, "org/allbinary/graphics/j2me/dialog/RotateJDialog" unless const_defined?(:RotateJDialog, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module J2me; module Workarea; autoload :WorkAreaDom, "org/allbinary/graphics/j2me/workarea/WorkAreaDom" unless const_defined?(:WorkAreaDom, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module J2me; module Workarea; autoload :WorkAreaJPanel, "org/allbinary/graphics/j2me/workarea/WorkAreaJPanel" unless const_defined?(:WorkAreaJPanel, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module J2me; module Workarea; autoload :WorkAreaJPanelInterface, "org/allbinary/graphics/j2me/workarea/WorkAreaJPanelInterface" unless const_defined?(:WorkAreaJPanelInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module J2me; module Workarea; module Canvas; module Event; autoload :MyCanvasEvent, "org/allbinary/graphics/j2me/workarea/canvas/event/MyCanvasEvent" unless const_defined?(:MyCanvasEvent, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module J2me; module Workarea; module Canvas; module Event; autoload :MyCanvasEventService, "org/allbinary/graphics/j2me/workarea/canvas/event/MyCanvasEventService" unless const_defined?(:MyCanvasEventService, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module J2me; module Workarea; module Canvas; module Event; autoload :MyCanvasEventSource, "org/allbinary/graphics/j2me/workarea/canvas/event/MyCanvasEventSource" unless const_defined?(:MyCanvasEventSource, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Gui; module Dialog; autoload :FileJDialog, "org/allbinary/gui/dialog/FileJDialog" unless const_defined?(:FileJDialog, false); end; end; end; end
module ::Org; module Allbinary; module Log; autoload :LOGGING, "org/allbinary/log/LOGGING" unless const_defined?(:LOGGING, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :GuiLog, "org/allbinary/logic/communication/log/GuiLog" unless const_defined?(:GuiLog, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :SmallIntegerSingletonFactory, "org/allbinary/logic/math/SmallIntegerSingletonFactory" unless const_defined?(:SmallIntegerSingletonFactory, false); end; end; end; end
module ::Org; module Allbinary; module MathPackage; autoload :AngleFactory, "org/allbinary/math/AngleFactory" unless const_defined?(:AngleFactory, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonLabels, "org/allbinary/string/CommonLabels" unless const_defined?(:CommonLabels, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
require "java/lang/Runnable"
require "java/lang/Thread"
require "java/lang/System"

begin
    MyFrame.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

