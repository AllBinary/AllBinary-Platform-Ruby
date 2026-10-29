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


class TimeIntervalActionScriptConditionJPanel < JPanel
    attr_accessor :logUtil, :commonStrings, :timeIntervalActionScriptConditionInterface, :jLabel1, :jLabel2, :okJButton, :timeIntervalActionJButton, :timeIntervalActionJDialog, :timeIntervalJTextField, :titleJLabel

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @timeIntervalActionScriptConditionInterface = nil
        @jLabel1 = nil
        @jLabel2 = nil
        @okJButton = nil
        @timeIntervalActionJButton = nil
        @timeIntervalActionJDialog = nil
        @timeIntervalJTextField = nil
        @titleJLabel = nil
    end
    

    def initialize(timeIntervalActionScriptConditionInterface)
        super()
        initialize_fields
        @logUtil.putF(@commonStrings.START, self, @commonStrings.CONSTRUCTOR)
        self.initComponents()
        @timeIntervalActionScriptConditionInterface = timeIntervalActionScriptConditionInterface
        self.set()
    end
    

    def set()
        self.getTimeIntervalJTextField().setText((@timeIntervalActionScriptConditionInterface.getTimeDelayHelper().delay).to_s)
        @timeIntervalActionScriptConditionInterface.log()
    end
    

    def update()
        @timeIntervalActionScriptConditionInterface.getTimeDelayHelper().delay = (self.getTimeIntervalJTextField().getText()).to_s
        @timeIntervalActionScriptConditionInterface.log()
    end
    

    def getTimeIntervalJTextField()
        return @timeIntervalJTextField
    end
    

    def setTimeIntervalJTextField(timeIntervalJTextField)
        @timeIntervalJTextField = timeIntervalJTextField
    end
    

    def getTimeIntervalActionJDialog()
        return @timeIntervalActionJDialog
    end
    

    def setTimeIntervalActionJDialog(timeIntervalActionJDialog)
        @timeIntervalActionJDialog = timeIntervalActionJDialog
    end
    

    def initComponents()
        @timeIntervalActionJDialog = JDialog.new()
        @titleJLabel = JLabel.new()
        @okJButton = JButton.new()
        @jLabel2 = JLabel.new()
        @timeIntervalJTextField = JTextField.new()
        @timeIntervalActionJButton = JButton.new()
        @jLabel1 = JLabel.new()
        @timeIntervalActionJDialog.setMinimumSize(Dimension.new(250, 150))
        @titleJLabel.setText("Time Interval Condition Options")
        @okJButton.setText("OK")
        @okJButton.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                okJButtonActionPerformed(evt)
            end
        end.new())
        @jLabel2.setText("Time (ms):")
        timeIntervalActionJDialogLayout = GroupLayout.new(@timeIntervalActionJDialog.getContentPane())
        @timeIntervalActionJDialog.getContentPane().setLayout(timeIntervalActionJDialogLayout)
        timeIntervalActionJDialogLayout.setHorizontalGroup(timeIntervalActionJDialogLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addGroup(timeIntervalActionJDialogLayout.createSequentialGroup().addGroup(timeIntervalActionJDialogLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING).addGroup(javax.swing.GroupLayout.Alignment.LEADING, timeIntervalActionJDialogLayout.createSequentialGroup().addGap(82, 82, 82).addComponent(@okJButton)).addGroup(javax.swing.GroupLayout.Alignment.LEADING, timeIntervalActionJDialogLayout.createSequentialGroup().addGap(32, 32, 32).addGroup(timeIntervalActionJDialogLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addGroup(timeIntervalActionJDialogLayout.createSequentialGroup().addComponent(@jLabel2).addGap(16, 16, 16).addComponent(@timeIntervalJTextField, javax.swing.GroupLayout.DEFAULT_SIZE, 85, 32767)).addComponent(@titleJLabel)))).addContainerGap(36, 32767)))
        timeIntervalActionJDialogLayout.setVerticalGroup(timeIntervalActionJDialogLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addGroup(timeIntervalActionJDialogLayout.createSequentialGroup().addContainerGap().addComponent(@titleJLabel).addGap(20, 20, 20).addGroup(timeIntervalActionJDialogLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE).addComponent(@jLabel2).addComponent(@timeIntervalJTextField, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)).addGap(15, 15, 15).addComponent(@okJButton).addContainerGap()))
        setMinimumSize(Dimension.new(100, 0))
        @timeIntervalActionJButton.setText("Edit")
        @timeIntervalActionJButton.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                timeIntervalActionJButtonActionPerformed(evt)
            end
        end.new())
        @jLabel1.setText("Time Interval:")
        layout = GroupLayout.new(self)
        self.setLayout(layout)
        layout.setHorizontalGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addGroup(layout.createSequentialGroup().addComponent(@jLabel1).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, 32767).addComponent(@timeIntervalActionJButton)))
        layout.setVerticalGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE).addComponent(@jLabel1).addComponent(@timeIntervalActionJButton)))
    end
    

    def okJButtonActionPerformed(evt)
        self.update()
        self.getTimeIntervalActionJDialog().setVisible(false)
    end
    

    def timeIntervalActionJButtonActionPerformed(evt)
        self.getTimeIntervalActionJDialog().setVisible(true)
    end
end

require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/input/automation/actions/script/condition/TimeIntervalActionScriptConditionInterface"

