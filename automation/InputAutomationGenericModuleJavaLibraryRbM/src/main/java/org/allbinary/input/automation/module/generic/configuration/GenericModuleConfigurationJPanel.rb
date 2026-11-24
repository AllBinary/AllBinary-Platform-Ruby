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
# package org.allbinary.input.automation.module.generic.configuration

require "java/lang/JavaOverload"
require "java/lang/JavaClass"
# require "java/awt/Dimension"
# require "java/awt/GridLayout"
# require "java/awt/Insets"
# require "java/awt/event/ActionEvent"
# require "java/awt/event/ActionListener"
# require "javax/swing/BorderFactory"
# require "javax/swing/ButtonGroup"
# require "javax/swing/GroupLayout"
# require "javax/swing/JButton"
# require "javax/swing/JCheckBox"
# require "javax/swing/JDialog"
# require "javax/swing/JLabel"
# require "javax/swing/JList"
# require "javax/swing/JPanel"
# require "javax/swing/JRadioButton"
# require "javax/swing/JScrollPane"
# require "javax/swing/JTabbedPane"
# require "javax/swing/JTextField"
# require "javax/swing/LayoutStyle"
# require "javax/swing/event/ListSelectionEvent"
# require "javax/swing/event/ListSelectionListener"
require "org/allbinary/input/automation/module/generic/configuration/GenericModuleConfigurationInterface"

module ::Org; module Allbinary; module Input; module Automation; module ModulePackage; module Generic; module Configuration

