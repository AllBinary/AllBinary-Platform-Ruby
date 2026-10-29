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


class GenericProfileActionsJPanel < JPanel
    attr_accessor :logUtil, :commonStrings, :genericProfileActions, :genericProfileActionJPanel, :blankGenericProfileActionJPanel, :deleteActionJButton, :genericProfileActionsJList, :genericProfileActionsJPanel, :genericProfileActionsJScrollPane, :newActionJButton, :newProfileActionJDialog, :newProfileActionJLabel, :newProfileActionJTextField, :okNewProfileActionJButton, :saveJButton

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @genericProfileActions = nil
        @genericProfileActionJPanel = nil
        @blankGenericProfileActionJPanel = nil
        @deleteActionJButton = nil
        @genericProfileActionsJList = nil
        @genericProfileActionsJPanel = nil
        @genericProfileActionsJScrollPane = nil
        @newActionJButton = nil
        @newProfileActionJDialog = nil
        @newProfileActionJLabel = nil
        @newProfileActionJTextField = nil
        @okNewProfileActionJButton = nil
        @saveJButton = nil
    end
    

    def initialize()
        super()
        initialize_fields
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
        end.new())
        newProfileActionJDialogLayout = GroupLayout.new(@newProfileActionJDialog.getContentPane())
        @newProfileActionJDialog.getContentPane().setLayout(newProfileActionJDialogLayout)
        newProfileActionJDialogLayout.setHorizontalGroup(newProfileActionJDialogLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addGroup(newProfileActionJDialogLayout.createSequentialGroup().addGroup(newProfileActionJDialogLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addGroup(newProfileActionJDialogLayout.createSequentialGroup().addGap(93, 93, 93).addComponent(@okNewProfileActionJButton)).addGroup(newProfileActionJDialogLayout.createSequentialGroup().addGap(75, 75, 75).addComponent(@newProfileActionJLabel)).addGroup(newProfileActionJDialogLayout.createSequentialGroup().addGap(29, 29, 29).addComponent(@newProfileActionJTextField, javax.swing.GroupLayout.PREFERRED_SIZE, 178, javax.swing.GroupLayout.PREFERRED_SIZE))).addContainerGap(34, 32767)))
        newProfileActionJDialogLayout.setVerticalGroup(newProfileActionJDialogLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addGroup(javax.swing.GroupLayout.Alignment.TRAILING, newProfileActionJDialogLayout.createSequentialGroup().addContainerGap().addComponent(@newProfileActionJLabel).addGap(21, 21, 21).addComponent(@newProfileActionJTextField, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 20, 32767).addComponent(@okNewProfileActionJButton).addContainerGap()))
        @genericProfileActionsJPanel.setPreferredSize(Dimension.new(10000, 10000))
        @genericProfileActionsJList.addListSelectionListener(Class.new(ListSelectionListener.is_a?(Class) ? ListSelectionListener : Object) do
            include(ListSelectionListener) unless ListSelectionListener.is_a?(Class)
            

            def valueChanged(evt)
                genericProfileActionsJListValueChanged(evt)
            end
        end.new())
        @genericProfileActionsJScrollPane.setViewportView(@genericProfileActionsJList)
        @newActionJButton.setText("New")
        @newActionJButton.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                newActionJButtonActionPerformed(evt)
            end
        end.new())
        @deleteActionJButton.setText("Delete")
        @deleteActionJButton.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                deleteActionJButtonActionPerformed(evt)
            end
        end.new())
        @saveJButton.setText("Save")
        @saveJButton.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                saveJButtonActionPerformed(evt)
            end
        end.new())
        @blankGenericProfileActionJPanel.setMinimumSize(Dimension.new(500, 300))
        blankGenericProfileActionJPanelLayout = GroupLayout.new(@blankGenericProfileActionJPanel)
        @blankGenericProfileActionJPanel.setLayout(blankGenericProfileActionJPanelLayout)
        blankGenericProfileActionJPanelLayout.setHorizontalGroup(blankGenericProfileActionJPanelLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addGap(0, 500, 32767))
        blankGenericProfileActionJPanelLayout.setVerticalGroup(blankGenericProfileActionJPanelLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addGap(0, 296, 32767))
        genericProfileActionsJPanelLayout = GroupLayout.new(@genericProfileActionsJPanel)
        @genericProfileActionsJPanel.setLayout(genericProfileActionsJPanelLayout)
        genericProfileActionsJPanelLayout.setHorizontalGroup(genericProfileActionsJPanelLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addGroup(genericProfileActionsJPanelLayout.createSequentialGroup().addComponent(@genericProfileActionsJScrollPane, javax.swing.GroupLayout.PREFERRED_SIZE, 95, javax.swing.GroupLayout.PREFERRED_SIZE).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(@blankGenericProfileActionJPanel, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, 32767)).addGroup(genericProfileActionsJPanelLayout.createSequentialGroup().addComponent(@newActionJButton).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(@deleteActionJButton).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(@saveJButton).addContainerGap()))
        genericProfileActionsJPanelLayout.setVerticalGroup(genericProfileActionsJPanelLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addGroup(genericProfileActionsJPanelLayout.createSequentialGroup().addGroup(genericProfileActionsJPanelLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE).addComponent(@newActionJButton).addComponent(@deleteActionJButton).addComponent(@saveJButton)).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup(genericProfileActionsJPanelLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false).addComponent(@blankGenericProfileActionJPanel, 0, 296, 32767).addComponent(@genericProfileActionsJScrollPane, javax.swing.GroupLayout.DEFAULT_SIZE, 296, 32767)).addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, 32767)))
        layout = GroupLayout.new(self)
        self.setLayout(layout)
        layout.setHorizontalGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addGroup(layout.createSequentialGroup().addComponent(@genericProfileActionsJPanel, javax.swing.GroupLayout.PREFERRED_SIZE, 596, javax.swing.GroupLayout.PREFERRED_SIZE).addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, 32767)))
        layout.setVerticalGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addComponent(@genericProfileActionsJPanel, javax.swing.GroupLayout.PREFERRED_SIZE, 336, javax.swing.GroupLayout.PREFERRED_SIZE))
    end
    

    def setModel()
        defaultListModelHelper = self.getGenericProfileActions().getDefaultListModelHelper()
        if defaultListModelHelper.getListModel().getSize() > 0
            @genericProfileActionsJList.setModel(defaultListModelHelper.getListModel())
        end
    end
    

    def saveJButtonActionPerformed(evt)
        begin
            self.getGenericProfileActions().save()
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "saveJButtonActionPerformed", e)
        end
    end
    

    def updateProfileActionUI(profileActionNameString)
        @blankGenericProfileActionJPanel.removeAll()
        if profileActionNameString != nil
            genericProfileAction = self.getGenericProfileActions().getAction(profileActionNameString)
            self.setGenericProfileActionJPanel(GenericProfileActionJPanel.new())
            self.getGenericProfileActionJPanel().setGenericProfileAction(genericProfileAction)
            self.getGenericProfileActionJPanel().updateProfileActionUI()
            layout = @blankGenericProfileActionJPanel.getLayout()
            layout.setHorizontalGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addGap(0, 395, 32767).addComponent(self.getGenericProfileActionJPanel(), javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
            layout.setVerticalGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addGap(0, 256, 32767).addComponent(self.getGenericProfileActionJPanel(), javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
            @logUtil.putF("Setting Configuration Profile Actions JPanel", self, "genericProfileActionsJListValueChanged")
        end
    end
    

    def genericProfileActionsJListValueChanged(evt)
        begin
            profileActionNameString = @genericProfileActionsJList.getSelectedValue()
            self.updateProfileActionUI(profileActionNameString)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "genericProfileActionsJListValueChanged", e)
        end
    end
    

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
    

    def getGenericProfileActionJPanel()
        return @genericProfileActionJPanel
    end
    

    def setGenericProfileActionJPanel(genericProfileActionJPanel)
        @genericProfileActionJPanel = genericProfileActionJPanel
    end
    

    def getGenericProfileActions()
        return @genericProfileActions
    end
    

    def setGenericProfileActions(genericProfileActions)
        @genericProfileActions = genericProfileActions
    end
    

    def newActionJButtonActionPerformed(evt)
        @newProfileActionJDialog.setVisible(true)
    end
end

require "org/allbinary/input/automation/module/DefaultListModelHelper"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/input/automation/module/generic/configuration/profile/actions/GenericProfileAction"
require "org/allbinary/input/automation/module/generic/configuration/profile/actions/GenericProfileActionJPanel"
require "org/allbinary/input/automation/module/generic/configuration/profile/actions/GenericProfileActions"

