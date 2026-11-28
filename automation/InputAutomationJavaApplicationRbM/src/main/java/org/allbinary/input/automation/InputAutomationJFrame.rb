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

require "java/lang/JavaOverload"
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
# require "java/awt/Dimension"
# require "java/awt/EventQueue"
# require "java/awt/event/ActionEvent"
# require "java/awt/event/ActionListener"
# require "java/awt/event/FocusAdapter"
# require "java/awt/event/FocusEvent"
# require "java/awt/event/WindowEvent"
# require "java/awt/event/WindowFocusListener"
# require "javax/swing/GroupLayout"
# require "javax/swing/JCheckBoxMenuItem"
# require "javax/swing/JFrame"
# require "javax/swing/JLabel"
# require "javax/swing/JList"
# require "javax/swing/JMenu"
# require "javax/swing/JMenuBar"
# require "javax/swing/JMenuItem"
# require "javax/swing/JPanel"
# require "javax/swing/JScrollPane"
# require "javax/swing/JTabbedPane"
# require "javax/swing/WindowConstants"
# require "javax/swing/event/ListSelectionEvent"
# require "javax/swing/event/ListSelectionListener"

module ::Org; module Allbinary; module Input; module Automation

class InputAutomationJFrame < JFrame
    include ::Bundle::Input::Automation::ModulePackage::Configuration::InputAutomationConfigurationModuleChangeListener
    include ::Bundle::Input::Automation::Robot::InputAutomationRobotChangeListener
    include HelpSetListener
    attr_accessor :logUtil, :commonStrings, :inputAutomationModuleConfigurations, :inputAutomationModuleFactory, :inputAutomationModuleInterface, :runnableInterface, :thread, :helpSet, :uri, :aboutJMenuItem, :automationModuleConfigurationJPanel, :gameRobotJTabbedPane, :helpJMenuItem, :inputAutomationModuleJList, :inputAutomationModuleJPanel, :jScrollPane1, :mainJMenuBar, :modulesJMenuItem, :noModuleSelectedJDialog, :noModuleSelectedJLabel, :optionsJMenu, :processingJMenu, :startJMenuItem, :stopJMenuItem, :stopOnFocusJCheckBoxMenuItem, :subscriptionJMenuItem, :toolsJMenu, :updatesJMenuItem

    def jfields_org_allbinary_input_automation_InputAutomationJFrame
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @inputAutomationModuleConfigurations = ::Org::Allbinary::Input::Automation::ModulePackage::Configuration::InputAutomationModuleConfigurations.new()
        @inputAutomationModuleFactory = nil unless instance_variable_defined?(:@inputAutomationModuleFactory)
        @inputAutomationModuleInterface = nil unless instance_variable_defined?(:@inputAutomationModuleInterface)
        @runnableInterface = nil unless instance_variable_defined?(:@runnableInterface)
        @thread = nil unless instance_variable_defined?(:@thread)
        @helpSet = nil unless instance_variable_defined?(:@helpSet)
        @uri = URI.new("http://geocities.com/allbinary/")
        @aboutJMenuItem = nil unless instance_variable_defined?(:@aboutJMenuItem)
        @automationModuleConfigurationJPanel = nil unless instance_variable_defined?(:@automationModuleConfigurationJPanel)
        @gameRobotJTabbedPane = nil unless instance_variable_defined?(:@gameRobotJTabbedPane)
        @helpJMenuItem = nil unless instance_variable_defined?(:@helpJMenuItem)
        @inputAutomationModuleJList = nil unless instance_variable_defined?(:@inputAutomationModuleJList)
        @inputAutomationModuleJPanel = nil unless instance_variable_defined?(:@inputAutomationModuleJPanel)
        @jScrollPane1 = nil unless instance_variable_defined?(:@jScrollPane1)
        @mainJMenuBar = nil unless instance_variable_defined?(:@mainJMenuBar)
        @modulesJMenuItem = nil unless instance_variable_defined?(:@modulesJMenuItem)
        @noModuleSelectedJDialog = nil unless instance_variable_defined?(:@noModuleSelectedJDialog)
        @noModuleSelectedJLabel = nil unless instance_variable_defined?(:@noModuleSelectedJLabel)
        @optionsJMenu = nil unless instance_variable_defined?(:@optionsJMenu)
        @processingJMenu = nil unless instance_variable_defined?(:@processingJMenu)
        @startJMenuItem = nil unless instance_variable_defined?(:@startJMenuItem)
        @stopJMenuItem = nil unless instance_variable_defined?(:@stopJMenuItem)
        @stopOnFocusJCheckBoxMenuItem = nil unless instance_variable_defined?(:@stopOnFocusJCheckBoxMenuItem)
        @subscriptionJMenuItem = nil unless instance_variable_defined?(:@subscriptionJMenuItem)
        @toolsJMenu = nil unless instance_variable_defined?(:@toolsJMenu)
        @updatesJMenuItem = nil unless instance_variable_defined?(:@updatesJMenuItem)
    end
    

    def initialize()
        super()
        jfields_org_allbinary_input_automation_InputAutomationJFrame
        self.initComponents()
        url = self.class.getResource("/help/Help.hs")
        @logUtil.putF("URL: " + (url).to_s, self, @commonStrings.CONSTRUCTOR)
        @helpSet = ::Org::Allbinary::Logic::Java::Help::JavaHelpUtil.getInstance().getHelpSet(url)
        url = self.class.getResource("/resources/allbinaryicon8bit.jpg")
        imageIcon = ImageIcon.new(url)
        self.setIconImage(imageIcon.getImage())
        self.init()
    end
    

    def helpSetAdded(helpSetEvent)
        @helpSet.add(helpSetEvent.getHelpSet())
    end
    java_overload :helpSetAdded, 1
    

    def helpSetRemoved(helpSetEvent)
        @helpSet.remove(helpSetEvent.getHelpSet())
    end
    java_overload :helpSetRemoved, 1
    

    # throws Exception
    def init()
        inputAutomationConfigurationFactory = ::Org::Allbinary::Input::Automation::Configuration::InputAutomationConfigurationFactory.getInstance()
        inputAutomationConfigurationFactory.init(::Org::Allbinary::Logic::System::Security::Licensing::InputAutomationClientInformationFactory.getInstance())
        inputAutomationModuleConfigurationList = inputAutomationConfigurationFactory.inputAutomationConfiguration.getInputAutomationModuleConfigurationList()
        if inputAutomationModuleConfigurationList == nil
        else
            @inputAutomationModuleConfigurations = ::Org::Allbinary::Input::Automation::ModulePackage::Configuration::InputAutomationModuleConfigurations.new(inputAutomationModuleConfigurationList)
        end
        @inputAutomationModuleFactory = ::Org::Allbinary::Input::Automation::ModulePackage::InputAutomationModuleFactoryFactory.new(@inputAutomationModuleConfigurations, self)
        (::Org::Allbinary::Gui::Swing::Workers::JListSwingWorker.new(@inputAutomationModuleJList, @inputAutomationModuleFactory.getListModel())).execute()
        @gameRobotJTabbedPane.setEnabledAt(1, false)
        @gameRobotJTabbedPane.setSelectedIndex(0)
    end
    java_overload :init, 0
    

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
        noModuleSelectedJDialogLayout.setHorizontalGroup(noModuleSelectedJDialogLayout.createParallelGroup(GroupLayout::Alignment.LEADING).addGroup(noModuleSelectedJDialogLayout.createSequentialGroup().addContainerGap().addComponent(@noModuleSelectedJLabel).addContainerGap(GroupLayout::DEFAULT_SIZE, 32767)))
        noModuleSelectedJDialogLayout.setVerticalGroup(noModuleSelectedJDialogLayout.createParallelGroup(GroupLayout::Alignment.LEADING).addComponent(@noModuleSelectedJLabel, GroupLayout::Alignment.TRAILING, GroupLayout::DEFAULT_SIZE, 48, 32767))
        setDefaultCloseOperation(WindowConstants::EXIT_ON_CLOSE)
        self.setMinimumSize(Dimension.new(325, 215))
        setResizable(false)
        addWindowFocusListener(Class.new(WindowFocusListener.is_a?(Class) ? WindowFocusListener : Object) do
            include(WindowFocusListener) unless WindowFocusListener.is_a?(Class)
            

            def windowGainedFocus(evt)
                formWindowGainedFocus(evt)
            end
            java_overload :windowGainedFocus, 1
            

            def windowLostFocus(evt)
                formWindowLostFocus(evt)
            end
            java_overload :windowLostFocus, 1
        end.new())
        addFocusListener(Class.new(FocusAdapter.is_a?(Class) ? FocusAdapter : Object) do
            include(FocusAdapter) unless FocusAdapter.is_a?(Class)
            

            def focusGained(evt)
                formFocusGained(evt)
            end
            java_overload :focusGained, 1
            

            def focusLost(evt)
                formFocusLost(evt)
            end
            java_overload :focusLost, 1
        end.new())
        @gameRobotJTabbedPane.setMinimumSize(Dimension.new(320, 200))
        @inputAutomationModuleJList.setMinimumSize(Dimension.new(200, 0))
        @inputAutomationModuleJList.addListSelectionListener(Class.new(ListSelectionListener.is_a?(Class) ? ListSelectionListener : Object) do
            include(ListSelectionListener) unless ListSelectionListener.is_a?(Class)
            

            def valueChanged(evt)
                inputAutomationModuleJListValueChanged(evt)
            end
            java_overload :valueChanged, 1
        end.new())
        @jScrollPane1.setViewportView(@inputAutomationModuleJList)
        inputAutomationModuleJPanelLayout = GroupLayout.new(@inputAutomationModuleJPanel)
        @inputAutomationModuleJPanel.setLayout(inputAutomationModuleJPanelLayout)
        inputAutomationModuleJPanelLayout.setHorizontalGroup(inputAutomationModuleJPanelLayout.createParallelGroup(GroupLayout::Alignment.LEADING).addGroup(inputAutomationModuleJPanelLayout.createSequentialGroup().addComponent(@jScrollPane1, GroupLayout::PREFERRED_SIZE, 199, GroupLayout::PREFERRED_SIZE).addContainerGap(367, 32767)))
        inputAutomationModuleJPanelLayout.setVerticalGroup(inputAutomationModuleJPanelLayout.createParallelGroup(GroupLayout::Alignment.LEADING).addGroup(inputAutomationModuleJPanelLayout.createSequentialGroup().addComponent(@jScrollPane1, GroupLayout::PREFERRED_SIZE, 330, GroupLayout::PREFERRED_SIZE).addContainerGap(GroupLayout::DEFAULT_SIZE, 32767)))
        @gameRobotJTabbedPane.addTab("Modules", @inputAutomationModuleJPanel)
        automationModuleConfigurationJPanelLayout = GroupLayout.new(@automationModuleConfigurationJPanel)
        @automationModuleConfigurationJPanel.setLayout(automationModuleConfigurationJPanelLayout)
        automationModuleConfigurationJPanelLayout.setHorizontalGroup(automationModuleConfigurationJPanelLayout.createParallelGroup(GroupLayout::Alignment.LEADING).addGap(0, 566, 32767))
        automationModuleConfigurationJPanelLayout.setVerticalGroup(automationModuleConfigurationJPanelLayout.createParallelGroup(GroupLayout::Alignment.LEADING).addGap(0, 334, 32767))
        @gameRobotJTabbedPane.addTab("Configuration", @automationModuleConfigurationJPanel)
        @processingJMenu.setText("Processing")
        @processingJMenu.setToolTipText("Set module processing state")
        @startJMenuItem.setText(@commonStrings.START)
        @startJMenuItem.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                startJMenuItemActionPerformed(evt)
            end
            java_overload :actionPerformed, 1
        end.new())
        @processingJMenu.add(@startJMenuItem)
        @stopJMenuItem.setText("Stop")
        @stopJMenuItem.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                stopJMenuItemActionPerformed(evt)
            end
            java_overload :actionPerformed, 1
        end.new())
        @processingJMenu.add(@stopJMenuItem)
        @mainJMenuBar.add(@processingJMenu)
        @optionsJMenu.setText("Options")
        @optionsJMenu.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                optionsJMenuActionPerformed(evt)
            end
            java_overload :actionPerformed, 1
        end.new())
        @stopOnFocusJCheckBoxMenuItem.setSelected(true)
        @stopOnFocusJCheckBoxMenuItem.setEnabled(false)
        @stopOnFocusJCheckBoxMenuItem.setLabel("Stop Module On Focus")
        @stopOnFocusJCheckBoxMenuItem.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                stopOnFocusJCheckBoxMenuItemActionPerformed(evt)
            end
            java_overload :actionPerformed, 1
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
            java_overload :actionPerformed, 1
        end.new())
        @toolsJMenu.add(@helpJMenuItem)
        @updatesJMenuItem.setText("Updates")
        @updatesJMenuItem.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                updatesJMenuItemActionPerformed(evt)
            end
            java_overload :actionPerformed, 1
        end.new())
        @toolsJMenu.add(@updatesJMenuItem)
        @subscriptionJMenuItem.setText("Subscription")
        @subscriptionJMenuItem.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                subscriptionJMenuItemActionPerformed(evt)
            end
            java_overload :actionPerformed, 1
        end.new())
        @toolsJMenu.add(@subscriptionJMenuItem)
        @modulesJMenuItem.setText("Module Manager")
        @modulesJMenuItem.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                modulesJMenuItemActionPerformed(evt)
            end
            java_overload :actionPerformed, 1
        end.new())
        @toolsJMenu.add(@modulesJMenuItem)
        @aboutJMenuItem.setText("About")
        @aboutJMenuItem.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                aboutJMenuItemActionPerformed(evt)
            end
            java_overload :actionPerformed, 1
        end.new())
        @toolsJMenu.add(@aboutJMenuItem)
        @mainJMenuBar.add(@toolsJMenu)
        setJMenuBar(@mainJMenuBar)
        layout = GroupLayout.new(getContentPane())
        getContentPane().setLayout(layout)
        layout.setHorizontalGroup(layout.createParallelGroup(GroupLayout::Alignment.LEADING).addComponent(@gameRobotJTabbedPane, GroupLayout::Alignment.TRAILING, GroupLayout::DEFAULT_SIZE, 571, 32767))
        layout.setVerticalGroup(layout.createParallelGroup(GroupLayout::Alignment.LEADING).addComponent(@gameRobotJTabbedPane, GroupLayout::Alignment.TRAILING, GroupLayout::DEFAULT_SIZE, 359, 32767))
        pack()
    end
    java_overload :initComponents, 0
    

    def subscriptionJMenuItemActionPerformed(evt)
        begin
            Desktop.getDesktop().browse(@uri)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "subscriptionJMenuItemActionPerformed", e)
        end
    end
    java_overload :subscriptionJMenuItemActionPerformed, 1
    

    def updatesJMenuItemActionPerformed(evt)
        begin
            Desktop.getDesktop().browse(@uri)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "updatesJMenuItemActionPerformed", e)
        end
    end
    java_overload :updatesJMenuItemActionPerformed, 1
    

    def aboutJMenuItemActionPerformed(evt)
        textJDialog = ::Org::Allbinary::Gui::Dialog::BasicTextJDialog.new("Copyright (c) 2002-2007 AllBinary")
        textJDialog.setVisible(true)
        textJDialog.setLocationRelativeTo(self)
    end
    java_overload :aboutJMenuItemActionPerformed, 1
    

    def modulesJMenuItemActionPerformed(evt)
        begin
            ::Org::Allbinary::Input::Automation::Osgi::DesktopBundle.new().start()
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "modulesJMenuItemActionPerformed", e)
        end
    end
    java_overload :modulesJMenuItemActionPerformed, 1
    

    def helpJMenuItemActionPerformed(evt)
        ::Org::Allbinary::Logic::Java::Help::JavaHelpUtil.getInstance().show(@helpSet)
    end
    java_overload :helpJMenuItemActionPerformed, 1
    

    def stopOnFocusJCheckBoxMenuItemActionPerformed(evt)
    end
    java_overload :stopOnFocusJCheckBoxMenuItemActionPerformed, 1
    

    def optionsJMenuActionPerformed(evt)
    end
    java_overload :optionsJMenuActionPerformed, 1
    

    def formWindowLostFocus(evt)
        @logUtil.putF("Nothing", self, "focusLost")
    end
    java_overload :formWindowLostFocus, 1
    

    def formWindowGainedFocus(evt)
        if @stopOnFocusJCheckBoxMenuItem.isSelected()
            @logUtil.putF("Stopping", self, "focusGained")
            if @runnableInterface != nil
                @runnableInterface.setRunning(false)
            end
        end
    end
    java_overload :formWindowGainedFocus, 1
    

    def formFocusLost(evt)
    end
    java_overload :formFocusLost, 1
    

    def formFocusGained(evt)
    end
    java_overload :formFocusGained, 1
    

    def inputAutomationModuleJListValueChanged(evt)
        begin
            gameAutomationRobotModuleNameString = @inputAutomationModuleJList.getSelectedValue()
            if gameAutomationRobotModuleNameString != nil
                @inputAutomationModuleInterface = @inputAutomationModuleFactory.getInstance(gameAutomationRobotModuleNameString)
                self.getAutomationModuleConfigurationJPanel().removeAll()
                layout = self.getAutomationModuleConfigurationJPanel().getLayout()
                layout.setHorizontalGroup(layout.createParallelGroup(GroupLayout::Alignment.LEADING).addGap(0, 395, 32767).addComponent(@inputAutomationModuleInterface.getConfigurationJPanel(), GroupLayout::PREFERRED_SIZE, GroupLayout::DEFAULT_SIZE, GroupLayout::PREFERRED_SIZE))
                layout.setVerticalGroup(layout.createParallelGroup(GroupLayout::Alignment.LEADING).addGap(0, 256, 32767).addComponent(@inputAutomationModuleInterface.getConfigurationJPanel(), GroupLayout::PREFERRED_SIZE, GroupLayout::DEFAULT_SIZE, GroupLayout::PREFERRED_SIZE))
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
    java_overload :inputAutomationModuleJListValueChanged, 1
    

    def stopJMenuItemActionPerformed(evt)
        if @runnableInterface != nil
            @runnableInterface.setRunning(false)
        else
            @noModuleSelectedJDialog.setVisible(true)
            @noModuleSelectedJDialog.setLocationRelativeTo(self)
        end
    end
    java_overload :stopJMenuItemActionPerformed, 1
    

    def startJMenuItemActionPerformed(evt)
        begin
            @logUtil.putF("Starting", self, "startJMenuItemActionPerformed")
            if @inputAutomationModuleInterface != nil
                @runnableInterface = @inputAutomationModuleInterface.getInstance()
                if @runnableInterface != nil
                    @thread = ::Java::Lang::JavaThread.new(@runnableInterface)
                    @thread.setPriority(::Java::Lang::JavaThread::MIN_PRIORITY + 1)
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
    java_overload :startJMenuItemActionPerformed, 1
    

    def self.getInstance()
        return INPUTAUTOMATION_JFRAME
    end
    

    def self.destroy()
        INPUTAUTOMATION_JFRAME.setVisible(false)
    end
    

    def self.create(inputAutomationBundleActivatorListenerInterface)
        ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance()
        appUrlGlobals = ::Org::Allbinary::Globals::AppUrlGlobals.new()
        appUrlGlobals.setWebappPath("G:/mnt/bc/mydev/work_automation/automation/run/")
        ::Org::Allbinary::Globals::URLGLOBALS.init(appUrlGlobals)
        ::Org::Allbinary::Logic::System::Loader::WebappClassLoaderInfo.setLoader(appUrlGlobals.class.getClassLoader())
        EventQueue.invokeLater(Class.new(::Org::Allbinary::ThreadPackage::ARunnable.is_a?(Class) ? ::Org::Allbinary::ThreadPackage::ARunnable : Object) do
            include(::Org::Allbinary::ThreadPackage::ARunnable) unless ::Org::Allbinary::ThreadPackage::ARunnable.is_a?(Class)
            

            def run()
                logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
                commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
                begin
                    logUtil.putF("Running", self, commonStrings.RUN)
                    (InputAutomationJFrame.instance_exec(InputAutomationJFrame.new()) { |java_value| remove_const(:INPUTAUTOMATION_JFRAME) if const_defined?(:INPUTAUTOMATION_JFRAME, false); const_set(:INPUTAUTOMATION_JFRAME, java_value) })
                    ::Org::Allbinary::Input::Automation::Robot::InputRobotFactory.getInstance().addListener(InputAutomationJFrame.getInstance())
                    if inputAutomationBundleActivatorListenerInterface != nil
                        inputAutomationBundleActivatorListenerInterface.registerAsService()
                        inputAutomationBundleActivatorListenerInterface.useServices()
                    end
                    INPUTAUTOMATION_JFRAME.setVisible(true)
                rescue StandardError => e
                    logUtil.put(commonStrings.EXCEPTION, self, commonStrings.RUN, e)
                end
            end
            java_overload :run, 0
        end.new())
    end
    

    # throws Exception
    def self.main(args)
        InputAutomationJFrame.create(nil)
    end
    

    def getAutomationModuleConfigurationJPanel()
        return @automationModuleConfigurationJPanel
    end
    java_overload :getAutomationModuleConfigurationJPanel, 0
    

    def setAutomationModuleConfigurationJPanel(automationModuleConfigurationJPanel)
        @automationModuleConfigurationJPanel = automationModuleConfigurationJPanel
    end
    java_overload :setAutomationModuleConfigurationJPanel, 1
    

    def onAdd_j1_1(inputAutomationRobotChangeEvent)
        begin
            @logUtil.putF(@commonStrings.START, self, "onAdd")
            ::Org::Allbinary::Input::Automation::Robot::InputRobotFactory.getInstance().add(inputAutomationRobotChangeEvent.getInputAutomationRobotInterfaceWrapper().getInputRobotInterface())
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "onAdd", e)
        end
    end
    

    def onRemove_j1_1(inputAutomationRobotChangeEvent)
        begin
            @logUtil.putF(@commonStrings.START, self, "onRemove")
            ::Org::Allbinary::Input::Automation::Robot::InputRobotFactory.getInstance().add(inputAutomationRobotChangeEvent.getInputAutomationRobotInterfaceWrapper().getInputRobotInterface())
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "onRemove", e)
        end
    end
    

    def onAdd_j1_2(inputAutomationConfigurationChangeEvent)
        begin
            @logUtil.putF(@commonStrings.START, self, "onAdd")
            @inputAutomationModuleConfigurations.add(inputAutomationConfigurationChangeEvent.getInputAutomationModuleConfiguration())
            self.init()
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "onAdd", e)
        end
    end

    def onAdd(*java_overload_args)
        return onAdd_j1(*java_overload_args) if java_overload_args.length == 1
        raise ArgumentError, "No method onAdd takes #{java_overload_args.length} arguments"
    end

    def onAdd_j1(*java_overload_args)
        return onAdd_j1_1(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::Org::Allbinary::Input::Automation::Robot::Osgi::InputAutomationRobotChangeEvent))
        return onAdd_j1_2(*java_overload_args)
    end
    

    def onRemove_j1_2(inputAutomationConfigurationChangeEvent)
        begin
            @logUtil.putF(@commonStrings.START, self, "onRemove")
            inputAutomationConfiguration = ::Org::Allbinary::Input::Automation::Configuration::InputAutomationConfigurationFactory.getInstance().inputAutomationConfiguration
            inputAutomationModuleConfigurationList = inputAutomationConfiguration.getInputAutomationModuleConfigurationList()
            if inputAutomationModuleConfigurationList == nil
                logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
                commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
                logUtil.putF("inputAutomationModuleConfigurationList: " + (inputAutomationModuleConfigurationList).to_s, self, commonStrings.INIT)
                raise StandardError.new()
            end
            inputAutomationModuleConfigurations = ::Org::Allbinary::Input::Automation::ModulePackage::Configuration::InputAutomationModuleConfigurations.new(inputAutomationConfiguration.getInputAutomationModuleConfigurationList())
            inputAutomationModuleConfigurations.remove(inputAutomationConfigurationChangeEvent.getInputAutomationModuleConfiguration())
            self.init()
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "onRemove", e)
        end
    end

    def onRemove(*java_overload_args)
        return onRemove_j1(*java_overload_args) if java_overload_args.length == 1
        raise ArgumentError, "No method onRemove takes #{java_overload_args.length} arguments"
    end

    def onRemove_j1(*java_overload_args)
        return onRemove_j1_1(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::Org::Allbinary::Input::Automation::Robot::Osgi::InputAutomationRobotChangeEvent))
        return onRemove_j1_2(*java_overload_args)
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:INPUTAUTOMATION_JFRAME, nil)
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "InputAutomationJFrame"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:INPUTAUTOMATION_JFRAME].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module ThreadPackage; autoload :ARunnable, "org/allbinary/thread/ARunnable" unless const_defined?(:ARunnable, false); end; end; end
module ::Bundle; module Input; module Automation; autoload :InputAutomationBundleActivatorListenerInterface, "bundle/input/automation/InputAutomationBundleActivatorListenerInterface" unless const_defined?(:InputAutomationBundleActivatorListenerInterface, false); end; end; end
module ::Org; module Allbinary; module Globals; autoload :AppUrlGlobals, "org/allbinary/globals/AppUrlGlobals" unless const_defined?(:AppUrlGlobals, false); end; end; end
module ::Org; module Allbinary; module Globals; autoload :URLGLOBALS, "org/allbinary/globals/URLGLOBALS" unless const_defined?(:URLGLOBALS, false); end; end; end
module ::Org; module Allbinary; module Gui; module Dialog; autoload :BasicTextJDialog, "org/allbinary/gui/dialog/BasicTextJDialog" unless const_defined?(:BasicTextJDialog, false); end; end; end; end
module ::Org; module Allbinary; module Gui; module Swing; module Workers; autoload :JListSwingWorker, "org/allbinary/gui/swing/workers/JListSwingWorker" unless const_defined?(:JListSwingWorker, false); end; end; end; end; end
module ::Org; module Allbinary; module Input; module Automation; module Configuration; autoload :InputAutomationConfiguration, "org/allbinary/input/automation/configuration/InputAutomationConfiguration" unless const_defined?(:InputAutomationConfiguration, false); end; end; end; end; end
module ::Org; module Allbinary; module Input; module Automation; module Configuration; autoload :InputAutomationConfigurationFactory, "org/allbinary/input/automation/configuration/InputAutomationConfigurationFactory" unless const_defined?(:InputAutomationConfigurationFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Input; module Automation; module Configuration; autoload :InputAutomationConfigurationModuleChangeEvent, "org/allbinary/input/automation/configuration/InputAutomationConfigurationModuleChangeEvent" unless const_defined?(:InputAutomationConfigurationModuleChangeEvent, false); end; end; end; end; end
module ::Org; module Allbinary; module Input; module Automation; module ModulePackage; autoload :InputAutomationModuleFactoryFactory, "org/allbinary/input/automation/module/InputAutomationModuleFactoryFactory" unless const_defined?(:InputAutomationModuleFactoryFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Input; module Automation; module ModulePackage; autoload :InputAutomationModuleFactoryInterface, "org/allbinary/input/automation/module/InputAutomationModuleFactoryInterface" unless const_defined?(:InputAutomationModuleFactoryInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Input; module Automation; module ModulePackage; module Configuration; autoload :InputAutomationModuleConfiguration, "org/allbinary/input/automation/module/configuration/InputAutomationModuleConfiguration" unless const_defined?(:InputAutomationModuleConfiguration, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Input; module Automation; module ModulePackage; module Configuration; autoload :InputAutomationModuleConfigurations, "org/allbinary/input/automation/module/configuration/InputAutomationModuleConfigurations" unless const_defined?(:InputAutomationModuleConfigurations, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Input; module Automation; module Osgi; autoload :DesktopBundle, "org/allbinary/input/automation/osgi/DesktopBundle" unless const_defined?(:DesktopBundle, false); end; end; end; end; end
module ::Org; module Allbinary; module Input; module Automation; module Robot; autoload :InputRobotFactory, "org/allbinary/input/automation/robot/InputRobotFactory" unless const_defined?(:InputRobotFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Input; module Automation; module Robot; module Osgi; autoload :InputAutomationRobotChangeEvent, "org/allbinary/input/automation/robot/osgi/InputAutomationRobotChangeEvent" unless const_defined?(:InputAutomationRobotChangeEvent, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Java; module Help; autoload :JavaHelpUtil, "org/allbinary/logic/java/help/JavaHelpUtil" unless const_defined?(:JavaHelpUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Loader; autoload :WebappClassLoaderInfo, "org/allbinary/logic/system/loader/WebappClassLoaderInfo" unless const_defined?(:WebappClassLoaderInfo, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :InputAutomationClientInformationFactory, "org/allbinary/logic/system/security/licensing/InputAutomationClientInformationFactory" unless const_defined?(:InputAutomationClientInformationFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module ThreadPackage; autoload :RunnableInterface, "org/allbinary/thread/RunnableInterface" unless const_defined?(:RunnableInterface, false); end; end; end
require "java/lang/Thread"

begin
    InputAutomationJFrame.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

