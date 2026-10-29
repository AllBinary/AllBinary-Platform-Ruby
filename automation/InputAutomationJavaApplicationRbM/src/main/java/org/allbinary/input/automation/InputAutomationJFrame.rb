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
# package org.allbinary.input.automation

# require "java/net/URI"
# require "java/net/URL"
# require "java/awt/Desktop"
# require "java/util/List"
# require "javax/swing/ImageIcon"
# require "javax/swing/JDialog"
# require "javax/help/HelpSet"
# require "javax/help/event/HelpSetEvent"
# require "javax/help/event/HelpSetListener"
require "bundle/input/automation/module/configuration/InputAutomationConfigurationModuleChangeListener"
require "bundle/input/automation/robot/InputAutomationRobotChangeListener"

class InputAutomationJFrame < JFrame
    include InputAutomationConfigurationModuleChangeListener
    include InputAutomationRobotChangeListener
    include HelpSetListener
    attr_accessor :logUtil, :commonStrings, :inputAutomationModuleConfigurations, :inputAutomationModuleFactory, :inputAutomationModuleInterface, :runnableInterface, :thread, :helpSet, :uri, :aboutJMenuItem, :automationModuleConfigurationJPanel, :gameRobotJTabbedPane, :helpJMenuItem, :inputAutomationModuleJList, :inputAutomationModuleJPanel, :jScrollPane1, :mainJMenuBar, :modulesJMenuItem, :noModuleSelectedJDialog, :noModuleSelectedJLabel, :optionsJMenu, :processingJMenu, :startJMenuItem, :stopJMenuItem, :stopOnFocusJCheckBoxMenuItem, :subscriptionJMenuItem, :toolsJMenu, :updatesJMenuItem

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @inputAutomationModuleConfigurations = InputAutomationModuleConfigurations.new()
        @inputAutomationModuleFactory = nil
        @inputAutomationModuleInterface = nil
        @runnableInterface = nil
        @thread = nil
        @helpSet = nil
        @uri = URI.new("http://geocities.com/allbinary/")
        @aboutJMenuItem = nil
        @automationModuleConfigurationJPanel = nil
        @gameRobotJTabbedPane = nil
        @helpJMenuItem = nil
        @inputAutomationModuleJList = nil
        @inputAutomationModuleJPanel = nil
        @jScrollPane1 = nil
        @mainJMenuBar = nil
        @modulesJMenuItem = nil
        @noModuleSelectedJDialog = nil
        @noModuleSelectedJLabel = nil
        @optionsJMenu = nil
        @processingJMenu = nil
        @startJMenuItem = nil
        @stopJMenuItem = nil
        @stopOnFocusJCheckBoxMenuItem = nil
        @subscriptionJMenuItem = nil
        @toolsJMenu = nil
        @updatesJMenuItem = nil
    end
    

    def initialize()
        super()
        initialize_fields
        self.initComponents()
        url = self.class.getResource("/help/Help.hs")
        @logUtil.putF("URL: " + (url).to_s, self, @commonStrings.CONSTRUCTOR)
        @helpSet = JavaHelpUtil.getInstance().getHelpSet(url)
        url = self.class.getResource("/resources/allbinaryicon8bit.jpg")
        imageIcon = ImageIcon.new(url)
        self.setIconImage(imageIcon.getImage())
        self.init()
    end
    

    def helpSetAdded(helpSetEvent)
        @helpSet.add(helpSetEvent.getHelpSet())
    end
    

    def helpSetRemoved(helpSetEvent)
        @helpSet.remove(helpSetEvent.getHelpSet())
    end
    

    # throws Exception
    def init()
        inputAutomationConfigurationFactory = InputAutomationConfigurationFactory.getInstance()
        inputAutomationConfigurationFactory.init(InputAutomationClientInformationFactory.getInstance())
        inputAutomationModuleConfigurationList = inputAutomationConfigurationFactory.inputAutomationConfiguration.getInputAutomationModuleConfigurationList()
        if inputAutomationModuleConfigurationList == nil
        else
            @inputAutomationModuleConfigurations = InputAutomationModuleConfigurations.new(inputAutomationModuleConfigurationList)
        end
        @inputAutomationModuleFactory = InputAutomationModuleFactoryFactory.new(@inputAutomationModuleConfigurations, self)
        (JListSwingWorker.new(@inputAutomationModuleJList, @inputAutomationModuleFactory.getListModel())).execute()
        @gameRobotJTabbedPane.setEnabledAt(1, false)
        @gameRobotJTabbedPane.setSelectedIndex(0)
    end
    

    def initComponents()
        @noModuleSelectedJDialog = JDialog.new()
        @noModuleSelectedJLabel = JLabel.new()
        @gameRobotJTabbedPane = JTabbedPane.new()
        @inputAutomationModuleJPanel = JPanel.new()
        @jScrollPane1 = JScrollPane.new()
        @inputAutomationModuleJList = JList.new()
        @automationModuleConfigurationJPanel = JPanel.new()
        @mainJMenuBar = JMenuBar.new()
        @processingJMenu = JMenu.new()
        @startJMenuItem = JMenuItem.new()
        @stopJMenuItem = JMenuItem.new()
        @optionsJMenu = JMenu.new()
        @stopOnFocusJCheckBoxMenuItem = JCheckBoxMenuItem.new()
        @toolsJMenu = JMenu.new()
        @helpJMenuItem = JMenuItem.new()
        @updatesJMenuItem = JMenuItem.new()
        @subscriptionJMenuItem = JMenuItem.new()
        @modulesJMenuItem = JMenuItem.new()
        @aboutJMenuItem = JMenuItem.new()
        @noModuleSelectedJDialog.setMinimumSize(Dimension.new(200, 100))
        @noModuleSelectedJLabel.setText("Please Select A Module")
        noModuleSelectedJDialogLayout = GroupLayout.new(@noModuleSelectedJDialog.getContentPane())
        @noModuleSelectedJDialog.getContentPane().setLayout(noModuleSelectedJDialogLayout)
        noModuleSelectedJDialogLayout.setHorizontalGroup(noModuleSelectedJDialogLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addGroup(noModuleSelectedJDialogLayout.createSequentialGroup().addContainerGap().addComponent(@noModuleSelectedJLabel).addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, 32767)))
        noModuleSelectedJDialogLayout.setVerticalGroup(noModuleSelectedJDialogLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addComponent(@noModuleSelectedJLabel, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, 48, 32767))
        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE)
        self.setMinimumSize(Dimension.new(325, 215))
        setResizable(false)
        addWindowFocusListener(Class.new(WindowFocusListener.is_a?(Class) ? WindowFocusListener : Object) do
            include(WindowFocusListener) unless WindowFocusListener.is_a?(Class)
            

            def windowGainedFocus(evt)
                formWindowGainedFocus(evt)
            end
            

            def windowLostFocus(evt)
                formWindowLostFocus(evt)
            end
        end.new())
        addFocusListener(Class.new(FocusAdapter.is_a?(Class) ? FocusAdapter : Object) do
            include(FocusAdapter) unless FocusAdapter.is_a?(Class)
            

            def focusGained(evt)
                formFocusGained(evt)
            end
            

            def focusLost(evt)
                formFocusLost(evt)
            end
        end.new())
        @gameRobotJTabbedPane.setMinimumSize(Dimension.new(320, 200))
        @inputAutomationModuleJList.setMinimumSize(Dimension.new(200, 0))
        @inputAutomationModuleJList.addListSelectionListener(Class.new(ListSelectionListener.is_a?(Class) ? ListSelectionListener : Object) do
            include(ListSelectionListener) unless ListSelectionListener.is_a?(Class)
            

            def valueChanged(evt)
                inputAutomationModuleJListValueChanged(evt)
            end
        end.new())
        @jScrollPane1.setViewportView(@inputAutomationModuleJList)
        inputAutomationModuleJPanelLayout = GroupLayout.new(@inputAutomationModuleJPanel)
        @inputAutomationModuleJPanel.setLayout(inputAutomationModuleJPanelLayout)
        inputAutomationModuleJPanelLayout.setHorizontalGroup(inputAutomationModuleJPanelLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addGroup(inputAutomationModuleJPanelLayout.createSequentialGroup().addComponent(@jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 199, javax.swing.GroupLayout.PREFERRED_SIZE).addContainerGap(367, 32767)))
        inputAutomationModuleJPanelLayout.setVerticalGroup(inputAutomationModuleJPanelLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addGroup(inputAutomationModuleJPanelLayout.createSequentialGroup().addComponent(@jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 330, javax.swing.GroupLayout.PREFERRED_SIZE).addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, 32767)))
        @gameRobotJTabbedPane.addTab("Modules", @inputAutomationModuleJPanel)
        automationModuleConfigurationJPanelLayout = GroupLayout.new(@automationModuleConfigurationJPanel)
        @automationModuleConfigurationJPanel.setLayout(automationModuleConfigurationJPanelLayout)
        automationModuleConfigurationJPanelLayout.setHorizontalGroup(automationModuleConfigurationJPanelLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addGap(0, 566, 32767))
        automationModuleConfigurationJPanelLayout.setVerticalGroup(automationModuleConfigurationJPanelLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addGap(0, 334, 32767))
        @gameRobotJTabbedPane.addTab("Configuration", @automationModuleConfigurationJPanel)
        @processingJMenu.setText("Processing")
        @processingJMenu.setToolTipText("Set module processing state")
        @startJMenuItem.setText(@commonStrings.START)
        @startJMenuItem.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                startJMenuItemActionPerformed(evt)
            end
        end.new())
        @processingJMenu.add(@startJMenuItem)
        @stopJMenuItem.setText("Stop")
        @stopJMenuItem.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                stopJMenuItemActionPerformed(evt)
            end
        end.new())
        @processingJMenu.add(@stopJMenuItem)
        @mainJMenuBar.add(@processingJMenu)
        @optionsJMenu.setText("Options")
        @optionsJMenu.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                optionsJMenuActionPerformed(evt)
            end
        end.new())
        @stopOnFocusJCheckBoxMenuItem.setSelected(true)
        @stopOnFocusJCheckBoxMenuItem.setEnabled(false)
        @stopOnFocusJCheckBoxMenuItem.setLabel("Stop Module On Focus")
        @stopOnFocusJCheckBoxMenuItem.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                stopOnFocusJCheckBoxMenuItemActionPerformed(evt)
            end
        end.new())
        @optionsJMenu.add(@stopOnFocusJCheckBoxMenuItem)
        @mainJMenuBar.add(@optionsJMenu)
        @toolsJMenu.setText("Help")
        @helpJMenuItem.setText("Help")
        @helpJMenuItem.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                helpJMenuItemActionPerformed(evt)
            end
        end.new())
        @toolsJMenu.add(@helpJMenuItem)
        @updatesJMenuItem.setText("Updates")
        @updatesJMenuItem.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                updatesJMenuItemActionPerformed(evt)
            end
        end.new())
        @toolsJMenu.add(@updatesJMenuItem)
        @subscriptionJMenuItem.setText("Subscription")
        @subscriptionJMenuItem.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                subscriptionJMenuItemActionPerformed(evt)
            end
        end.new())
        @toolsJMenu.add(@subscriptionJMenuItem)
        @modulesJMenuItem.setText("Module Manager")
        @modulesJMenuItem.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                modulesJMenuItemActionPerformed(evt)
            end
        end.new())
        @toolsJMenu.add(@modulesJMenuItem)
        @aboutJMenuItem.setText("About")
        @aboutJMenuItem.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                aboutJMenuItemActionPerformed(evt)
            end
        end.new())
        @toolsJMenu.add(@aboutJMenuItem)
        @mainJMenuBar.add(@toolsJMenu)
        setJMenuBar(@mainJMenuBar)
        layout = GroupLayout.new(getContentPane())
        getContentPane().setLayout(layout)
        layout.setHorizontalGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addComponent(@gameRobotJTabbedPane, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, 571, 32767))
        layout.setVerticalGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addComponent(@gameRobotJTabbedPane, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, 359, 32767))
        pack()
    end
    

    def subscriptionJMenuItemActionPerformed(evt)
        begin
            Desktop.getDesktop().browse(@uri)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "subscriptionJMenuItemActionPerformed", e)
        end
    end
    

    def updatesJMenuItemActionPerformed(evt)
        begin
            Desktop.getDesktop().browse(@uri)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "updatesJMenuItemActionPerformed", e)
        end
    end
    

    def aboutJMenuItemActionPerformed(evt)
        textJDialog = BasicTextJDialog.new("Copyright (c) 2002-2007 AllBinary")
        textJDialog.setVisible(true)
        textJDialog.setLocationRelativeTo(self)
    end
    

    def modulesJMenuItemActionPerformed(evt)
        begin
            DesktopBundle.new().start()
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "modulesJMenuItemActionPerformed", e)
        end
    end
    

    def helpJMenuItemActionPerformed(evt)
        JavaHelpUtil.getInstance().show(@helpSet)
    end
    

    def stopOnFocusJCheckBoxMenuItemActionPerformed(evt)
    end
    

    def optionsJMenuActionPerformed(evt)
    end
    

    def formWindowLostFocus(evt)
        @logUtil.putF("Nothing", self, "focusLost")
    end
    

    def formWindowGainedFocus(evt)
        if @stopOnFocusJCheckBoxMenuItem.isSelected()
            @logUtil.putF("Stopping", self, "focusGained")
            if @runnableInterface != nil
                @runnableInterface.setRunning(false)
            end
        end
    end
    

    def formFocusLost(evt)
    end
    

    def formFocusGained(evt)
    end
    

    def inputAutomationModuleJListValueChanged(evt)
        begin
            gameAutomationRobotModuleNameString = @inputAutomationModuleJList.getSelectedValue()
            if gameAutomationRobotModuleNameString != nil
                @inputAutomationModuleInterface = @inputAutomationModuleFactory.getInstance(gameAutomationRobotModuleNameString)
                self.getAutomationModuleConfigurationJPanel().removeAll()
                layout = self.getAutomationModuleConfigurationJPanel().getLayout()
                layout.setHorizontalGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addGap(0, 395, 32767).addComponent(@inputAutomationModuleInterface.getConfigurationJPanel(), javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                layout.setVerticalGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addGap(0, 256, 32767).addComponent(@inputAutomationModuleInterface.getConfigurationJPanel(), javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                @gameRobotJTabbedPane.setEnabledAt(1, true)
                @logUtil.putF("Setting Module: " + gameAutomationRobotModuleNameString + " and Configuration JPanel", self, "gameAutomationRobotModuleJListValueChanged")
            else
                @logUtil.putF("Module name was null", self, "gameAutomationRobotModuleJListValueChanged")
                @gameRobotJTabbedPane.setEnabledAt(1, false)
            end
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "gameAutomationRobotModuleJListValueChanged", e)
        end
    end
    

    def stopJMenuItemActionPerformed(evt)
        if @runnableInterface != nil
            @runnableInterface.setRunning(false)
        else
            @noModuleSelectedJDialog.setVisible(true)
            @noModuleSelectedJDialog.setLocationRelativeTo(self)
        end
    end
    

    def startJMenuItemActionPerformed(evt)
        begin
            @logUtil.putF("Starting", self, "startJMenuItemActionPerformed")
            if @inputAutomationModuleInterface != nil
                @runnableInterface = @inputAutomationModuleInterface.getInstance()
                if @runnableInterface != nil
                    @thread = JavaThread.new(@runnableInterface)
                    @thread.setPriority(JavaThread::MIN_PRIORITY + 1)
                    @thread.start()
                else
                    @logUtil.putF("Runnnable was null", self, "startJMenuItemActionPerformed")
                    @noModuleSelectedJDialog.setVisible(true)
                    @noModuleSelectedJDialog.setLocationRelativeTo(self)
                end
            else
                @logUtil.putF("InputAutomationModuleInterface was null", self, "startJMenuItemActionPerformed")
                @noModuleSelectedJDialog.setVisible(true)
                @noModuleSelectedJDialog.setLocationRelativeTo(self)
            end
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "startJMenuItemActionPerformed", e)
        end
    end
    

    def self.getInstance()
        return InputAutomationJFrame::INPUTAUTOMATION_JFRAME
    end
    

    def self.destroy()
        InputAutomationJFrame::INPUTAUTOMATION_JFRAME.setVisible(false)
    end
    

    def self.create(inputAutomationBundleActivatorListenerInterface)
        LogConfigTypeFactory.getInstance()
        appUrlGlobals = AppUrlGlobals.new()
        appUrlGlobals.setWebappPath("G:/mnt/bc/mydev/work_automation/automation/run/")
        URLGLOBALS.init(appUrlGlobals)
        WebappClassLoaderInfo.setLoader(appUrlGlobals.class.getClassLoader())
        java.awt.EventQueue.invokeLater(Class.new(ARunnable.is_a?(Class) ? ARunnable : Object) do
            include(ARunnable) unless ARunnable.is_a?(Class)
            

            def run()
                logUtil = LogUtil.getInstance()
                commonStrings = CommonStrings.getInstance()
                begin
                    logUtil.putF("Running", self, commonStrings.RUN)
                    INPUTAUTOMATION_JFRAME = InputAutomationJFrame.new()
                    InputRobotFactory.getInstance().addListener(InputAutomationJFrame.getInstance())
                    if inputAutomationBundleActivatorListenerInterface != nil
                        inputAutomationBundleActivatorListenerInterface.registerAsService()
                        inputAutomationBundleActivatorListenerInterface.useServices()
                    end
                    INPUTAUTOMATION_JFRAME.setVisible(true)
                rescue StandardError => e
                    logUtil.put(commonStrings.EXCEPTION, self, commonStrings.RUN, e)
                end
            end
        end.new())
    end
    

    # throws Exception
    def self.main(args)
        InputAutomationJFrame.create(nil)
    end
    

    def getAutomationModuleConfigurationJPanel()
        return @automationModuleConfigurationJPanel
    end
    

    def setAutomationModuleConfigurationJPanel(automationModuleConfigurationJPanel)
        @automationModuleConfigurationJPanel = automationModuleConfigurationJPanel
    end
    

    def onAdd(inputAutomationRobotChangeEvent)
        begin
            @logUtil.putF(@commonStrings.START, self, "onAdd")
            InputRobotFactory.getInstance().add(inputAutomationRobotChangeEvent.getInputAutomationRobotInterfaceWrapper().getInputRobotInterface())
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "onAdd", e)
        end
    end
    

    def onRemove(inputAutomationRobotChangeEvent)
        begin
            @logUtil.putF(@commonStrings.START, self, "onRemove")
            InputRobotFactory.getInstance().add(inputAutomationRobotChangeEvent.getInputAutomationRobotInterfaceWrapper().getInputRobotInterface())
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "onRemove", e)
        end
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def onAdd(inputAutomationConfigurationChangeEvent)
        begin
            @logUtil.putF(@commonStrings.START, self, "onAdd")
            @inputAutomationModuleConfigurations.add(inputAutomationConfigurationChangeEvent.getInputAutomationModuleConfiguration())
            self.init()
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "onAdd", e)
        end
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def onRemove(inputAutomationConfigurationChangeEvent)
        begin
            @logUtil.putF(@commonStrings.START, self, "onRemove")
            inputAutomationConfiguration = InputAutomationConfigurationFactory.getInstance().inputAutomationConfiguration
            inputAutomationModuleConfigurationList = inputAutomationConfiguration.getInputAutomationModuleConfigurationList()
            if inputAutomationModuleConfigurationList == nil
                logUtil = LogUtil.getInstance()
                commonStrings = CommonStrings.getInstance()
                logUtil.putF("inputAutomationModuleConfigurationList: " + (inputAutomationModuleConfigurationList).to_s, self, commonStrings.INIT)
                raise StandardError.new()
            end
            inputAutomationModuleConfigurations = InputAutomationModuleConfigurations.new(inputAutomationConfiguration.getInputAutomationModuleConfigurationList())
            inputAutomationModuleConfigurations.remove(inputAutomationConfigurationChangeEvent.getInputAutomationModuleConfiguration())
            self.init()
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "onRemove", e)
        end
    end
