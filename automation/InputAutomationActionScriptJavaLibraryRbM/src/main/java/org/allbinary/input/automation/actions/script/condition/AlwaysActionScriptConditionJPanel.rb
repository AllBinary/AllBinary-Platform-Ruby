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
# package org.allbinary.input.automation.actions.script.condition


class AlwaysActionScriptConditionJPanel < JPanel
    attr_accessor :logUtil, :commonStrings, :alwaysActionScriptConditionInterface, :alwaysActionJButton, :alwaysActionJDialog, :alwaysJComboBox, :jLabel1, :jLabel2, :okJButton, :titleJLabel

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @alwaysActionScriptConditionInterface = nil
        @alwaysActionJButton = nil
        @alwaysActionJDialog = nil
        @alwaysJComboBox = nil
        @jLabel1 = nil
        @jLabel2 = nil
        @okJButton = nil
        @titleJLabel = nil
    end
    

    def initialize(alwaysActionScriptConditionInterface)
        super()
        initialize_fields
        @logUtil.putF(@commonStrings.START, self, @commonStrings.CONSTRUCTOR)
        self.initComponents()
        @alwaysActionScriptConditionInterface = alwaysActionScriptConditionInterface
        self.set()
    end
    

    def set()
        if @alwaysActionScriptConditionInterface.isIsOn()
            @alwaysJComboBox.setSelectedIndex(0)
        else
            @alwaysJComboBox.setSelectedIndex(1)
        end
        @alwaysActionScriptConditionInterface.log()
    end
    

    def update()
        if @alwaysJComboBox.getSelectedIndex() == 0
            @alwaysActionScriptConditionInterface.setIsOn(true)
        else
            @alwaysActionScriptConditionInterface.setIsOn(false)
        end
        @alwaysActionScriptConditionInterface.log()
    end
    

    def getAlwaysActionJDialog()
        return @alwaysActionJDialog
    end
    

    def setAlwaysActionJDialog(alwaysActionJDialog)
        @alwaysActionJDialog = alwaysActionJDialog
    end
    

    def initComponents()
        @alwaysActionJDialog = JDialog.new()
        @titleJLabel = JLabel.new()
        @okJButton = JButton.new()
        @jLabel2 = JLabel.new()
        @alwaysJComboBox = JComboBox.new()
        @alwaysActionJButton = JButton.new()
        @jLabel1 = JLabel.new()
        @alwaysActionJDialog.setMinimumSize(Dimension.new(250, 150))
        @titleJLabel.setText("Always Condition Options")
        @okJButton.setText("OK")
        @okJButton.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                okJButtonActionPerformed(evt)
            end
        end.new())
        @jLabel2.setText("On:")
        @alwaysJComboBox.setModel(DefaultComboBoxModel.new(["true", "false"]))
        alwaysActionJDialogLayout = GroupLayout.new(@alwaysActionJDialog.getContentPane())
        @alwaysActionJDialog.getContentPane().setLayout(alwaysActionJDialogLayout)
        alwaysActionJDialogLayout.setHorizontalGroup(alwaysActionJDialogLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addGroup(alwaysActionJDialogLayout.createSequentialGroup().addGroup(alwaysActionJDialogLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addGroup(alwaysActionJDialogLayout.createSequentialGroup().addGap(47, 47, 47).addGroup(alwaysActionJDialogLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false).addGroup(javax.swing.GroupLayout.Alignment.TRAILING, alwaysActionJDialogLayout.createSequentialGroup().addComponent(@jLabel2).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, 32767).addComponent(@alwaysJComboBox, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)).addComponent(@titleJLabel))).addGroup(alwaysActionJDialogLayout.createSequentialGroup().addGap(79, 79, 79).addComponent(@okJButton))).addContainerGap(45, 32767)))
        alwaysActionJDialogLayout.setVerticalGroup(alwaysActionJDialogLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addGroup(alwaysActionJDialogLayout.createSequentialGroup().addContainerGap().addComponent(@titleJLabel).addGap(20, 20, 20).addGroup(alwaysActionJDialogLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE).addComponent(@alwaysJComboBox, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE).addComponent(@jLabel2)).addGap(15, 15, 15).addComponent(@okJButton).addContainerGap()))
        setMinimumSize(Dimension.new(100, 0))
        @alwaysActionJButton.setText("Edit")
        @alwaysActionJButton.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                alwaysActionJButtonActionPerformed(evt)
            end
        end.new())
        @jLabel1.setText("Always:")
        layout = GroupLayout.new(self)
        self.setLayout(layout)
        layout.setHorizontalGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addGroup(layout.createSequentialGroup().addComponent(@jLabel1).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 33, 32767).addComponent(@alwaysActionJButton)))
        layout.setVerticalGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE).addComponent(@jLabel1).addComponent(@alwaysActionJButton)))
    end
    

    def okJButtonActionPerformed(evt)
        self.update()
        self.getAlwaysActionJDialog().setVisible(false)
    end
    

    def alwaysActionJButtonActionPerformed(evt)
        self.getAlwaysActionJDialog().setVisible(true)
    end
end

require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/input/automation/actions/script/condition/AlwaysActionScriptConditionInterface"