class GenericModuleConfigurationJPanel < JPanel
    include GenericModuleConfigurationInterface
    attr_accessor :logUtil, :stringUtil, :commonStrings, :genericProfiles, :selectedGenericProfile, :blankGenericProfileActionsJPanel, :buttonGroup2, :captureComparisonJCheckBox, :captureMotionAnalysisJCheckBox, :deleteProfileJButton, :genericJTabbedPane, :genericProfilesJList, :genericProfilesJPanel, :genericProfilesJScrollPane, :jLabel1, :jLabel2, :jLabel3, :jPanel1, :newProfileJButton, :newProfileJDialog, :newProfileNameJLabel, :newProfileNameJTextField, :okNewProfileJButton, :savedCaptureJRadioButton, :screenCaptureJRadioButton

    def jfields_org_allbinary_input_automation_module_generic_configuration_GenericModuleConfigurationJPanel
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @stringUtil = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @genericProfiles = nil unless instance_variable_defined?(:@genericProfiles)
        @selectedGenericProfile = nil unless instance_variable_defined?(:@selectedGenericProfile)
        @blankGenericProfileActionsJPanel = nil unless instance_variable_defined?(:@blankGenericProfileActionsJPanel)
        @buttonGroup2 = nil unless instance_variable_defined?(:@buttonGroup2)
        @captureComparisonJCheckBox = nil unless instance_variable_defined?(:@captureComparisonJCheckBox)
        @captureMotionAnalysisJCheckBox = nil unless instance_variable_defined?(:@captureMotionAnalysisJCheckBox)
        @deleteProfileJButton = nil unless instance_variable_defined?(:@deleteProfileJButton)
        @genericJTabbedPane = nil unless instance_variable_defined?(:@genericJTabbedPane)
        @genericProfilesJList = nil unless instance_variable_defined?(:@genericProfilesJList)
        @genericProfilesJPanel = nil unless instance_variable_defined?(:@genericProfilesJPanel)
        @genericProfilesJScrollPane = nil unless instance_variable_defined?(:@genericProfilesJScrollPane)
        @jLabel1 = nil unless instance_variable_defined?(:@jLabel1)
        @jLabel2 = nil unless instance_variable_defined?(:@jLabel2)
        @jLabel3 = nil unless instance_variable_defined?(:@jLabel3)
        @jPanel1 = nil unless instance_variable_defined?(:@jPanel1)
        @newProfileJButton = nil unless instance_variable_defined?(:@newProfileJButton)
        @newProfileJDialog = nil unless instance_variable_defined?(:@newProfileJDialog)
        @newProfileNameJLabel = nil unless instance_variable_defined?(:@newProfileNameJLabel)
        @newProfileNameJTextField = nil unless instance_variable_defined?(:@newProfileNameJTextField)
        @okNewProfileJButton = nil unless instance_variable_defined?(:@okNewProfileJButton)
        @savedCaptureJRadioButton = nil unless instance_variable_defined?(:@savedCaptureJRadioButton)
        @screenCaptureJRadioButton = nil unless instance_variable_defined?(:@screenCaptureJRadioButton)
    end
    

    def initialize()
        super()
        jfields_org_allbinary_input_automation_module_generic_configuration_GenericModuleConfigurationJPanel
        self.initComponents()
        self.setGenericProfiles(::Org::Allbinary::Input::Automation::ModulePackage::Generic::Configuration::Profile::GenericProfiles.new(::Org::Allbinary::Input::Automation::ModulePackage::Generic::Configuration::Profile::GenericProfiles::DEFAULT_FILE))
        self.selectFirstElement()
    end
    

    def initComponents()
        @newProfileJDialog = JDialog.new()
        @okNewProfileJButton = JButton.new()
        @newProfileNameJLabel = JLabel.new()
        @newProfileNameJTextField = JTextField.new()
        @buttonGroup2 = ButtonGroup.new()
        @genericJTabbedPane = JTabbedPane.new()
        @genericProfilesJPanel = JPanel.new()
        @genericProfilesJScrollPane = JScrollPane.new()
        @genericProfilesJList = JList.new()
        @newProfileJButton = JButton.new()
        @deleteProfileJButton = JButton.new()
        @jPanel1 = JPanel.new()
        @screenCaptureJRadioButton = JRadioButton.new()
        @jLabel1 = JLabel.new()
        @jLabel2 = JLabel.new()
        @savedCaptureJRadioButton = JRadioButton.new()
        @captureMotionAnalysisJCheckBox = JCheckBox.new()
        @captureComparisonJCheckBox = JCheckBox.new()
        @jLabel3 = JLabel.new()
        @blankGenericProfileActionsJPanel = JPanel.new()
        @newProfileJDialog.setMinimumSize(Dimension.new(250, 150))
        @newProfileJDialog.setResizable(false)
        @okNewProfileJButton.setText("Ok")
        @okNewProfileJButton.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                okNewProfileJButtonActionPerformed(evt)
            end
            java_overload :actionPerformed, 1
        end.new())
        @newProfileNameJLabel.setText("New Profile Name")
        newProfileJDialogLayout = GroupLayout.new(@newProfileJDialog.getContentPane())
        @newProfileJDialog.getContentPane().setLayout(newProfileJDialogLayout)
        newProfileJDialogLayout.setHorizontalGroup(newProfileJDialogLayout.createParallelGroup(GroupLayout::Alignment.LEADING).addGroup(newProfileJDialogLayout.createSequentialGroup().addGroup(newProfileJDialogLayout.createParallelGroup(GroupLayout::Alignment.LEADING).addGroup(newProfileJDialogLayout.createSequentialGroup().addGap(80, 80, 80).addComponent(@newProfileNameJLabel)).addGroup(newProfileJDialogLayout.createSequentialGroup().addGap(30, 30, 30).addComponent(@newProfileNameJTextField, GroupLayout::PREFERRED_SIZE, 180, GroupLayout::PREFERRED_SIZE)).addGroup(newProfileJDialogLayout.createSequentialGroup().addGap(100, 100, 100).addComponent(@okNewProfileJButton))).addContainerGap(35, 32767)))
        newProfileJDialogLayout.setVerticalGroup(newProfileJDialogLayout.createParallelGroup(GroupLayout::Alignment.LEADING).addGroup(newProfileJDialogLayout.createSequentialGroup().addGap(10, 10, 10).addComponent(@newProfileNameJLabel).addGap(16, 16, 16).addComponent(@newProfileNameJTextField, GroupLayout::PREFERRED_SIZE, GroupLayout::DEFAULT_SIZE, GroupLayout::PREFERRED_SIZE).addGap(20, 20, 20).addComponent(@okNewProfileJButton)))
        setLayout(GridLayout.new(1, 0))
        setMinimumSize(Dimension.new(400, 300))
        setPreferredSize(Dimension.new(700, 700))
        @genericJTabbedPane.setToolTipText(@stringUtil.EMPTY_STRING)
        @genericJTabbedPane.setMinimumSize(Dimension.new(800, 600))
        @genericProfilesJPanel.setMinimumSize(Dimension.new(400, 300))
        @genericProfilesJPanel.setPreferredSize(Dimension.new(0, 0))
        @genericProfilesJList.addListSelectionListener(Class.new(ListSelectionListener.is_a?(Class) ? ListSelectionListener : Object) do
            include(ListSelectionListener) unless ListSelectionListener.is_a?(Class)
            

            def valueChanged(evt)
                genericProfilesJListValueChanged(evt)
            end
            java_overload :valueChanged, 1
        end.new())
        @genericProfilesJScrollPane.setViewportView(@genericProfilesJList)
        @newProfileJButton.setText("New")
        @newProfileJButton.setToolTipText("Creates a new profile")
        @newProfileJButton.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                newProfileJButtonActionPerformed(evt)
            end
            java_overload :actionPerformed, 1
        end.new())
        @deleteProfileJButton.setText("Delete")
        @deleteProfileJButton.setToolTipText("Deletes the selected profile")
        @deleteProfileJButton.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                deleteProfileJButtonActionPerformed(evt)
            end
            java_overload :actionPerformed, 1
        end.new())
        @jPanel1.setPreferredSize(Dimension.new(1000, 100))
        @screenCaptureJRadioButton.setText("Screen Captures")
        @screenCaptureJRadioButton.setToolTipText("Records the screen into memory for logical processing")
        @screenCaptureJRadioButton.setBorder(BorderFactory.createEmptyBorder(0, 0, 0, 0))
        @screenCaptureJRadioButton.setMargin(Insets.new(0, 0, 0, 0))
        @screenCaptureJRadioButton.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                screenCaptureJRadioButtonActionPerformed(evt)
            end
            java_overload :actionPerformed, 1
        end.new())
        @jLabel1.setText("Profile Options")
        @jLabel2.setText("Process From:")
        @savedCaptureJRadioButton.setText("Saved Images")
        @savedCaptureJRadioButton.setToolTipText("Loads images from files for logical processing.  Usually for debugging your profile actions")
        @savedCaptureJRadioButton.setBorder(BorderFactory.createEmptyBorder(0, 0, 0, 0))
        @savedCaptureJRadioButton.setMargin(Insets.new(0, 0, 0, 0))
        @savedCaptureJRadioButton.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                savedCaptureJRadioButtonActionPerformed(evt)
            end
            java_overload :actionPerformed, 1
        end.new())
        @captureMotionAnalysisJCheckBox.setText("Motion Analysis")
        @captureMotionAnalysisJCheckBox.setToolTipText("Uses image comparison and contraints to locate moving objects")
        @captureMotionAnalysisJCheckBox.setBorder(BorderFactory.createEmptyBorder(0, 0, 0, 0))
        @captureMotionAnalysisJCheckBox.setMargin(Insets.new(0, 0, 0, 0))
        @captureMotionAnalysisJCheckBox.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                captureMotionAnalysisJCheckBoxActionPerformed(evt)
            end
            java_overload :actionPerformed, 1
        end.new())
        @captureComparisonJCheckBox.setText("Comparison")
        @captureComparisonJCheckBox.setToolTipText("Compares the last two input images for multi image logic")
        @captureComparisonJCheckBox.setBorder(BorderFactory.createEmptyBorder(0, 0, 0, 0))
        @captureComparisonJCheckBox.setMargin(Insets.new(0, 0, 0, 0))
        @captureComparisonJCheckBox.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                captureComparisonJCheckBoxActionPerformed(evt)
            end
            java_overload :actionPerformed, 1
        end.new())
        @jLabel3.setText("Image Processing:")
        @jLabel3.setToolTipText("Turns on/off various extended image processing")
        jPanel1Layout = GroupLayout.new(@jPanel1)
        @jPanel1.setLayout(jPanel1Layout)
        jPanel1Layout.setHorizontalGroup(jPanel1Layout.createParallelGroup(GroupLayout::Alignment.LEADING).addGroup(jPanel1Layout.createSequentialGroup().addGroup(jPanel1Layout.createParallelGroup(GroupLayout::Alignment.LEADING).addComponent(@screenCaptureJRadioButton).addComponent(@jLabel1).addComponent(@jLabel2).addComponent(@savedCaptureJRadioButton).addComponent(@captureMotionAnalysisJCheckBox).addComponent(@captureComparisonJCheckBox).addComponent(@jLabel3)).addContainerGap(22, 32767)))
        jPanel1Layout.setVerticalGroup(jPanel1Layout.createParallelGroup(GroupLayout::Alignment.LEADING).addGroup(jPanel1Layout.createSequentialGroup().addComponent(@jLabel1).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED).addComponent(@jLabel2).addGap(7, 7, 7).addComponent(@screenCaptureJRadioButton).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED).addComponent(@savedCaptureJRadioButton).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED).addComponent(@jLabel3).addGap(7, 7, 7).addComponent(@captureComparisonJCheckBox).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED).addComponent(@captureMotionAnalysisJCheckBox).addContainerGap(106, 32767)))
        genericProfilesJPanelLayout = GroupLayout.new(@genericProfilesJPanel)
        @genericProfilesJPanel.setLayout(genericProfilesJPanelLayout)
        genericProfilesJPanelLayout.setHorizontalGroup(genericProfilesJPanelLayout.createParallelGroup(GroupLayout::Alignment.LEADING).addGroup(genericProfilesJPanelLayout.createSequentialGroup().addGroup(genericProfilesJPanelLayout.createParallelGroup(GroupLayout::Alignment.LEADING).addGroup(genericProfilesJPanelLayout.createSequentialGroup().addComponent(@newProfileJButton).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED).addComponent(@deleteProfileJButton)).addGroup(genericProfilesJPanelLayout.createSequentialGroup().addComponent(@genericProfilesJScrollPane, GroupLayout::PREFERRED_SIZE, GroupLayout::DEFAULT_SIZE, GroupLayout::PREFERRED_SIZE).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED).addComponent(@jPanel1, GroupLayout::DEFAULT_SIZE, 119, 32767))).addContainerGap()))
        genericProfilesJPanelLayout.setVerticalGroup(genericProfilesJPanelLayout.createParallelGroup(GroupLayout::Alignment.LEADING).addGroup(genericProfilesJPanelLayout.createSequentialGroup().addGroup(genericProfilesJPanelLayout.createParallelGroup(GroupLayout::Alignment.BASELINE).addComponent(@newProfileJButton).addComponent(@deleteProfileJButton)).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED).addGroup(genericProfilesJPanelLayout.createParallelGroup(GroupLayout::Alignment.LEADING).addComponent(@jPanel1, GroupLayout::DEFAULT_SIZE, 246, 32767).addComponent(@genericProfilesJScrollPane, GroupLayout::DEFAULT_SIZE, 246, 32767))))
        @genericJTabbedPane.addTab("Profiles", @genericProfilesJPanel)
        blankGenericProfileActionsJPanelLayout = GroupLayout.new(@blankGenericProfileActionsJPanel)
        @blankGenericProfileActionsJPanel.setLayout(blankGenericProfileActionsJPanelLayout)
        blankGenericProfileActionsJPanelLayout.setHorizontalGroup(blankGenericProfileActionsJPanelLayout.createParallelGroup(GroupLayout::Alignment.LEADING).addGap(0, 395, 32767))
        blankGenericProfileActionsJPanelLayout.setVerticalGroup(blankGenericProfileActionsJPanelLayout.createParallelGroup(GroupLayout::Alignment.LEADING).addGap(0, 275, 32767))
        @genericJTabbedPane.addTab("Actions", @blankGenericProfileActionsJPanel)
        add(@genericJTabbedPane)
    end
    java_overload :initComponents, 0
    

    def savedCaptureJRadioButtonActionPerformed(evt)
        begin
            if @savedCaptureJRadioButton.isSelected()
                @logUtil.putF("Selected", self, "savedCaptureJRadioButtonActionPerformed")
                self.getSelectedGenericProfile().add(::Org::Allbinary::Input::Automation::ModulePackage::Generic::Configuration::Profile::GenericProfileDataWorkerType::SAVED_CAPTURE)
                self.getSelectedGenericProfile().remove(::Org::Allbinary::Input::Automation::ModulePackage::Generic::Configuration::Profile::GenericProfileDataWorkerType::SCREEN_CAPTURE)
                @screenCaptureJRadioButton.setSelected(false)
                self.getGenericProfiles().save()
            end
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "savedCaptureJRadioButtonActionPerformed", e)
        end
    end
    java_overload :savedCaptureJRadioButtonActionPerformed, 1
    

    def screenCaptureJRadioButtonActionPerformed(evt)
        begin
            if @screenCaptureJRadioButton.isSelected()
                @logUtil.putF("Selected", self, "screenCaptureJRadioButtonActionPerformed")
                self.getSelectedGenericProfile().add(::Org::Allbinary::Input::Automation::ModulePackage::Generic::Configuration::Profile::GenericProfileDataWorkerType::SCREEN_CAPTURE)
                self.getSelectedGenericProfile().remove(::Org::Allbinary::Input::Automation::ModulePackage::Generic::Configuration::Profile::GenericProfileDataWorkerType::SAVED_CAPTURE)
                @savedCaptureJRadioButton.setSelected(false)
                self.getGenericProfiles().save()
            end
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "screenCaptureJRadioButtonActionPerformed", e)
        end
    end
    java_overload :screenCaptureJRadioButtonActionPerformed, 1
    

    def captureMotionAnalysisJCheckBoxActionPerformed(evt)
        begin
            if @captureMotionAnalysisJCheckBox.isSelected()
                self.getSelectedGenericProfile().add(::Org::Allbinary::Input::Automation::ModulePackage::Generic::Configuration::Profile::GenericProfileDataWorkerType::MOTION)
            else
                self.getSelectedGenericProfile().remove(::Org::Allbinary::Input::Automation::ModulePackage::Generic::Configuration::Profile::GenericProfileDataWorkerType::MOTION)
            end
            self.getGenericProfiles().save()
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "captureComparisonJCheckBoxActionPerformed", e)
        end
    end
    java_overload :captureMotionAnalysisJCheckBoxActionPerformed, 1
    

    def captureComparisonJCheckBoxActionPerformed(evt)
        begin
            if @captureComparisonJCheckBox.isSelected()
                self.getSelectedGenericProfile().add(::Org::Allbinary::Input::Automation::ModulePackage::Generic::Configuration::Profile::GenericProfileDataWorkerType::COMPARISON)
            else
                self.getSelectedGenericProfile().remove(::Org::Allbinary::Input::Automation::ModulePackage::Generic::Configuration::Profile::GenericProfileDataWorkerType::COMPARISON)
            end
            self.getGenericProfiles().save()
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "captureComparisonJCheckBoxActionPerformed", e)
        end
    end
    java_overload :captureComparisonJCheckBoxActionPerformed, 1
    

    # throws Exception
    def updateProfileUI(profileNameString)
        self.getBlankGenericProfileActionsJPanel().removeAll()
        if profileNameString != nil
            genericProfileActionsJPanel = ::Org::Allbinary::Input::Automation::ModulePackage::Generic::Configuration::Profile::Actions::GenericProfileActionsJPanel.new()
            self.setSelectedGenericProfile(self.getGenericProfiles().get(profileNameString))
            self.getSelectedGenericProfile().setGenericProfileActions(::Org::Allbinary::Input::Automation::ModulePackage::Generic::Configuration::Profile::Actions::GenericProfileActions.new(genericProfileActionsJPanel, profileNameString))
            genericProfileActionsJPanel.setGenericProfileActions(self.getSelectedGenericProfile().getGenericProfileActions())
            genericProfileActionsJPanel.selectFirstElement()
            layout = self.getBlankGenericProfileActionsJPanel().getLayout()
            layout.setHorizontalGroup(layout.createParallelGroup(GroupLayout::Alignment.LEADING).addGap(0, 395, 32767).addComponent(genericProfileActionsJPanel, GroupLayout::PREFERRED_SIZE, GroupLayout::DEFAULT_SIZE, GroupLayout::PREFERRED_SIZE))
            layout.setVerticalGroup(layout.createParallelGroup(GroupLayout::Alignment.LEADING).addGap(0, 256, 32767).addComponent(genericProfileActionsJPanel, GroupLayout::PREFERRED_SIZE, GroupLayout::DEFAULT_SIZE, GroupLayout::PREFERRED_SIZE))
            self.updateProfileOptions()
            @logUtil.putF("Setting Configuration Profile JPanel", self, "updateProfileUI")
        else
            @logUtil.putF("Null Configuration Profile", self, "updateProfileUI")
        end
    end
    java_overload :updateProfileUI, 1
    

    # throws Exception
    def selectFirstElement()
        @genericProfilesJList.setModel(self.getGenericProfiles().getDefaultListModelHelper().getListModel())
        if @genericProfilesJList.getModel().getSize() > 0
            @genericProfilesJList.setSelectedValue(@genericProfilesJList.getModel().getElementAt(0), true)
            self.updateProfileUI(@genericProfilesJList.getModel().getElementAt(0))
        end
    end
    java_overload :selectFirstElement, 0
    

    # throws Exception
    def updateProfileOptions()
        @logUtil.putF(@commonStrings.START, self, "updateProfileOptions")
        genericProfile = self.getSelectedGenericProfile()
        vector = genericProfile.getGenericProfileDataWorkerTypeVector()
        @screenCaptureJRadioButton.setSelected(false)
        @savedCaptureJRadioButton.setSelected(false)
        @captureComparisonJCheckBox.setSelected(false)
        @captureMotionAnalysisJCheckBox.setSelected(false)
        size = vector.size()
        (0...size).each do |index|
            genericProfileDataWorkerType = vector.get(index)
            @logUtil.putF(genericProfile.getName() + " has GenericProfileDataWorkerType: " + genericProfileDataWorkerType.to_s, self, "updateProfileOptions")
            if genericProfileDataWorkerType == ::Org::Allbinary::Input::Automation::ModulePackage::Generic::Configuration::Profile::GenericProfileDataWorkerType::SCREEN_CAPTURE
                @logUtil.putF("Screen Capture Selected", self, "updateProfileOptions")
                @screenCaptureJRadioButton.setSelected(true)
            elsif genericProfileDataWorkerType == ::Org::Allbinary::Input::Automation::ModulePackage::Generic::Configuration::Profile::GenericProfileDataWorkerType::SAVED_CAPTURE
                @logUtil.putF("Saved Capture Selected", self, "updateProfileOptions")
                @savedCaptureJRadioButton.setSelected(true)
            elsif genericProfileDataWorkerType == ::Org::Allbinary::Input::Automation::ModulePackage::Generic::Configuration::Profile::GenericProfileDataWorkerType::COMPARISON
                @logUtil.putF("Checking Comparison Box", self, "updateProfileOptions")
                @captureComparisonJCheckBox.setSelected(true)
            elsif genericProfileDataWorkerType == ::Org::Allbinary::Input::Automation::ModulePackage::Generic::Configuration::Profile::GenericProfileDataWorkerType::MOTION
                @logUtil.putF("Checking Motion Box", self, "updateProfileOptions")
                @captureMotionAnalysisJCheckBox.setSelected(true)
            end
        end
        if !@screenCaptureJRadioButton.isSelected() && !@savedCaptureJRadioButton.isSelected()
            @screenCaptureJRadioButton.setSelected(true)
            self.getSelectedGenericProfile().add(::Org::Allbinary::Input::Automation::ModulePackage::Generic::Configuration::Profile::GenericProfileDataWorkerType::SCREEN_CAPTURE)
        end
        @logUtil.putF(@commonStrings.END_, self, "updateProfileOptions")
    end
    java_overload :updateProfileOptions, 0
    

    def getBlankGenericProfileActionsJPanel()
        return @blankGenericProfileActionsJPanel
    end
    java_overload :getBlankGenericProfileActionsJPanel, 0
    

    def setBlankGenericProfileActionsJPanel(blankGenericProfileActionsJPanel)
        @blankGenericProfileActionsJPanel = blankGenericProfileActionsJPanel
    end
    java_overload :setBlankGenericProfileActionsJPanel, 1
    

    def getGenericProfiles()
        return @genericProfiles
    end
    java_overload :getGenericProfiles, 0
    

    def setGenericProfiles(genericProfiles)
        @genericProfiles = genericProfiles
    end
    java_overload :setGenericProfiles, 1
    

    def getSelectedGenericProfile()
        return @selectedGenericProfile
    end
    java_overload :getSelectedGenericProfile, 0
    

    def setSelectedGenericProfile(selectedGenericProfile)
        @selectedGenericProfile = selectedGenericProfile
    end
    java_overload :setSelectedGenericProfile, 1
    

    def genericProfilesJListValueChanged(evt)
        begin
            profileNameString = @genericProfilesJList.getSelectedValue()
            self.updateProfileUI(profileNameString)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "genericProfilesJListValueChanged", e)
        end
    end
    java_overload :genericProfilesJListValueChanged, 1
    

    def deleteProfileJButtonActionPerformed(evt)
        begin
            anyType = @genericProfilesJList.getSelectedValues()
            (0...anyType.length).each do |index|
                nextSelectedValueString = anyType[index]
                self.getGenericProfiles().remove(nextSelectedValueString)
            end
            self.selectFirstElement()
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "deleteProfileJButtonActionPerformed", e)
        end
    end
    java_overload :deleteProfileJButtonActionPerformed, 1
    

    def okNewProfileJButtonActionPerformed(evt)
        begin
            newProfileName = @newProfileNameJTextField.getText()
            self.getGenericProfiles().add(newProfileName)
            @genericProfilesJList.setModel(self.getGenericProfiles().getDefaultListModelHelper().getListModel())
            @genericProfilesJList.setSelectedValue(newProfileName, true)
            @newProfileJDialog.setVisible(false)
            self.updateProfileUI(newProfileName)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "okNewProfileJButtonActionPerformed", e)
        end
    end
    java_overload :okNewProfileJButtonActionPerformed, 1
    

    def newProfileJButtonActionPerformed(evt)
        @newProfileJDialog.setVisible(true)
    end
    java_overload :newProfileJButtonActionPerformed, 1
