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

# require "java/awt"
# require "java/io/File"
# require "javax/swing"
require "org/allbinary/gui/dialog/FileJDialogListenerInterface"
require "org/allbinary/gui/dialog/HashMapJDialogListenerInterface"

class MyFrame < JFrame
    include FileJDialogListenerInterface
    include HashMapJDialogListenerInterface
    include KeyListener
    attr_accessor :logUtil, :commonStrings, :guiLog, :xslHelper, :JAVA_TEMPLATE, :SAVEEXTENSION, :JAVAEXTENSION, :fileJDialog, :rotateJDialog, :animateJButton, :autoDamageJMenuItem, :autoExplodeJMenuItem, :autoGrowJMenuItem, :autoRotateGenerationJMenuItem, :autoSheildMenuItem, :autoShrinkJMenuItem, :centerJMenuItem, :copyJMenuItem1, :exitJMenuItem, :explodeAllJMenuItem, :exportJMenuItem1, :fileJMenu, :frameJMenu, :generateJMenu, :insertAfterJMenuItem, :insertBeforeJMenuItem, :jButton1, :jButton2, :jButton3, :jButton4, :jButton41, :jButton5, :jMenu1, :jMenuItem1, :jPanel1, :jTabbedPane, :jToolBar1, :mainJPanel, :menuJMenuBar, :newJMenuItem, :nextFrameJMenuItem, :objectJMenu, :openJButton, :openJMenuItem, :playJButton, :previousFrameJMenuItem, :removeJMenuItem, :saveAsJMenuItem, :saveJButton, :saveJMenuItem, :statusJPanel, :stopJjButton, :viewJMenu, :zoomInJMenuItem, :zoomOutJMenuItem

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @guiLog = GuiLog.getInstance()
        @xslHelper = XslHelper.getInstance()
        @JAVA_TEMPLATE = "svgExport.xsl"
        @SAVEEXTENSION = ".gxml"
        @JAVAEXTENSION = ".javax"
        @fileJDialog = nil
        @rotateJDialog = nil
        @animateJButton = nil
        @autoDamageJMenuItem = nil
        @autoExplodeJMenuItem = nil
        @autoGrowJMenuItem = nil
        @autoRotateGenerationJMenuItem = nil
        @autoSheildMenuItem = nil
        @autoShrinkJMenuItem = nil
        @centerJMenuItem = nil
        @copyJMenuItem1 = nil
        @exitJMenuItem = nil
        @explodeAllJMenuItem = nil
        @exportJMenuItem1 = nil
        @fileJMenu = nil
        @frameJMenu = nil
        @generateJMenu = nil
        @insertAfterJMenuItem = nil
        @insertBeforeJMenuItem = nil
        @jButton1 = nil
        @jButton2 = nil
        @jButton3 = nil
        @jButton4 = nil
        @jButton41 = nil
        @jButton5 = nil
        @jMenu1 = nil
        @jMenuItem1 = nil
        @jPanel1 = nil
        @jTabbedPane = nil
        @jToolBar1 = nil
        @mainJPanel = nil
        @menuJMenuBar = nil
        @newJMenuItem = nil
        @nextFrameJMenuItem = nil
        @objectJMenu = nil
        @openJButton = nil
        @openJMenuItem = nil
        @playJButton = nil
        @previousFrameJMenuItem = nil
        @removeJMenuItem = nil
        @saveAsJMenuItem = nil
        @saveJButton = nil
        @saveJMenuItem = nil
        @statusJPanel = nil
        @stopJjButton = nil
        @viewJMenu = nil
        @zoomInJMenuItem = nil
        @zoomOutJMenuItem = nil
    end
    

    def initialize()
        super()
        initialize_fields
        self.initComponents()
        self.setSize(Dimension.new(550, 400))
        @mainJPanel.setSize(Dimension.new(550, 400))
        @jTabbedPane.setSize(Dimension.new(550, 400))
        @fileJDialog = FileJDialog.new()
        @fileJDialog.addFinishedListener(self)
        @rotateJDialog = RotateJDialog.new(self, false)
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
        end.new())
        @jButton2.setText("New")
        @jButton2.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                jButton2ActionPerformed(evt)
            end
        end.new())
        @jToolBar1.add(@jButton2)
        @saveJButton.setText("Save")
        @saveJButton.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                saveJButtonActionPerformed(evt)
            end
        end.new())
        @jToolBar1.add(@saveJButton)
        @jButton1.setText("Export")
        @jButton1.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                jButton1ActionPerformed(evt)
            end
        end.new())
        @jToolBar1.add(@jButton1)
        @openJButton.setText("Open")
        @openJButton.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                openJButtonActionPerformed(evt)
            end
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
        end.new())
        @jToolBar1.add(@playJButton)
        @stopJjButton.setText("Stop")
        @stopJjButton.addMouseListener(Class.new(MouseAdapter.is_a?(Class) ? MouseAdapter : Object) do
            include(MouseAdapter) unless MouseAdapter.is_a?(Class)
            

            def mousePressed(evt)
                stopJjButtonMousePressed(evt)
            end
        end.new())
        @jToolBar1.add(@stopJjButton)
        getContentPane().add(@jToolBar1, java.awt.BorderLayout.NORTH)
        @jPanel1.setLayout(GridLayout.new(1, 0))
        @mainJPanel.setLayout(GridLayout.new(1, 0))
        @jTabbedPane.setMinimumSize(Dimension.new(550, 400))
        @jTabbedPane.addChangeListener(Class.new(ChangeListener.is_a?(Class) ? ChangeListener : Object) do
            include(ChangeListener) unless ChangeListener.is_a?(Class)
            

            def stateChanged(evt)
                jTabbedPaneStateChanged(evt)
            end
        end.new())
        @mainJPanel.add(@jTabbedPane)
        @jPanel1.add(@mainJPanel)
        getContentPane().add(@jPanel1, java.awt.BorderLayout.CENTER)
        @statusJPanel.setLayout(GridLayout.new(1, 0))
        MyFrame.statusJLabel.setText("Status Bar")
        @statusJPanel.add(MyFrame.statusJLabel)
        getContentPane().add(@statusJPanel, java.awt.BorderLayout.SOUTH)
        @fileJMenu.setText("File")
        @fileJMenu.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                fileJMenuActionPerformed(evt)
            end
        end.new())
        @newJMenuItem.setText("New")
        @newJMenuItem.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                newJMenuItemActionPerformed(evt)
            end
        end.new())
        @fileJMenu.add(@newJMenuItem)
        @openJMenuItem.setText("Open")
        @openJMenuItem.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                openJMenuItemActionPerformed(evt)
            end
        end.new())
        @fileJMenu.add(@openJMenuItem)
        @saveJMenuItem.setText("Save")
        @saveJMenuItem.addMouseListener(Class.new(MouseAdapter.is_a?(Class) ? MouseAdapter : Object) do
            include(MouseAdapter) unless MouseAdapter.is_a?(Class)
            

            def mousePressed(evt)
                saveJMenuItemMousePressed(evt)
            end
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
        end.new())
        @fileJMenu.add(@exportJMenuItem1)
        @exitJMenuItem.setText("Exit")
        @exitJMenuItem.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                exitJMenuItemActionPerformed(evt)
            end
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
        end.new())
        @viewJMenu.add(@zoomInJMenuItem)
        @zoomOutJMenuItem.setText("Zoom Out")
        @zoomOutJMenuItem.addMouseListener(Class.new(MouseAdapter.is_a?(Class) ? MouseAdapter : Object) do
            include(MouseAdapter) unless MouseAdapter.is_a?(Class)
            

            def mousePressed(evt)
                zoomOutJMenuItemMousePressed(evt)
            end
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
        end.new())
        @objectJMenu.add(@explodeAllJMenuItem)
        @menuJMenuBar.add(@objectJMenu)
        @frameJMenu.setText("Frame")
        @frameJMenu.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                frameJMenuActionPerformed(evt)
            end
        end.new())
        @previousFrameJMenuItem.setText("Previous")
        @frameJMenu.add(@previousFrameJMenuItem)
        @nextFrameJMenuItem.setText(CommonLabels.getInstance().NEXT)
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
        end.new())
        @generateJMenu.add(@jMenuItem1)
        @autoRotateGenerationJMenuItem.setText("Rotate")
        @autoRotateGenerationJMenuItem.addMouseListener(Class.new(MouseAdapter.is_a?(Class) ? MouseAdapter : Object) do
            include(MouseAdapter) unless MouseAdapter.is_a?(Class)
            

            def mousePressed(evt)
                autoRotateGenerationJMenuItemMousePressed(evt)
            end
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
    

    def explodeAllJMenuItemMousePressed(evt)
        begin
            MyCanvasEventService.fire(MyCanvasEvent.new(MyCanvasEventSource.new(MyCanvasEventService::EXPLODE, nil)))
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "explodeAllJMenuItemMousePressed", e)
        end
    end
    

    def autoExplodeJMenuItemMousePressed(evt)
        begin
            MyCanvasEventService.fire(MyCanvasEvent.new(MyCanvasEventSource.new(MyCanvasEventService::AUTOEXPLODE, nil)))
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "autoExplodeJMenuItemMousePressed", e)
        end
    end
    

    def stopJjButtonMousePressed(evt)
        self.getSelectedWorkArea().stop()
    end
    

    def playJButtonMousePressed(evt)
        self.getSelectedWorkArea().play()
    end
    

    def autoRotateGenerationJMenuItemMousePressed(evt)
        @rotateJDialog.setVisible(true)
    end
    

    def zoomOutJMenuItemMousePressed(evt)
        self.getSelectedWorkArea().changeZoom(-1)
    end
    

    def zoomInJMenuItemMousePressed(evt)
        self.getSelectedWorkArea().changeZoom(1)
    end
    

    def openJMenuItemActionPerformed(evt)
        self.openGraphics()
    end
    

    def exportJMenuItem1ActionPerformed(evt)
        self.export()
    end
    

    def saveJMenuItemMousePressed(evt)
        self.save()
    end
    

    def jTabbedPaneStateChanged(evt)
        self.updateSelectedWorkArea()
    end
    

    def frameJMenuActionPerformed(evt)
    end
    

    def exitJMenuItemActionPerformed(evt)
        exit(0)
    end
    

    def newJMenuItemActionPerformed(evt)
        self.newGraphics()
    end
    

    def fileJMenuActionPerformed(evt)
    end
    

    def exitForm(evt)
        exit(0)
    end
    

    def openJButtonActionPerformed(evt)
        self.openGraphics()
    end
    

    def jButton2ActionPerformed(evt)
        self.newGraphics()
    end
    

    def centerJMenuItemActionPerformed(evt)
        begin
            MyCanvasEventService.fire(MyCanvasEvent.new(MyCanvasEventSource.new(MyCanvasEventService::CENTER, nil)))
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "centerJMenuItemActionPerformed", e)
        end
    end
    

    def saveJButtonActionPerformed(evt)
        self.save()
    end
    

    def jButton1ActionPerformed(evt)
        self.export()
    end
    

    def jMenuItem1ActionPerformed(evt)
        begin
            self.getSelectedWorkArea().autoMirror()
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "centerJMenuItemActionPerformed", e)
        end
    end
    

    def onFiles(files)
        begin
            @logUtil.putF("Reading: " + (files).to_s, self, "onFiles")
            (0...files.length).each do |index|
                document = DomHelper.getInstance().createDocument(files[index])
                workAreaJPanel = WorkAreaJPanel.new(WorkAreaDom.new(document), self.getSize())
                workAreaJPanel.setLayout(GridLayout.new(1, 1))
                self.add(workAreaJPanel)
            end
            @fileJDialog.setVisible(false)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "onFiles", e)
        end
    end
    

    def newGraphics()
        begin
            newName = "graphic" + (MyFrame.numberOfWorkAreas).to_s
            dim = self.getSize()
            newDialog = NewWorkAreaJDialog.new(self, false, dim, newName)
        rescue StandardError => e
            if LOGGING.contains(LOGGING.MENUEVENT)
                @guiLog.put(@commonStrings.EXCEPTION, self, "newJMenuItemActionPerformed", e)
            end
        end
    end
    

    def openGraphics()
        begin
            @logUtil.putF("Starting", self, "openImageJMenuItemActionPerformed")
            @fileJDialog.setVisible(true)
        rescue StandardError => e
            if LOGGING.contains(LOGGING.MENUEVENT)
                @guiLog.put(@commonStrings.EXCEPTION, self, "open", e)
            end
        end
    end
    

    def export()
        begin
            workAreaJPanel = @jTabbedPane.getSelectedComponent()
            file = File.new(SAVE_PATH + "/" + workAreaJPanel.getName() + @JAVAEXTENSION)
            document = workAreaJPanel.toDocument()
            @logUtil.putF("Export: " + DomHelper.getInstance().toString(document), self, "exportJMenuItem1ActionPerformed")
            @xslHelper.export(file, (MyFrame::TEMPLATE_EXPORT_PATH).to_s + "/" + @JAVA_TEMPLATE, document)
        rescue StandardError => e
            if LOGGING.contains(LOGGING.MENUEVENT)
                @guiLog.put(@commonStrings.EXCEPTION, self, "export", e)
            end
        end
    end
    

    def save()
        begin
            workAreaJPanel = @jTabbedPane.getSelectedComponent()
            DomHelper.getInstance().save(File.new(SAVE_PATH + "/" + workAreaJPanel.getName() + @SAVEEXTENSION), workAreaJPanel.toDocument())
        rescue StandardError => e
            if LOGGING.contains(LOGGING.MENUEVENT)
                @guiLog.put(@commonStrings.EXCEPTION, self, @commonStrings.SAVE, e)
            end
        end
    end
    

    # throws Exception
    def onHashMap(hashMap)
        angleIncrementInteger = hashMap.get((0).to_s)
        totalRotationInteger = hashMap.get((1).to_s)
        self.getSelectedWorkArea().autoRotate(angleIncrementInteger.to_i, totalRotationInteger.to_i)
    end
    

    def getSelectedWorkArea()
        return @jTabbedPane.getSelectedComponent()
    end
    

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
    

    # throws Exception
    def add(newCanvasInterface)
        begin
            @@numberOfWorkAreas += 1
            if @@numberOfWorkAreas == MyFrame::MAXWORKAREAS
                raise StandardError.new()
            end
            @jTabbedPane.addTab(newCanvasInterface.getName(), newCanvasInterface)
            @jTabbedPane.setSelectedComponent(newCanvasInterface)
            animationThread = JavaThread.new(newCanvasInterface)
            animationThread.start()
            self.updateSelectedWorkArea()
        rescue StandardError => e
            if LOGGING.contains(LOGGING.GRAPHICSCREATION)
                @guiLog.put(@commonStrings.EXCEPTION, self, "addNewCanvas", e)
            end
        end
    end
    

    def keyPressed(keyEvent)
        self.getSelectedWorkArea().keyPressed(keyEvent)
    end
    

    def keyReleased(keyEvent)
    end
    

    def keyTyped(keyEvent)
    end
    

    def self.main(args)
        begin
            AngleFactory.getInstance()
            SmallIntegerSingletonFactory.getInstance().init()
            MyFrame.new().show()
        rescue StandardError => e
            logUtil = LogUtil.getInstance()
            logUtil.put(CommonStrings.getInstance().EXCEPTION, nil, "main", e)
        end
    end

    def self.numberOfWorkAreas()
        return defined?(@@numberOfWorkAreas) ? @@numberOfWorkAreas : nil
    end

    def self.numberOfWorkAreas=(value)
        @@numberOfWorkAreas = value
    end

    def self.statusJLabel()
        return defined?(@@statusJLabel) ? @@statusJLabel : nil
    end

    def self.statusJLabel=(value)
        @@statusJLabel = value
    end