end

require "org/allbinary/thread/ARunnable"
require "bundle/input/automation/InputAutomationBundleActivatorListenerInterface"
require "org/allbinary/globals/AppUrlGlobals"
require "org/allbinary/globals/URLGLOBALS"
require "org/allbinary/gui/dialog/BasicTextJDialog"
require "org/allbinary/gui/swing/workers/JListSwingWorker"
require "org/allbinary/input/automation/configuration/InputAutomationConfiguration"
require "org/allbinary/input/automation/configuration/InputAutomationConfigurationFactory"
require "org/allbinary/input/automation/configuration/InputAutomationConfigurationModuleChangeEvent"
require "org/allbinary/input/automation/module/InputAutomationModuleFactoryFactory"
require "org/allbinary/input/automation/module/InputAutomationModuleFactoryInterface"
require "org/allbinary/input/automation/module/configuration/InputAutomationModuleConfiguration"
require "org/allbinary/input/automation/module/configuration/InputAutomationModuleConfigurations"
require "org/allbinary/input/automation/osgi/DesktopBundle"
require "org/allbinary/input/automation/robot/InputRobotFactory"
require "org/allbinary/input/automation/robot/osgi/InputAutomationRobotChangeEvent"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory"
require "org/allbinary/logic/java/help/JavaHelpUtil"
require "org/allbinary/logic/system/loader/WebappClassLoaderInfo"
require "org/allbinary/logic/system/security/licensing/InputAutomationClientInformationFactory"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/thread/RunnableInterface"
require "java/lang/Thread"

class InputAutomationJFrame
    INPUTAUTOMATION_JFRAME = nil
end

