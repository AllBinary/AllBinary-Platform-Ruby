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

# require "java/awt/event/InputEvent"
# require "javax/swing"

class MouseActionScriptInputJPanel < JPanel
    attr_accessor :logUtil, :commonStrings, :mouseActionScriptInputInterface, :button1JCheckBox, :button2JCheckBox, :inputAutomationTypeJComboBox, :inputTypeJLabel, :jLabel1, :jLabel2, :jLabel3, :jLabel4, :jLabel5, :jLabel6, :mouseActionJButton, :mouseActionJDialog, :mouseDelayJTextField, :mouseXJTextField, :mouseYJTextField, :okJButton, :titleJLabel

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @mouseActionScriptInputInterface = nil
        @button1JCheckBox = nil
        @button2JCheckBox = nil
        @inputAutomationTypeJComboBox = nil
        @inputTypeJLabel = nil
        @jLabel1 = nil
        @jLabel2 = nil
        @jLabel3 = nil
        @jLabel4 = nil
        @jLabel5 = nil
        @jLabel6 = nil
        @mouseActionJButton = nil
        @mouseActionJDialog = nil
        @mouseDelayJTextField = nil
        @mouseXJTextField = nil
        @mouseYJTextField = nil
        @okJButton = nil
        @titleJLabel = nil
    end
    

    def initialize(mouseActionScriptInputInterface)
        super()
        initialize_fields
        @logUtil.putF(CommonLabels.getInstance().START + mouseActionScriptInputInterface, self, @commonStrings.CONSTRUCTOR)
        self.initComponents()
        @mouseActionScriptInputInterface = mouseActionScriptInputInterface
        defaultComboBoxModel = DefaultComboBoxModel.new()
        defaultComboBoxModel.addElement(TempInputRobotNames::LOW_NAME)
        defaultComboBoxModel.addElement(TempInputRobotNames::SYS_NAME)
        defaultComboBoxModel.addElement(InputRobot::NAME)
        @inputAutomationTypeJComboBox.setModel(defaultComboBoxModel)
        self.set()
    end
    

    def set()
        inputTypeComboBoxModel = @inputAutomationTypeJComboBox.getModel()
        inputTypeComboBoxModel.setSelectedItem(@mouseActionScriptInputInterface.getInputRobotInterface().getName())
        if (@mouseActionScriptInputInterface.getButtonClicks() & InputEvent::BUTTON1_MASK) != 0
            @button1JCheckBox.setSelected(true)
        else
            @button1JCheckBox.setSelected(false)
        end
        if (@mouseActionScriptInputInterface.getButtonClicks() & InputEvent::BUTTON2_MASK) != 0
            @button2JCheckBox.setSelected(true)
        else
            @button2JCheckBox.setSelected(false)
        end
        @mouseDelayJTextField.setText((@mouseActionScriptInputInterface.getTime()).to_s)
        @mouseXJTextField.setText((@mouseActionScriptInputInterface.getPoint().x).to_s)
        @mouseYJTextField.setText((@mouseActionScriptInputInterface.getPoint().y).to_s)
        @mouseActionScriptInputInterface.log()
    end
    

    # throws Exception
    def updateInputType()
        comboBoxModel = @inputAutomationTypeJComboBox.getModel()
        selectedItem = comboBoxModel.getSelectedItem()
        if !StringValidationUtil.getInstance().isEmpty(selectedItem)
            @mouseActionScriptInputInterface.setInputRobotInterface(InputRobotFactory.getInstance().get(selectedItem))
        end
    end
    

    # throws Exception
    def update()
        self.updateInputType()
        @mouseActionScriptInputInterface.setTime((@mouseDelayJTextField.getText()).to_s)
        @logUtil.putF("Button State: " + (@mouseActionScriptInputInterface.getButtonClicks()).to_s, self, "update")
        if @button1JCheckBox.isSelected()
            if (@mouseActionScriptInputInterface.getButtonClicks() & InputEvent::BUTTON1_MASK) == 0
                @mouseActionScriptInputInterface.setButtonClicks(@mouseActionScriptInputInterface.getButtonClicks() | InputEvent::BUTTON1_MASK)
                @logUtil.putF("Button 1 Selected: " + (@mouseActionScriptInputInterface.getButtonClicks()).to_s, self, "update")
            end
        else
            if (@mouseActionScriptInputInterface.getButtonClicks() & InputEvent::BUTTON1_MASK) != 0
                @mouseActionScriptInputInterface.setButtonClicks(@mouseActionScriptInputInterface.getButtonClicks() ^ InputEvent::BUTTON1_MASK)
                @logUtil.putF("Button 1 Deselected: " + (@mouseActionScriptInputInterface.getButtonClicks()).to_s, self, "update")
            end
        end
        if @button2JCheckBox.isSelected()
            if (@mouseActionScriptInputInterface.getButtonClicks() & InputEvent::BUTTON2_MASK) == 0
                @mouseActionScriptInputInterface.setButtonClicks(@mouseActionScriptInputInterface.getButtonClicks() | InputEvent::BUTTON2_MASK)
                @logUtil.putF("Button 2 Selected: " + (@mouseActionScriptInputInterface.getButtonClicks()).to_s, self, "update")
            end
        else
            if (@mouseActionScriptInputInterface.getButtonClicks() & InputEvent::BUTTON2_MASK) != 0
                @mouseActionScriptInputInterface.setButtonClicks(@mouseActionScriptInputInterface.getButtonClicks() ^ InputEvent::BUTTON2_MASK)
                @logUtil.putF("Button 2 Deselected: " + (@mouseActionScriptInputInterface.getButtonClicks()).to_s, self, "update")
            end
        end
        mouseXString = @mouseXJTextField.getText()
        if !StringValidationUtil.getInstance().isEmpty(mouseXString) && StringValidationUtil.getInstance().isNumber(mouseXString)
            @mouseActionScriptInputInterface.getPoint().x = Integer(mouseXString)
        end
        mouseYString = @mouseYJTextField.getText()
        if !StringValidationUtil.getInstance().isEmpty(mouseYString) && StringValidationUtil.getInstance().isNumber(mouseYString)
            @mouseActionScriptInputInterface.getPoint().y = Integer(mouseYString)
        end
        @mouseActionScriptInputInterface.log()
    end
    

    def getMouseActionJDialog()
        return @mouseActionJDialog
    end
    

    def setMouseActionJDialog(mouseActionJDialog)
        @mouseActionJDialog = mouseActionJDialog
    end
    

    def initComponents()
        @mouseActionJDialog = JDialog.new()
        @titleJLabel = JLabel.new()
        @okJButton = JButton.new()
        @jLabel2 = JLabel.new()
        @jLabel3 = JLabel.new()
        @button1JCheckBox = JCheckBox.new()
        @button2JCheckBox = JCheckBox.new()
        @jLabel4 = JLabel.new()
        @mouseXJTextField = JTextField.new()
        @jLabel5 = JLabel.new()
        @mouseYJTextField = JTextField.new()
        @inputTypeJLabel = JLabel.new()
        @inputAutomationTypeJComboBox = JComboBox.new()
        @jLabel6 = JLabel.new()
        @mouseDelayJTextField = JTextField.new()
        @mouseActionJButton = JButton.new()
        @jLabel1 = JLabel.new()
        @mouseActionJDialog.setMinimumSize(Dimension.new(275, 185))
        @titleJLabel.setText("Mouse Input Options")
        @okJButton.setText("OK")
        @okJButton.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                okJButtonActionPerformed(evt)
            end
        end.new())
        @jLabel2.setText("Buttons:")
        @jLabel3.setText("Move To:")
        @button1JCheckBox.setText(CommonPhoneStrings.getInstance().ONE)
        @button1JCheckBox.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0))
        @button1JCheckBox.setMargin(Insets.new(0, 0, 0, 0))
        @button2JCheckBox.setText(CommonPhoneStrings.getInstance().TWO)
        @button2JCheckBox.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0))
        @button2JCheckBox.setMargin(Insets.new(0, 0, 0, 0))
        @button2JCheckBox.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                button2JCheckBoxActionPerformed(evt)
            end
        end.new())
        @jLabel4.setText("x:")
        @mouseXJTextField.setText(CommonPhoneStrings.getInstance().ZERO)
        @jLabel5.setText("y:")
        @mouseYJTextField.setText(CommonPhoneStrings.getInstance().ZERO)
        @inputTypeJLabel.setText("Input Type:")
        @jLabel6.setText("Delay:")
        @mouseDelayJTextField.setText("100")
        mouseActionJDialogLayout = GroupLayout.new(@mouseActionJDialog.getContentPane())
        @mouseActionJDialog.getContentPane().setLayout(mouseActionJDialogLayout)
        mouseActionJDialogLayout.setHorizontalGroup(mouseActionJDialogLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addGroup(mouseActionJDialogLayout.createSequentialGroup().addContainerGap().addGroup(mouseActionJDialogLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addComponent(@inputTypeJLabel).addGroup(javax.swing.GroupLayout.Alignment.TRAILING, mouseActionJDialogLayout.createSequentialGroup().addGroup(mouseActionJDialogLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addGroup(javax.swing.GroupLayout.Alignment.TRAILING, mouseActionJDialogLayout.createSequentialGroup().addComponent(@jLabel2).addGap(25, 25, 25)).addGroup(mouseActionJDialogLayout.createSequentialGroup().addGroup(mouseActionJDialogLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addComponent(@jLabel3).addComponent(@jLabel6)).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED))).addGroup(mouseActionJDialogLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addComponent(@mouseDelayJTextField, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, 154, 32767).addGroup(mouseActionJDialogLayout.createSequentialGroup().addComponent(@titleJLabel).addGap(45, 45, 45)).addGroup(javax.swing.GroupLayout.Alignment.TRAILING, mouseActionJDialogLayout.createSequentialGroup().addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(@inputAutomationTypeJComboBox, 0, 154, 32767)).addGroup(mouseActionJDialogLayout.createSequentialGroup().addComponent(@button1JCheckBox).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(@button2JCheckBox)).addGroup(mouseActionJDialogLayout.createSequentialGroup().addGroup(mouseActionJDialogLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING).addGroup(mouseActionJDialogLayout.createSequentialGroup().addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(@okJButton)).addGroup(mouseActionJDialogLayout.createSequentialGroup().addComponent(@jLabel4).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 5, 32767).addComponent(@mouseXJTextField, javax.swing.GroupLayout.PREFERRED_SIZE, 59, javax.swing.GroupLayout.PREFERRED_SIZE))).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(@jLabel5).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(@mouseYJTextField, javax.swing.GroupLayout.DEFAULT_SIZE, 62, 32767))))).addContainerGap()))
        mouseActionJDialogLayout.setVerticalGroup(mouseActionJDialogLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addGroup(mouseActionJDialogLayout.createSequentialGroup().addComponent(@titleJLabel).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup(mouseActionJDialogLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE).addComponent(@inputTypeJLabel).addComponent(@inputAutomationTypeJComboBox, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup(mouseActionJDialogLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addComponent(@jLabel2, javax.swing.GroupLayout.PREFERRED_SIZE, 15, javax.swing.GroupLayout.PREFERRED_SIZE).addGroup(mouseActionJDialogLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE).addComponent(@button1JCheckBox).addComponent(@button2JCheckBox))).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup(mouseActionJDialogLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE).addComponent(@jLabel6).addComponent(@mouseDelayJTextField, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup(mouseActionJDialogLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE).addComponent(@jLabel3).addComponent(@jLabel4).addComponent(@jLabel5).addComponent(@mouseYJTextField, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE).addComponent(@mouseXJTextField, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, 32767).addComponent(@okJButton).addContainerGap()))
        setMinimumSize(Dimension.new(100, 0))
        @mouseActionJButton.setText("Edit")
        @mouseActionJButton.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                mouseActionJButtonActionPerformed(evt)
            end
        end.new())
        @jLabel1.setText("Mouse:")
        layout = GroupLayout.new(self)
        self.setLayout(layout)
        layout.setHorizontalGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addGroup(layout.createSequentialGroup().addComponent(@jLabel1).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 36, 32767).addComponent(@mouseActionJButton)))
        layout.setVerticalGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE).addComponent(@jLabel1).addComponent(@mouseActionJButton)))
    end
    

    def button2JCheckBoxActionPerformed(evt)
    end
    

    def okJButtonActionPerformed(evt)
        begin
            self.update()
            self.getMouseActionJDialog().setVisible(false)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "okButtonActionPerformed", e)
        end
    end
    

    def mouseActionJButtonActionPerformed(evt)
        self.getMouseActionJDialog().setVisible(true)
    end
end

require "org/allbinary/input/automation/robot/InputRobot"
require "org/allbinary/input/automation/robot/InputRobotFactory"
require "org/allbinary/input/automation/robot/TempInputRobotNames"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringValidationUtil"
require "org/allbinary/string/CommonLabels"
require "org/allbinary/string/CommonPhoneStrings"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/input/automation/actions/script/condition/processors/input/MouseActionScriptInputInterface"