end

require "java/util/HashMap"
require "org/allbinary/data/tree/dom/XslHelper"
require "org/allbinary/dom/DomHelper"
require "org/allbinary/graphics/j2me/dialog/NewWorkAreaJDialog"
require "org/allbinary/graphics/j2me/dialog/RotateJDialog"
require "org/allbinary/graphics/j2me/workarea/WorkAreaDom"
require "org/allbinary/graphics/j2me/workarea/WorkAreaJPanel"
require "org/allbinary/graphics/j2me/workarea/WorkAreaJPanelInterface"
require "org/allbinary/graphics/j2me/workarea/canvas/event/MyCanvasEvent"
require "org/allbinary/graphics/j2me/workarea/canvas/event/MyCanvasEventService"
require "org/allbinary/graphics/j2me/workarea/canvas/event/MyCanvasEventSource"
require "org/allbinary/gui/dialog/FileJDialog"
require "org/allbinary/log/LOGGING"
require "org/allbinary/logic/communication/log/GuiLog"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/math/SmallIntegerSingletonFactory"
require "org/allbinary/math/AngleFactory"
require "org/allbinary/string/CommonLabels"
require "org/allbinary/string/CommonStrings"
require "org/w3c/dom/Document"
require "java/lang/Runnable"
require "java/lang/Thread"
require "java/lang/System"

class MyFrame
    MAXWORKAREAS = 10
    @@numberOfWorkAreas = 0
    PATH = "G:/mnt/bc/mydev/work/graphics/AllBinaryGraphicsJavaApplication"
    SAVE_PATH = (MyFrame::PATH).to_s + "/save"
    TEMPLATE_EXPORT_PATH = (MyFrame::PATH).to_s + "/templates/export"
    @@statusJLabel = nil
end

