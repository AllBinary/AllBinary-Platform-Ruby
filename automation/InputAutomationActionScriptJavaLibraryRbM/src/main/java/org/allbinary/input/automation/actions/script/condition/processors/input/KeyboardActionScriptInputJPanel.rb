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
# package org.allbinary.input.automation.actions.script.condition.processors.input

# require "javax/swing"

class KeyboardActionScriptInputJPanel < JPanel
    attr_accessor :logUtil, :commonStrings, :keyActionScriptInputInterface, :addKeyJLabel, :delayBetweenJLabel, :delayJTextField, :holdTimeJLabel, :inputAutomationTypeJComboBox, :inputTypeJLabel, :jLabel1, :jPanel1, :keyActionJButton, :keyActionJDialog, :keyIntegerJComboBox, :keyNameJComboBox, :normalJRadioButton, :okJButton, :pressJRadioButton, :releaseJRadioButton, :sequenceJRadioButton, :simultaneousJRadioButton, :testJLabel, :textJTextField, :timeJTextField, :titleJLabel

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @keyActionScriptInputInterface = nil
        @addKeyJLabel = nil
        @delayBetweenJLabel = nil
        @delayJTextField = nil
        @holdTimeJLabel = nil
        @inputAutomationTypeJComboBox = nil
        @inputTypeJLabel = nil
        @jLabel1 = nil
        @jPanel1 = nil
        @keyActionJButton = nil
        @keyActionJDialog = nil
        @keyIntegerJComboBox = nil
        @keyNameJComboBox = nil
        @normalJRadioButton = nil
        @okJButton = nil
        @pressJRadioButton = nil
        @releaseJRadioButton = nil
        @sequenceJRadioButton = nil
        @simultaneousJRadioButton = nil
        @testJLabel = nil
        @textJTextField = nil
        @timeJTextField = nil
        @titleJLabel = nil
    end
    

    def initialize(keyActionScriptInputInterface)
        super()
        initialize_fields
        @logUtil.putF(@commonStrings.START, self, @commonStrings.CONSTRUCTOR)
        self.initComponents()
        @keyActionScriptInputInterface = keyActionScriptInputInterface
        defaultComboBoxModel = DefaultComboBoxModel.new()
        defaultComboBoxModel.addElement(TempInputRobotNames::DX_NAME)
        defaultComboBoxModel.addElement(InputRobot::NAME)
        @inputAutomationTypeJComboBox.setModel(defaultComboBoxModel)
        @keyNameJComboBox.setModel(KeyNameDefaultComboBoxModelFactory.getInstance())
        @keyIntegerJComboBox.setModel(KeyCharDefaultComboBoxModelFactory.getInstance())
        if @keyActionScriptInputInterface.isNormal()
            @normalJRadioButton.setSelected(true)
            @pressJRadioButton.setSelected(false)
            @releaseJRadioButton.setSelected(false)
        elsif @keyActionScriptInputInterface.isPress()
            @normalJRadioButton.setSelected(false)
            @pressJRadioButton.setSelected(true)
            @releaseJRadioButton.setSelected(false)
        elsif @keyActionScriptInputInterface.isRelease()
            @normalJRadioButton.setSelected(false)
            @pressJRadioButton.setSelected(false)
            @releaseJRadioButton.setSelected(true)
        end
        self.set()
    end
    

    def set()
        inputTypeComboBoxModel = @inputAutomationTypeJComboBox.getModel()
        inputTypeComboBoxModel.setSelectedItem(@keyActionScriptInputInterface.getInputRobotInterface().getName())
        @textJTextField.setText(@keyActionScriptInputInterface.getText())
        @delayJTextField.setText((@keyActionScriptInputInterface.getDelayBetweenKeys()).to_s)
        @timeJTextField.setText((@keyActionScriptInputInterface.getTime()).to_s)
        @keyActionScriptInputInterface.log()
    end
    

    # throws Exception
    def updateInputType()
        comboBoxModel = @inputAutomationTypeJComboBox.getModel()
        selectedItem = comboBoxModel.getSelectedItem()
        if !StringValidationUtil.getInstance().isEmpty(selectedItem)
            @keyActionScriptInputInterface.setInputRobotInterface(InputRobotFactory.getInstance().get(selectedItem))
        end
    end
    

    def getSelectedKey()
        comboBoxModel = @keyNameJComboBox.getModel()
        selectedItem = comboBoxModel.getSelectedItem()
        if !StringValidationUtil.getInstance().isEmpty(selectedItem)
            return KeySingletonFactory.getHashtable().get(selectedItem)
        end
        return nil
    end
    

    def updateKeys()
        text = @textJTextField.getText()
        @keyActionScriptInputInterface.setText(text)
    end
    

    # throws Exception
    def update()
        self.updateInputType()
        self.updateKeys()
        @keyActionScriptInputInterface.setTime((@timeJTextField.getText()).to_s.to_i)
        @keyActionScriptInputInterface.log()
    end
    

    def getKeyActionJDialog()
        return @keyActionJDialog
    end
    

    def setKeyActionJDialog(keyActionJDialog)
        @keyActionJDialog = keyActionJDialog
    end
    

    def initComponents()
        @keyActionJDialog = JDialog.new()
        @titleJLabel = JLabel.new()
        @addKeyJLabel = JLabel.new()
        @keyNameJComboBox = JComboBox.new()
        @timeJTextField = JTextField.new()
        @holdTimeJLabel = JLabel.new()
        @inputAutomationTypeJComboBox = JComboBox.new()
        @inputTypeJLabel = JLabel.new()
        @delayJTextField = JTextField.new()
        @delayBetweenJLabel = JLabel.new()
        @testJLabel = JLabel.new()
        @textJTextField = JTextField.new()
        @pressJRadioButton = JRadioButton.new()
        @releaseJRadioButton = JRadioButton.new()
        @normalJRadioButton = JRadioButton.new()
        @simultaneousJRadioButton = JRadioButton.new()
        @sequenceJRadioButton = JRadioButton.new()
        @jPanel1 = JPanel.new()
        @okJButton = JButton.new()
        @keyIntegerJComboBox = JComboBox.new()
        @keyActionJButton = JButton.new()
        @jLabel1 = JLabel.new()
        @keyActionJDialog.setMinimumSize(Dimension.new(255, 280))
        @titleJLabel.setHorizontalAlignment(javax.swing.SwingConstants.CENTER)
        @titleJLabel.setText("Keyboard Input Options")
        @addKeyJLabel.setText("Add Key:")
        @keyNameJComboBox.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                keyNameJComboBoxActionPerformed(evt)
            end
        end.new())
        @timeJTextField.setText(CommonPhoneStrings.getInstance().ZERO)
        @holdTimeJLabel.setText("Hold Time (ms):")
        @inputTypeJLabel.setText("Input Type:")
        @delayJTextField.setText(CommonPhoneStrings.getInstance().ZERO)
        @delayBetweenJLabel.setText("Delay Between Keys (ms):")
        @testJLabel.setText("Text:")
        @textJTextField.setText(CommonPhoneStrings.getInstance().ZERO)
        @pressJRadioButton.setText("Press")
        @pressJRadioButton.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0))
        @pressJRadioButton.setMargin(Insets.new(0, 0, 0, 0))
        @pressJRadioButton.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                pressJRadioButtonActionPerformed(evt)
            end
        end.new())
        @releaseJRadioButton.setText("Release")
        @releaseJRadioButton.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0))
        @releaseJRadioButton.setMargin(Insets.new(0, 0, 0, 0))
        @releaseJRadioButton.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                releaseJRadioButtonActionPerformed(evt)
            end
        end.new())
        @normalJRadioButton.setSelected(true)
        @normalJRadioButton.setText("Normal")
        @normalJRadioButton.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0))
        @normalJRadioButton.setMargin(Insets.new(0, 0, 0, 0))
        @normalJRadioButton.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                normalJRadioButtonActionPerformed(evt)
            end
        end.new())
        @simultaneousJRadioButton.setSelected(true)
        @simultaneousJRadioButton.setText("Simultaneous")
        @simultaneousJRadioButton.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0))
        @simultaneousJRadioButton.setMargin(Insets.new(0, 0, 0, 0))
        @simultaneousJRadioButton.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                simultaneousJRadioButtonActionPerformed(evt)
            end
        end.new())
        @sequenceJRadioButton.setText("Sequence")
        @sequenceJRadioButton.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0))
        @sequenceJRadioButton.setMargin(Insets.new(0, 0, 0, 0))
        @sequenceJRadioButton.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                sequenceJRadioButtonActionPerformed(evt)
            end
        end.new())
        @okJButton.setText("OK")
        @okJButton.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER)
        @okJButton.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                okJButtonActionPerformed(evt)
            end
        end.new())
        @jPanel1.add(@okJButton)
        @keyIntegerJComboBox.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                keyIntegerJComboBoxActionPerformed(evt)
            end
        end.new())
        keyActionJDialogLayout = GroupLayout.new(@keyActionJDialog.getContentPane())
        @keyActionJDialog.getContentPane().setLayout(keyActionJDialogLayout)
        keyActionJDialogLayout.setHorizontalGroup(keyActionJDialogLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addGroup(keyActionJDialogLayout.createSequentialGroup().addContainerGap().addGroup(keyActionJDialogLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addGroup(keyActionJDialogLayout.createSequentialGroup().addGroup(keyActionJDialogLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false).addComponent(@addKeyJLabel, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, 32767).addComponent(@inputTypeJLabel, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, 32767)).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup(keyActionJDialogLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING).addComponent(@inputAutomationTypeJComboBox, 0, 148, 32767).addComponent(@textJTextField, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.DEFAULT_SIZE, 148, 32767).addGroup(keyActionJDialogLayout.createSequentialGroup().addComponent(@keyNameJComboBox, 0, 101, 32767).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(@keyIntegerJComboBox, javax.swing.GroupLayout.PREFERRED_SIZE, 41, javax.swing.GroupLayout.PREFERRED_SIZE)))).addComponent(@testJLabel, javax.swing.GroupLayout.PREFERRED_SIZE, 60, javax.swing.GroupLayout.PREFERRED_SIZE).addGroup(keyActionJDialogLayout.createSequentialGroup().addComponent(@normalJRadioButton).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(@pressJRadioButton).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(@releaseJRadioButton).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 48, javax.swing.GroupLayout.PREFERRED_SIZE)).addGroup(javax.swing.GroupLayout.Alignment.TRAILING, keyActionJDialogLayout.createSequentialGroup().addComponent(@holdTimeJLabel).addGap(22, 22, 22).addComponent(@timeJTextField, javax.swing.GroupLayout.DEFAULT_SIZE, 113, 32767)).addGroup(keyActionJDialogLayout.createSequentialGroup().addComponent(@delayBetweenJLabel).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 15, 32767).addComponent(@delayJTextField, javax.swing.GroupLayout.PREFERRED_SIZE, 68, javax.swing.GroupLayout.PREFERRED_SIZE)).addGroup(keyActionJDialogLayout.createSequentialGroup().addComponent(@simultaneousJRadioButton).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(@sequenceJRadioButton))).addContainerGap()).addComponent(@titleJLabel, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, 229, 32767).addComponent(@jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, 229, 32767))
        keyActionJDialogLayout.setVerticalGroup(keyActionJDialogLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addGroup(keyActionJDialogLayout.createSequentialGroup().addComponent(@titleJLabel).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup(keyActionJDialogLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE).addComponent(@inputTypeJLabel).addComponent(@inputAutomationTypeJComboBox, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup(keyActionJDialogLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE).addComponent(@addKeyJLabel).addComponent(@keyIntegerJComboBox, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE).addComponent(@keyNameJComboBox, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup(keyActionJDialogLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE).addComponent(@testJLabel).addComponent(@textJTextField, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup(keyActionJDialogLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE).addComponent(@pressJRadioButton).addComponent(@normalJRadioButton).addComponent(@releaseJRadioButton)).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup(keyActionJDialogLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE).addComponent(@holdTimeJLabel).addComponent(@timeJTextField, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup(keyActionJDialogLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE).addComponent(@delayBetweenJLabel).addComponent(@delayJTextField, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup(keyActionJDialogLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE).addComponent(@simultaneousJRadioButton).addComponent(@sequenceJRadioButton)).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(@jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE).addContainerGap()))
        setMinimumSize(Dimension.new(100, 0))
        @keyActionJButton.setText("Edit")
        @keyActionJButton.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                keyActionJButtonActionPerformed(evt)
            end
        end.new())
        @jLabel1.setText("Key:")
        layout = GroupLayout.new(self)
        self.setLayout(layout)
        layout.setHorizontalGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addGroup(layout.createSequentialGroup().addComponent(@jLabel1).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 49, 32767).addComponent(@keyActionJButton)))
        layout.setVerticalGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE).addComponent(@jLabel1).addComponent(@keyActionJButton)))
    end
    

    def prependText(integer)
        if integer != nil
            newKey = "&#" + integer.to_s + ";"
            @textJTextField.setText(newKey + (@textJTextField.getText()).to_s)
        end
    end
    

    def keyIntegerJComboBoxActionPerformed(evt)
        @keyIntegerJComboBox.getSelectedIndex()
        @keyNameJComboBox.setSelectedIndex(@keyIntegerJComboBox.getSelectedIndex())
    end
    

    def sequenceJRadioButtonActionPerformed(evt)
        if @sequenceJRadioButton.isSelected()
            @delayJTextField.setText(CommonPhoneStrings.getInstance().ONE)
            @simultaneousJRadioButton.setSelected(false)
        end
    end
    

    def simultaneousJRadioButtonActionPerformed(evt)
        if @simultaneousJRadioButton.isSelected()
            @delayJTextField.setText(CommonPhoneStrings.getInstance().ZERO)
            @sequenceJRadioButton.setSelected(false)
        end
    end
    

    def keyNameJComboBoxActionPerformed(evt)
        integer = self.getSelectedKey()
        self.prependText(integer)
        @keyIntegerJComboBox.setSelectedIndex(@keyNameJComboBox.getSelectedIndex())
    end
    

    def okJButtonActionPerformed(evt)
        begin
            self.update()
            self.getKeyActionJDialog().setVisible(false)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "okButtonActionPerformed", e)
        end
    end
    

    def keyActionJButtonActionPerformed(evt)
        self.getKeyActionJDialog().setVisible(true)
    end
    

    def normalJRadioButtonActionPerformed(evt)
        if @normalJRadioButton.isSelected()
            @keyActionScriptInputInterface.setNormal()
            @pressJRadioButton.setSelected(false)
            @releaseJRadioButton.setSelected(false)
        end
    end
    

    def releaseJRadioButtonActionPerformed(evt)
        if @releaseJRadioButton.isSelected()
            @keyActionScriptInputInterface.setRelease(true)
            @keyActionScriptInputInterface.setPress(false)
            @pressJRadioButton.setSelected(false)
            @normalJRadioButton.setSelected(false)
        end
    end
    

    def pressJRadioButtonActionPerformed(evt)
        if @pressJRadioButton.isSelected()
            @keyActionScriptInputInterface.setPress(true)
            @keyActionScriptInputInterface.setRelease(false)
            @releaseJRadioButton.setSelected(false)
            @normalJRadioButton.setSelected(false)
        end
    end
end

require "org/allbinary/input/KeySingletonFactory"
require "org/allbinary/input/automation/robot/InputRobot"
require "org/allbinary/input/automation/robot/InputRobotFactory"
require "org/allbinary/input/automation/robot/TempInputRobotNames"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringValidationUtil"
require "org/allbinary/string/CommonPhoneStrings"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/input/automation/actions/script/condition/processors/input/KeyCharDefaultComboBoxModelFactory"
require "org/allbinary/input/automation/actions/script/condition/processors/input/KeyNameDefaultComboBoxModelFactory"
require "org/allbinary/input/automation/actions/script/condition/processors/input/KeyboardActionScriptInputInterface"

