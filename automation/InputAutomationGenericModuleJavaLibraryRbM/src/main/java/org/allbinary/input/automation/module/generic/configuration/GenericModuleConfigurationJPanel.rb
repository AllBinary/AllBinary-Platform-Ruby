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

require "org/allbinary/input/automation/module/generic/configuration/GenericModuleConfigurationInterface"

class GenericModuleConfigurationJPanel < JPanel
    include GenericModuleConfigurationInterface
    attr_accessor :logUtil, :stringUtil, :commonStrings, :genericProfiles, :selectedGenericProfile, :blankGenericProfileActionsJPanel, :buttonGroup2, :captureComparisonJCheckBox, :captureMotionAnalysisJCheckBox, :deleteProfileJButton, :genericJTabbedPane, :genericProfilesJList, :genericProfilesJPanel, :genericProfilesJScrollPane, :jLabel1, :jLabel2, :jLabel3, :jPanel1, :newProfileJButton, :newProfileJDialog, :newProfileNameJLabel, :newProfileNameJTextField, :okNewProfileJButton, :savedCaptureJRadioButton, :screenCaptureJRadioButton

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @stringUtil = StringUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @genericProfiles = nil
        @selectedGenericProfile = nil
        @blankGenericProfileActionsJPanel = nil
        @buttonGroup2 = nil
        @captureComparisonJCheckBox = nil
        @captureMotionAnalysisJCheckBox = nil
        @deleteProfileJButton = nil
        @genericJTabbedPane = nil
        @genericProfilesJList = nil
        @genericProfilesJPanel = nil
        @genericProfilesJScrollPane = nil
        @jLabel1 = nil
        @jLabel2 = nil
        @jLabel3 = nil
        @jPanel1 = nil
        @newProfileJButton = nil
        @newProfileJDialog = nil
        @newProfileNameJLabel = nil
        @newProfileNameJTextField = nil
        @okNewProfileJButton = nil
        @savedCaptureJRadioButton = nil
        @screenCaptureJRadioButton = nil
    end
    

    def initialize()
        super()
        initialize_fields
        self.initComponents()
        self.setGenericProfiles(GenericProfiles.new(GenericProfiles::DEFAULT_FILE))
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
        end.new())
        @newProfileNameJLabel.setText("New Profile Name")
        newProfileJDialogLayout = GroupLayout.new(@newProfileJDialog.getContentPane())
        @newProfileJDialog.getContentPane().setLayout(newProfileJDialogLayout)
        newProfileJDialogLayout.setHorizontalGroup(newProfileJDialogLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addGroup(newProfileJDialogLayout.createSequentialGroup().addGroup(newProfileJDialogLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addGroup(newProfileJDialogLayout.createSequentialGroup().addGap(80, 80, 80).addComponent(@newProfileNameJLabel)).addGroup(newProfileJDialogLayout.createSequentialGroup().addGap(30, 30, 30).addComponent(@newProfileNameJTextField, javax.swing.GroupLayout.PREFERRED_SIZE, 180, javax.swing.GroupLayout.PREFERRED_SIZE)).addGroup(newProfileJDialogLayout.createSequentialGroup().addGap(100, 100, 100).addComponent(@okNewProfileJButton))).addContainerGap(35, 32767)))
        newProfileJDialogLayout.setVerticalGroup(newProfileJDialogLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addGroup(newProfileJDialogLayout.createSequentialGroup().addGap(10, 10, 10).addComponent(@newProfileNameJLabel).addGap(16, 16, 16).addComponent(@newProfileNameJTextField, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE).addGap(20, 20, 20).addComponent(@okNewProfileJButton)))
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
        end.new())
        @genericProfilesJScrollPane.setViewportView(@genericProfilesJList)
        @newProfileJButton.setText("New")
        @newProfileJButton.setToolTipText("Creates a new profile")
        @newProfileJButton.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                newProfileJButtonActionPerformed(evt)
            end
        end.new())
        @deleteProfileJButton.setText("Delete")
        @deleteProfileJButton.setToolTipText("Deletes the selected profile")
        @deleteProfileJButton.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                deleteProfileJButtonActionPerformed(evt)
            end
        end.new())
        @jPanel1.setPreferredSize(Dimension.new(1000, 100))
        @screenCaptureJRadioButton.setText("Screen Captures")
        @screenCaptureJRadioButton.setToolTipText("Records the screen into memory for logical processing")
        @screenCaptureJRadioButton.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0))
        @screenCaptureJRadioButton.setMargin(Insets.new(0, 0, 0, 0))
        @screenCaptureJRadioButton.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                screenCaptureJRadioButtonActionPerformed(evt)
            end
        end.new())
        @jLabel1.setText("Profile Options")
        @jLabel2.setText("Process From:")
        @savedCaptureJRadioButton.setText("Saved Images")
        @savedCaptureJRadioButton.setToolTipText("Loads images from files for logical processing.  Usually for debugging your profile actions")
        @savedCaptureJRadioButton.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0))
        @savedCaptureJRadioButton.setMargin(Insets.new(0, 0, 0, 0))
        @savedCaptureJRadioButton.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                savedCaptureJRadioButtonActionPerformed(evt)
            end
        end.new())
        @captureMotionAnalysisJCheckBox.setText("Motion Analysis")
        @captureMotionAnalysisJCheckBox.setToolTipText("Uses image comparison and contraints to locate moving objects")
        @captureMotionAnalysisJCheckBox.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0))
        @captureMotionAnalysisJCheckBox.setMargin(Insets.new(0, 0, 0, 0))
        @captureMotionAnalysisJCheckBox.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                captureMotionAnalysisJCheckBoxActionPerformed(evt)
            end
        end.new())
        @captureComparisonJCheckBox.setText("Comparison")
        @captureComparisonJCheckBox.setToolTipText("Compares the last two input images for multi image logic")
        @captureComparisonJCheckBox.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0))
        @captureComparisonJCheckBox.setMargin(Insets.new(0, 0, 0, 0))
        @captureComparisonJCheckBox.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                captureComparisonJCheckBoxActionPerformed(evt)
            end
        end.new())
        @jLabel3.setText("Image Processing:")
        @jLabel3.setToolTipText("Turns on/off various extended image processing")
        jPanel1Layout = GroupLayout.new(@jPanel1)
        @jPanel1.setLayout(jPanel1Layout)
        jPanel1Layout.setHorizontalGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addGroup(jPanel1Layout.createSequentialGroup().addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addComponent(@screenCaptureJRadioButton).addComponent(@jLabel1).addComponent(@jLabel2).addComponent(@savedCaptureJRadioButton).addComponent(@captureMotionAnalysisJCheckBox).addComponent(@captureComparisonJCheckBox).addComponent(@jLabel3)).addContainerGap(22, 32767)))
        jPanel1Layout.setVerticalGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addGroup(jPanel1Layout.createSequentialGroup().addComponent(@jLabel1).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(@jLabel2).addGap(7, 7, 7).addComponent(@screenCaptureJRadioButton).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(@savedCaptureJRadioButton).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(@jLabel3).addGap(7, 7, 7).addComponent(@captureComparisonJCheckBox).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(@captureMotionAnalysisJCheckBox).addContainerGap(106, 32767)))
        genericProfilesJPanelLayout = GroupLayout.new(@genericProfilesJPanel)
        @genericProfilesJPanel.setLayout(genericProfilesJPanelLayout)
        genericProfilesJPanelLayout.setHorizontalGroup(genericProfilesJPanelLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addGroup(genericProfilesJPanelLayout.createSequentialGroup().addGroup(genericProfilesJPanelLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addGroup(genericProfilesJPanelLayout.createSequentialGroup().addComponent(@newProfileJButton).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(@deleteProfileJButton)).addGroup(genericProfilesJPanelLayout.createSequentialGroup().addComponent(@genericProfilesJScrollPane, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(@jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, 119, 32767))).addContainerGap()))
        genericProfilesJPanelLayout.setVerticalGroup(genericProfilesJPanelLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addGroup(genericProfilesJPanelLayout.createSequentialGroup().addGroup(genericProfilesJPanelLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE).addComponent(@newProfileJButton).addComponent(@deleteProfileJButton)).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup(genericProfilesJPanelLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addComponent(@jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, 246, 32767).addComponent(@genericProfilesJScrollPane, javax.swing.GroupLayout.DEFAULT_SIZE, 246, 32767))))
        @genericJTabbedPane.addTab("Profiles", @genericProfilesJPanel)
        blankGenericProfileActionsJPanelLayout = GroupLayout.new(@blankGenericProfileActionsJPanel)
        @blankGenericProfileActionsJPanel.setLayout(blankGenericProfileActionsJPanelLayout)
        blankGenericProfileActionsJPanelLayout.setHorizontalGroup(blankGenericProfileActionsJPanelLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addGap(0, 395, 32767))
        blankGenericProfileActionsJPanelLayout.setVerticalGroup(blankGenericProfileActionsJPanelLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addGap(0, 275, 32767))
        @genericJTabbedPane.addTab("Actions", @blankGenericProfileActionsJPanel)
        add(@genericJTabbedPane)
    end
    

    def savedCaptureJRadioButtonActionPerformed(evt)
        begin
            if @savedCaptureJRadioButton.isSelected()
                @logUtil.putF("Selected", self, "savedCaptureJRadioButtonActionPerformed")
                self.getSelectedGenericProfile().add(GenericProfileDataWorkerType::SAVED_CAPTURE)
                self.getSelectedGenericProfile().remove(GenericProfileDataWorkerType::SCREEN_CAPTURE)
                @screenCaptureJRadioButton.setSelected(false)
                self.getGenericProfiles().save()
            end
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "savedCaptureJRadioButtonActionPerformed", e)
        end
    end
    

    def screenCaptureJRadioButtonActionPerformed(evt)
        begin
            if @screenCaptureJRadioButton.isSelected()
                @logUtil.putF("Selected", self, "screenCaptureJRadioButtonActionPerformed")
                self.getSelectedGenericProfile().add(GenericProfileDataWorkerType::SCREEN_CAPTURE)
                self.getSelectedGenericProfile().remove(GenericProfileDataWorkerType::SAVED_CAPTURE)
                @savedCaptureJRadioButton.setSelected(false)
                self.getGenericProfiles().save()
            end
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "screenCaptureJRadioButtonActionPerformed", e)
        end
    end
    

    def captureMotionAnalysisJCheckBoxActionPerformed(evt)
        begin
            if @captureMotionAnalysisJCheckBox.isSelected()
                self.getSelectedGenericProfile().add(GenericProfileDataWorkerType::MOTION)
            else
                self.getSelectedGenericProfile().remove(GenericProfileDataWorkerType::MOTION)
            end
            self.getGenericProfiles().save()
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "captureComparisonJCheckBoxActionPerformed", e)
        end
    end
    

    def captureComparisonJCheckBoxActionPerformed(evt)
        begin
            if @captureComparisonJCheckBox.isSelected()
                self.getSelectedGenericProfile().add(GenericProfileDataWorkerType::COMPARISON)
            else
                self.getSelectedGenericProfile().remove(GenericProfileDataWorkerType::COMPARISON)
            end
            self.getGenericProfiles().save()
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "captureComparisonJCheckBoxActionPerformed", e)
        end
    end
    

    # throws Exception
    def updateProfileUI(profileNameString)
        self.getBlankGenericProfileActionsJPanel().removeAll()
        if profileNameString != nil
            genericProfileActionsJPanel = GenericProfileActionsJPanel.new()
            self.setSelectedGenericProfile(self.getGenericProfiles().get(profileNameString))
            self.getSelectedGenericProfile().setGenericProfileActions(GenericProfileActions.new(genericProfileActionsJPanel, profileNameString))
            genericProfileActionsJPanel.setGenericProfileActions(self.getSelectedGenericProfile().getGenericProfileActions())
            genericProfileActionsJPanel.selectFirstElement()
            layout = self.getBlankGenericProfileActionsJPanel().getLayout()
            layout.setHorizontalGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addGap(0, 395, 32767).addComponent(genericProfileActionsJPanel, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
            layout.setVerticalGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addGap(0, 256, 32767).addComponent(genericProfileActionsJPanel, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
            self.updateProfileOptions()
            @logUtil.putF("Setting Configuration Profile JPanel", self, "updateProfileUI")
        else
            @logUtil.putF("Null Configuration Profile", self, "updateProfileUI")
        end
    end
    

    # throws Exception
    def selectFirstElement()
        @genericProfilesJList.setModel(self.getGenericProfiles().getDefaultListModelHelper().getListModel())
        if @genericProfilesJList.getModel().getSize() > 0
            @genericProfilesJList.setSelectedValue(@genericProfilesJList.getModel().getElementAt(0), true)
            self.updateProfileUI(@genericProfilesJList.getModel().getElementAt(0))
        end
    end
    

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
            if genericProfileDataWorkerType == GenericProfileDataWorkerType::SCREEN_CAPTURE
                @logUtil.putF("Screen Capture Selected", self, "updateProfileOptions")
                @screenCaptureJRadioButton.setSelected(true)
            elsif genericProfileDataWorkerType == GenericProfileDataWorkerType::SAVED_CAPTURE
                @logUtil.putF("Saved Capture Selected", self, "updateProfileOptions")
                @savedCaptureJRadioButton.setSelected(true)
            elsif genericProfileDataWorkerType == GenericProfileDataWorkerType::COMPARISON
                @logUtil.putF("Checking Comparison Box", self, "updateProfileOptions")
                @captureComparisonJCheckBox.setSelected(true)
            elsif genericProfileDataWorkerType == GenericProfileDataWorkerType::MOTION
                @logUtil.putF("Checking Motion Box", self, "updateProfileOptions")
                @captureMotionAnalysisJCheckBox.setSelected(true)
            end
        end
        if !@screenCaptureJRadioButton.isSelected() && !@savedCaptureJRadioButton.isSelected()
            @screenCaptureJRadioButton.setSelected(true)
            self.getSelectedGenericProfile().add(GenericProfileDataWorkerType::SCREEN_CAPTURE)
        end
        @logUtil.putF(@commonStrings.END_, self, "updateProfileOptions")
    end
    

    def getBlankGenericProfileActionsJPanel()
        return @blankGenericProfileActionsJPanel
    end
    

    def setBlankGenericProfileActionsJPanel(blankGenericProfileActionsJPanel)
        @blankGenericProfileActionsJPanel = blankGenericProfileActionsJPanel
    end
    

    def getGenericProfiles()
        return @genericProfiles
    end
    

    def setGenericProfiles(genericProfiles)
        @genericProfiles = genericProfiles
    end
    

    def getSelectedGenericProfile()
        return @selectedGenericProfile
    end
    

    def setSelectedGenericProfile(selectedGenericProfile)
        @selectedGenericProfile = selectedGenericProfile
    end
    

    def genericProfilesJListValueChanged(evt)
        begin
            profileNameString = @genericProfilesJList.getSelectedValue()
            self.updateProfileUI(profileNameString)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "genericProfilesJListValueChanged", e)
        end
    end
    

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
    

    def newProfileJButtonActionPerformed(evt)
        @newProfileJDialog.setVisible(true)
    end
end

require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/input/automation/module/generic/configuration/profile/GenericProfile"
require "org/allbinary/input/automation/module/generic/configuration/profile/GenericProfileDataWorkerType"
require "org/allbinary/input/automation/module/generic/configuration/profile/GenericProfiles"
require "org/allbinary/input/automation/module/generic/configuration/profile/actions/GenericProfileActions"
require "org/allbinary/input/automation/module/generic/configuration/profile/actions/GenericProfileActionsJPanel"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/string/CommonStrings"