end

module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Input; module Automation; module ModulePackage; module Generic; module Configuration; module Profile; autoload :GenericProfile, "org/allbinary/input/automation/module/generic/configuration/profile/GenericProfile" unless const_defined?(:GenericProfile, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Input; module Automation; module ModulePackage; module Generic; module Configuration; module Profile; autoload :GenericProfileDataWorkerType, "org/allbinary/input/automation/module/generic/configuration/profile/GenericProfileDataWorkerType" unless const_defined?(:GenericProfileDataWorkerType, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Input; module Automation; module ModulePackage; module Generic; module Configuration; module Profile; autoload :GenericProfiles, "org/allbinary/input/automation/module/generic/configuration/profile/GenericProfiles" unless const_defined?(:GenericProfiles, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Input; module Automation; module ModulePackage; module Generic; module Configuration; module Profile; module Actions; autoload :GenericProfileActions, "org/allbinary/input/automation/module/generic/configuration/profile/actions/GenericProfileActions" unless const_defined?(:GenericProfileActions, false); end; end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Input; module Automation; module ModulePackage; module Generic; module Configuration; module Profile; module Actions; autoload :GenericProfileActionsJPanel, "org/allbinary/input/automation/module/generic/configuration/profile/actions/GenericProfileActionsJPanel" unless const_defined?(:GenericProfileActionsJPanel, false); end; end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end

end; end; end; end; end; end; end

