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
# package org.allbinary.input.automation.module.generic.configuration.profile.actions

require "java/lang/JavaOverload"
# require "java/awt/Dimension"
# require "java/awt/event/ActionEvent"
# require "java/awt/event/ActionListener"
# require "javax/swing/GroupLayout"
# require "javax/swing/JButton"
# require "javax/swing/JDialog"
# require "javax/swing/JLabel"
# require "javax/swing/JList"
# require "javax/swing/JPanel"
# require "javax/swing/JScrollPane"
# require "javax/swing/JTextField"
# require "javax/swing/LayoutStyle"
# require "javax/swing/event/ListSelectionEvent"
# require "javax/swing/event/ListSelectionListener"

module ::Org; module Allbinary; module Input; module Automation; module ModulePackage; module Generic; module Configuration; module Profile; module Actions

class GenericProfileActionsJPanel < JPanel
    attr_accessor :logUtil, :commonStrings, :genericProfileActions, :genericProfileActionJPanel, :blankGenericProfileActionJPanel, :deleteActionJButton, :genericProfileActionsJList, :genericProfileActionsJPanel, :genericProfileActionsJScrollPane, :newActionJButton, :newProfileActionJDialog, :newProfileActionJLabel, :newProfileActionJTextField, :okNewProfileActionJButton, :saveJButton

    def jfields_org_allbinary_input_automation_module_generic_configuration_profile_actions_GenericProfileActionsJPanel
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @genericProfileActions = nil unless instance_variable_defined?(:@genericProfileActions)
        @genericProfileActionJPanel = nil unless instance_variable_defined?(:@genericProfileActionJPanel)
        @blankGenericProfileActionJPanel = nil unless instance_variable_defined?(:@blankGenericProfileActionJPanel)
        @deleteActionJButton = nil unless instance_variable_defined?(:@deleteActionJButton)
        @genericProfileActionsJList = nil unless instance_variable_defined?(:@genericProfileActionsJList)
        @genericProfileActionsJPanel = nil unless instance_variable_defined?(:@genericProfileActionsJPanel)
        @genericProfileActionsJScrollPane = nil unless instance_variable_defined?(:@genericProfileActionsJScrollPane)
        @newActionJButton = nil unless instance_variable_defined?(:@newActionJButton)
        @newProfileActionJDialog = nil unless instance_variable_defined?(:@newProfileActionJDialog)
        @newProfileActionJLabel = nil unless instance_variable_defined?(:@newProfileActionJLabel)
        @newProfileActionJTextField = nil unless instance_variable_defined?(:@newProfileActionJTextField)
        @okNewProfileActionJButton = nil unless instance_variable_defined?(:@okNewProfileActionJButton)
        @saveJButton = nil unless instance_variable_defined?(:@saveJButton)
    end
    

    def initialize()
        super()
        jfields_org_allbinary_input_automation_module_generic_configuration_profile_actions_GenericProfileActionsJPanel
        self.initComponents()
    end
    

    def initComponents()
        @newProfileActionJDialog = JDialog.new()
        @newProfileActionJLabel = JLabel.new()
        @okNewProfileActionJButton = JButton.new()
        @newProfileActionJTextField = JTextField.new()
        @genericProfileActionsJPanel = JPanel.new()
        @genericProfileActionsJScrollPane = JScrollPane.new()
        @genericProfileActionsJList = JList.new()
        @newActionJButton = JButton.new()
        @deleteActionJButton = JButton.new()
        @saveJButton = JButton.new()
        @blankGenericProfileActionJPanel = JPanel.new()
        @newProfileActionJDialog.setMinimumSize(Dimension.new(250, 150))
        @newProfileActionJDialog.setResizable(false)
        @newProfileActionJLabel.setText("New Action Name")
        @okNewProfileActionJButton.setText("Ok")
        @okNewProfileActionJButton.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                okNewProfileActionJButtonActionPerformed(evt)
            end
            java_overload :actionPerformed, 1
        end.new())
        newProfileActionJDialogLayout = GroupLayout.new(@newProfileActionJDialog.getContentPane())
        @newProfileActionJDialog.getContentPane().setLayout(newProfileActionJDialogLayout)
        newProfileActionJDialogLayout.setHorizontalGroup(newProfileActionJDialogLayout.createParallelGroup(GroupLayout::Alignment.LEADING).addGroup(newProfileActionJDialogLayout.createSequentialGroup().addGroup(newProfileActionJDialogLayout.createParallelGroup(GroupLayout::Alignment.LEADING).addGroup(newProfileActionJDialogLayout.createSequentialGroup().addGap(93, 93, 93).addComponent(@okNewProfileActionJButton)).addGroup(newProfileActionJDialogLayout.createSequentialGroup().addGap(75, 75, 75).addComponent(@newProfileActionJLabel)).addGroup(newProfileActionJDialogLayout.createSequentialGroup().addGap(29, 29, 29).addComponent(@newProfileActionJTextField, GroupLayout::PREFERRED_SIZE, 178, GroupLayout::PREFERRED_SIZE))).addContainerGap(34, 32767)))
        newProfileActionJDialogLayout.setVerticalGroup(newProfileActionJDialogLayout.createParallelGroup(GroupLayout::Alignment.LEADING).addGroup(GroupLayout::Alignment.TRAILING, newProfileActionJDialogLayout.createSequentialGroup().addContainerGap().addComponent(@newProfileActionJLabel).addGap(21, 21, 21).addComponent(@newProfileActionJTextField, GroupLayout::PREFERRED_SIZE, GroupLayout::DEFAULT_SIZE, GroupLayout::PREFERRED_SIZE).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED, 20, 32767).addComponent(@okNewProfileActionJButton).addContainerGap()))
        @genericProfileActionsJPanel.setPreferredSize(Dimension.new(10000, 10000))
        @genericProfileActionsJList.addListSelectionListener(Class.new(ListSelectionListener.is_a?(Class) ? ListSelectionListener : Object) do
            include(ListSelectionListener) unless ListSelectionListener.is_a?(Class)
            

            def valueChanged(evt)
                genericProfileActionsJListValueChanged(evt)
            end
            java_overload :valueChanged, 1
        end.new())
        @genericProfileActionsJScrollPane.setViewportView(@genericProfileActionsJList)
        @newActionJButton.setText("New")
        @newActionJButton.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                newActionJButtonActionPerformed(evt)
            end
            java_overload :actionPerformed, 1
        end.new())
        @deleteActionJButton.setText("Delete")
        @deleteActionJButton.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                deleteActionJButtonActionPerformed(evt)
            end
            java_overload :actionPerformed, 1
        end.new())
        @saveJButton.setText("Save")
        @saveJButton.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                saveJButtonActionPerformed(evt)
            end
            java_overload :actionPerformed, 1
        end.new())
        @blankGenericProfileActionJPanel.setMinimumSize(Dimension.new(500, 300))
        blankGenericProfileActionJPanelLayout = GroupLayout.new(@blankGenericProfileActionJPanel)
        @blankGenericProfileActionJPanel.setLayout(blankGenericProfileActionJPanelLayout)
        blankGenericProfileActionJPanelLayout.setHorizontalGroup(blankGenericProfileActionJPanelLayout.createParallelGroup(GroupLayout::Alignment.LEADING).addGap(0, 500, 32767))
        blankGenericProfileActionJPanelLayout.setVerticalGroup(blankGenericProfileActionJPanelLayout.createParallelGroup(GroupLayout::Alignment.LEADING).addGap(0, 296, 32767))
        genericProfileActionsJPanelLayout = GroupLayout.new(@genericProfileActionsJPanel)
        @genericProfileActionsJPanel.setLayout(genericProfileActionsJPanelLayout)
        genericProfileActionsJPanelLayout.setHorizontalGroup(genericProfileActionsJPanelLayout.createParallelGroup(GroupLayout::Alignment.LEADING).addGroup(genericProfileActionsJPanelLayout.createSequentialGroup().addComponent(@genericProfileActionsJScrollPane, GroupLayout::PREFERRED_SIZE, 95, GroupLayout::PREFERRED_SIZE).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED).addComponent(@blankGenericProfileActionJPanel, GroupLayout::DEFAULT_SIZE, GroupLayout::DEFAULT_SIZE, 32767)).addGroup(genericProfileActionsJPanelLayout.createSequentialGroup().addComponent(@newActionJButton).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED).addComponent(@deleteActionJButton).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED).addComponent(@saveJButton).addContainerGap()))
        genericProfileActionsJPanelLayout.setVerticalGroup(genericProfileActionsJPanelLayout.createParallelGroup(GroupLayout::Alignment.LEADING).addGroup(genericProfileActionsJPanelLayout.createSequentialGroup().addGroup(genericProfileActionsJPanelLayout.createParallelGroup(GroupLayout::Alignment.BASELINE).addComponent(@newActionJButton).addComponent(@deleteActionJButton).addComponent(@saveJButton)).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED).addGroup(genericProfileActionsJPanelLayout.createParallelGroup(GroupLayout::Alignment.LEADING, false).addComponent(@blankGenericProfileActionJPanel, 0, 296, 32767).addComponent(@genericProfileActionsJScrollPane, GroupLayout::DEFAULT_SIZE, 296, 32767)).addContainerGap(GroupLayout::DEFAULT_SIZE, 32767)))
        layout = GroupLayout.new(self)
        self.setLayout(layout)
        layout.setHorizontalGroup(layout.createParallelGroup(GroupLayout::Alignment.LEADING).addGroup(layout.createSequentialGroup().addComponent(@genericProfileActionsJPanel, GroupLayout::PREFERRED_SIZE, 596, GroupLayout::PREFERRED_SIZE).addContainerGap(GroupLayout::DEFAULT_SIZE, 32767)))
        layout.setVerticalGroup(layout.createParallelGroup(GroupLayout::Alignment.LEADING).addComponent(@genericProfileActionsJPanel, GroupLayout::PREFERRED_SIZE, 336, GroupLayout::PREFERRED_SIZE))
    end
    java_overload :initComponents, 0
    

    def setModel()
        defaultListModelHelper = self.getGenericProfileActions().getDefaultListModelHelper()
        if defaultListModelHelper.getListModel().getSize() > 0
            @genericProfileActionsJList.setModel(defaultListModelHelper.getListModel())
        end
    end
    java_overload :setModel, 0
    

    def saveJButtonActionPerformed(evt)
        begin
            self.getGenericProfileActions().save()
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "saveJButtonActionPerformed", e)
        end
    end
    java_overload :saveJButtonActionPerformed, 1
    

    def updateProfileActionUI(profileActionNameString)
        @blankGenericProfileActionJPanel.removeAll()
        if profileActionNameString != nil
            genericProfileAction = self.getGenericProfileActions().getAction(profileActionNameString)
            self.setGenericProfileActionJPanel(GenericProfileActionJPanel.new())
            self.getGenericProfileActionJPanel().setGenericProfileAction(genericProfileAction)
            self.getGenericProfileActionJPanel().updateProfileActionUI()
            layout = @blankGenericProfileActionJPanel.getLayout()
            layout.setHorizontalGroup(layout.createParallelGroup(GroupLayout::Alignment.LEADING).addGap(0, 395, 32767).addComponent(self.getGenericProfileActionJPanel(), GroupLayout::PREFERRED_SIZE, GroupLayout::DEFAULT_SIZE, GroupLayout::PREFERRED_SIZE))
            layout.setVerticalGroup(layout.createParallelGroup(GroupLayout::Alignment.LEADING).addGap(0, 256, 32767).addComponent(self.getGenericProfileActionJPanel(), GroupLayout::PREFERRED_SIZE, GroupLayout::DEFAULT_SIZE, GroupLayout::PREFERRED_SIZE))
            @logUtil.putF("Setting Configuration Profile Actions JPanel", self, "genericProfileActionsJListValueChanged")
        end
    end
    java_overload :updateProfileActionUI, 1
    

    def genericProfileActionsJListValueChanged(evt)
        begin
            profileActionNameString = @genericProfileActionsJList.getSelectedValue()
            self.updateProfileActionUI(profileActionNameString)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "genericProfileActionsJListValueChanged", e)
        end
    end
    java_overload :genericProfileActionsJListValueChanged, 1
    

    def okNewProfileActionJButtonActionPerformed(evt)
        begin
            newActionName = @newProfileActionJTextField.getText()
            self.getGenericProfileActions().add(newActionName)
            self.setModel()
            @genericProfileActionsJList.setSelectedValue(newActionName, true)
            @newProfileActionJDialog.setVisible(false)
            self.updateProfileActionUI(newActionName)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "okNewProfileActionJButtonActionPerformed", e)
        end
    end
    java_overload :okNewProfileActionJButtonActionPerformed, 1
    

    def deleteActionJButtonActionPerformed(evt)
        begin
            anyType = @genericProfileActionsJList.getSelectedValues()
            (0...anyType.length).each do |index|
                nextSelectedValueString = anyType[index]
                self.getGenericProfileActions().remove(nextSelectedValueString)
            end
            self.selectFirstElement()
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "deleteActionJButtonActionPerformed", e)
        end
    end
    java_overload :deleteActionJButtonActionPerformed, 1
    

    # throws Exception
    def selectFirstElement()
        self.setModel()
        if @genericProfileActionsJList.getModel().getSize() > 0
            @genericProfileActionsJList.setSelectedValue(@genericProfileActionsJList.getModel().getElementAt(0), true)
            self.updateProfileActionUI(@genericProfileActionsJList.getModel().getElementAt(0))
        else
            @blankGenericProfileActionJPanel.removeAll()
            @blankGenericProfileActionJPanel.repaint()
        end
    end
    java_overload :selectFirstElement, 0
    

    def getGenericProfileActionJPanel()
        return @genericProfileActionJPanel
    end
    java_overload :getGenericProfileActionJPanel, 0
    

    def setGenericProfileActionJPanel(genericProfileActionJPanel)
        @genericProfileActionJPanel = genericProfileActionJPanel
    end
    java_overload :setGenericProfileActionJPanel, 1
    

    def getGenericProfileActions()
        return @genericProfileActions
    end
    java_overload :getGenericProfileActions, 0
    

    def setGenericProfileActions(genericProfileActions)
        @genericProfileActions = genericProfileActions
    end
    java_overload :setGenericProfileActions, 1
    

    def newActionJButtonActionPerformed(evt)
        @newProfileActionJDialog.setVisible(true)
    end
    java_overload :newActionJButtonActionPerformed, 1
end

module ::Org; module Allbinary; module Input; module Automation; module ModulePackage; autoload :DefaultListModelHelper, "org/allbinary/input/automation/module/DefaultListModelHelper" unless const_defined?(:DefaultListModelHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
autoload :GenericProfileAction, "org/allbinary/input/automation/module/generic/configuration/profile/actions/GenericProfileAction" unless const_defined?(:GenericProfileAction, false)
autoload :GenericProfileActionJPanel, "org/allbinary/input/automation/module/generic/configuration/profile/actions/GenericProfileActionJPanel" unless const_defined?(:GenericProfileActionJPanel, false)
autoload :GenericProfileActions, "org/allbinary/input/automation/module/generic/configuration/profile/actions/GenericProfileActions" unless const_defined?(:GenericProfileActions, false)

end; end; end; end; end; end; end; end; end

