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

require "java/lang/JavaOverload"
require "java/lang/JavaClass"
# require "java/awt/event/InputEvent"
# require "javax/swing/DefaultComboBoxModel"
# require "javax/swing/ComboBoxModel"
# require "java/awt/Dimension"
# require "java/awt/Insets"
# require "java/awt/event/ActionEvent"
# require "java/awt/event/ActionListener"
# require "javax/swing/BorderFactory"
# require "javax/swing/GroupLayout"
# require "javax/swing/JButton"
# require "javax/swing/JCheckBox"
# require "javax/swing/JComboBox"
# require "javax/swing/JDialog"
# require "javax/swing/JLabel"
# require "javax/swing/JPanel"
# require "javax/swing/JTextField"
# require "javax/swing/LayoutStyle"

module ::Org; module Allbinary; module Input; module Automation; module Actions; module Script; module Condition; module Processors; module Input

class MouseActionScriptInputJPanel < JPanel
    attr_accessor :logUtil, :commonStrings, :mouseActionScriptInputInterface, :button1JCheckBox, :button2JCheckBox, :inputAutomationTypeJComboBox, :inputTypeJLabel, :jLabel1, :jLabel2, :jLabel3, :jLabel4, :jLabel5, :jLabel6, :mouseActionJButton, :mouseActionJDialog, :mouseDelayJTextField, :mouseXJTextField, :mouseYJTextField, :okJButton, :titleJLabel

    def jfields_org_allbinary_input_automation_actions_script_condition_processors_input_MouseActionScriptInputJPanel
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @mouseActionScriptInputInterface = nil unless instance_variable_defined?(:@mouseActionScriptInputInterface)
        @button1JCheckBox = nil unless instance_variable_defined?(:@button1JCheckBox)
        @button2JCheckBox = nil unless instance_variable_defined?(:@button2JCheckBox)
        @inputAutomationTypeJComboBox = nil unless instance_variable_defined?(:@inputAutomationTypeJComboBox)
        @inputTypeJLabel = nil unless instance_variable_defined?(:@inputTypeJLabel)
        @jLabel1 = nil unless instance_variable_defined?(:@jLabel1)
        @jLabel2 = nil unless instance_variable_defined?(:@jLabel2)
        @jLabel3 = nil unless instance_variable_defined?(:@jLabel3)
        @jLabel4 = nil unless instance_variable_defined?(:@jLabel4)
        @jLabel5 = nil unless instance_variable_defined?(:@jLabel5)
        @jLabel6 = nil unless instance_variable_defined?(:@jLabel6)
        @mouseActionJButton = nil unless instance_variable_defined?(:@mouseActionJButton)
        @mouseActionJDialog = nil unless instance_variable_defined?(:@mouseActionJDialog)
        @mouseDelayJTextField = nil unless instance_variable_defined?(:@mouseDelayJTextField)
        @mouseXJTextField = nil unless instance_variable_defined?(:@mouseXJTextField)
        @mouseYJTextField = nil unless instance_variable_defined?(:@mouseYJTextField)
        @okJButton = nil unless instance_variable_defined?(:@okJButton)
        @titleJLabel = nil unless instance_variable_defined?(:@titleJLabel)
    end
    

    def initialize(mouseActionScriptInputInterface)
        super()
        jfields_org_allbinary_input_automation_actions_script_condition_processors_input_MouseActionScriptInputJPanel
        @logUtil.putF(::Org::Allbinary::StringPackage::CommonLabels.getInstance().START + mouseActionScriptInputInterface, self, @commonStrings.CONSTRUCTOR)
        self.initComponents()
        @mouseActionScriptInputInterface = mouseActionScriptInputInterface
        defaultComboBoxModel = DefaultComboBoxModel.new()
        defaultComboBoxModel.addElement(::Org::Allbinary::Input::Automation::Robot::TempInputRobotNames::LOW_NAME)
        defaultComboBoxModel.addElement(::Org::Allbinary::Input::Automation::Robot::TempInputRobotNames::SYS_NAME)
        defaultComboBoxModel.addElement(::Org::Allbinary::Input::Automation::Robot::InputRobot::NAME)
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
    java_overload :set, 0
    

    # throws Exception
    def updateInputType()
        comboBoxModel = @inputAutomationTypeJComboBox.getModel()
        selectedItem = comboBoxModel.getSelectedItem()
        if !::Org::Allbinary::Logic::StringPackage::StringValidationUtil.getInstance().isEmpty(selectedItem)
            @mouseActionScriptInputInterface.setInputRobotInterface(::Org::Allbinary::Input::Automation::Robot::InputRobotFactory.getInstance().get(selectedItem))
        end
    end
    java_overload :updateInputType, 0
    

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
        if !::Org::Allbinary::Logic::StringPackage::StringValidationUtil.getInstance().isEmpty(mouseXString) && ::Org::Allbinary::Logic::StringPackage::StringValidationUtil.getInstance().isNumber(mouseXString)
            @mouseActionScriptInputInterface.getPoint().x = Integer(mouseXString)
        end
        mouseYString = @mouseYJTextField.getText()
        if !::Org::Allbinary::Logic::StringPackage::StringValidationUtil.getInstance().isEmpty(mouseYString) && ::Org::Allbinary::Logic::StringPackage::StringValidationUtil.getInstance().isNumber(mouseYString)
            @mouseActionScriptInputInterface.getPoint().y = Integer(mouseYString)
        end
        @mouseActionScriptInputInterface.log()
    end
    java_overload :update, 0
    

    def getMouseActionJDialog()
        return @mouseActionJDialog
    end
    java_overload :getMouseActionJDialog, 0
    

    def setMouseActionJDialog(mouseActionJDialog)
        @mouseActionJDialog = mouseActionJDialog
    end
    java_overload :setMouseActionJDialog, 1
    

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
            java_overload :actionPerformed, 1
        end.new())
        @jLabel2.setText("Buttons:")
        @jLabel3.setText("Move To:")
        @button1JCheckBox.setText(::Org::Allbinary::StringPackage::CommonPhoneStrings.getInstance().ONE)
        @button1JCheckBox.setBorder(BorderFactory.createEmptyBorder(0, 0, 0, 0))
        @button1JCheckBox.setMargin(Insets.new(0, 0, 0, 0))
        @button2JCheckBox.setText(::Org::Allbinary::StringPackage::CommonPhoneStrings.getInstance().TWO)
        @button2JCheckBox.setBorder(BorderFactory.createEmptyBorder(0, 0, 0, 0))
        @button2JCheckBox.setMargin(Insets.new(0, 0, 0, 0))
        @button2JCheckBox.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                button2JCheckBoxActionPerformed(evt)
            end
            java_overload :actionPerformed, 1
        end.new())
        @jLabel4.setText("x:")
        @mouseXJTextField.setText(::Org::Allbinary::StringPackage::CommonPhoneStrings.getInstance().ZERO)
        @jLabel5.setText("y:")
        @mouseYJTextField.setText(::Org::Allbinary::StringPackage::CommonPhoneStrings.getInstance().ZERO)
        @inputTypeJLabel.setText("Input Type:")
        @jLabel6.setText("Delay:")
        @mouseDelayJTextField.setText("100")
        mouseActionJDialogLayout = GroupLayout.new(@mouseActionJDialog.getContentPane())
        @mouseActionJDialog.getContentPane().setLayout(mouseActionJDialogLayout)
        mouseActionJDialogLayout.setHorizontalGroup(mouseActionJDialogLayout.createParallelGroup(GroupLayout::Alignment.LEADING).addGroup(mouseActionJDialogLayout.createSequentialGroup().addContainerGap().addGroup(mouseActionJDialogLayout.createParallelGroup(GroupLayout::Alignment.LEADING).addComponent(@inputTypeJLabel).addGroup(GroupLayout::Alignment.TRAILING, mouseActionJDialogLayout.createSequentialGroup().addGroup(mouseActionJDialogLayout.createParallelGroup(GroupLayout::Alignment.LEADING).addGroup(GroupLayout::Alignment.TRAILING, mouseActionJDialogLayout.createSequentialGroup().addComponent(@jLabel2).addGap(25, 25, 25)).addGroup(mouseActionJDialogLayout.createSequentialGroup().addGroup(mouseActionJDialogLayout.createParallelGroup(GroupLayout::Alignment.LEADING).addComponent(@jLabel3).addComponent(@jLabel6)).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED))).addGroup(mouseActionJDialogLayout.createParallelGroup(GroupLayout::Alignment.LEADING).addComponent(@mouseDelayJTextField, GroupLayout::Alignment.TRAILING, GroupLayout::DEFAULT_SIZE, 154, 32767).addGroup(mouseActionJDialogLayout.createSequentialGroup().addComponent(@titleJLabel).addGap(45, 45, 45)).addGroup(GroupLayout::Alignment.TRAILING, mouseActionJDialogLayout.createSequentialGroup().addPreferredGap(LayoutStyle::ComponentPlacement.RELATED).addComponent(@inputAutomationTypeJComboBox, 0, 154, 32767)).addGroup(mouseActionJDialogLayout.createSequentialGroup().addComponent(@button1JCheckBox).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED).addComponent(@button2JCheckBox)).addGroup(mouseActionJDialogLayout.createSequentialGroup().addGroup(mouseActionJDialogLayout.createParallelGroup(GroupLayout::Alignment.TRAILING).addGroup(mouseActionJDialogLayout.createSequentialGroup().addPreferredGap(LayoutStyle::ComponentPlacement.RELATED).addComponent(@okJButton)).addGroup(mouseActionJDialogLayout.createSequentialGroup().addComponent(@jLabel4).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED, 5, 32767).addComponent(@mouseXJTextField, GroupLayout::PREFERRED_SIZE, 59, GroupLayout::PREFERRED_SIZE))).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED).addComponent(@jLabel5).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED).addComponent(@mouseYJTextField, GroupLayout::DEFAULT_SIZE, 62, 32767))))).addContainerGap()))
        mouseActionJDialogLayout.setVerticalGroup(mouseActionJDialogLayout.createParallelGroup(GroupLayout::Alignment.LEADING).addGroup(mouseActionJDialogLayout.createSequentialGroup().addComponent(@titleJLabel).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED).addGroup(mouseActionJDialogLayout.createParallelGroup(GroupLayout::Alignment.BASELINE).addComponent(@inputTypeJLabel).addComponent(@inputAutomationTypeJComboBox, GroupLayout::PREFERRED_SIZE, GroupLayout::DEFAULT_SIZE, GroupLayout::PREFERRED_SIZE)).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED).addGroup(mouseActionJDialogLayout.createParallelGroup(GroupLayout::Alignment.LEADING).addComponent(@jLabel2, GroupLayout::PREFERRED_SIZE, 15, GroupLayout::PREFERRED_SIZE).addGroup(mouseActionJDialogLayout.createParallelGroup(GroupLayout::Alignment.BASELINE).addComponent(@button1JCheckBox).addComponent(@button2JCheckBox))).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED).addGroup(mouseActionJDialogLayout.createParallelGroup(GroupLayout::Alignment.BASELINE).addComponent(@jLabel6).addComponent(@mouseDelayJTextField, GroupLayout::PREFERRED_SIZE, GroupLayout::DEFAULT_SIZE, GroupLayout::PREFERRED_SIZE)).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED).addGroup(mouseActionJDialogLayout.createParallelGroup(GroupLayout::Alignment.BASELINE).addComponent(@jLabel3).addComponent(@jLabel4).addComponent(@jLabel5).addComponent(@mouseYJTextField, GroupLayout::PREFERRED_SIZE, GroupLayout::DEFAULT_SIZE, GroupLayout::PREFERRED_SIZE).addComponent(@mouseXJTextField, GroupLayout::PREFERRED_SIZE, GroupLayout::DEFAULT_SIZE, GroupLayout::PREFERRED_SIZE)).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED, GroupLayout::DEFAULT_SIZE, 32767).addComponent(@okJButton).addContainerGap()))
        setMinimumSize(Dimension.new(100, 0))
        @mouseActionJButton.setText("Edit")
        @mouseActionJButton.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                mouseActionJButtonActionPerformed(evt)
            end
            java_overload :actionPerformed, 1
        end.new())
        @jLabel1.setText("Mouse:")
        layout = GroupLayout.new(self)
        self.setLayout(layout)
        layout.setHorizontalGroup(layout.createParallelGroup(GroupLayout::Alignment.LEADING).addGroup(layout.createSequentialGroup().addComponent(@jLabel1).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED, 36, 32767).addComponent(@mouseActionJButton)))
        layout.setVerticalGroup(layout.createParallelGroup(GroupLayout::Alignment.LEADING).addGroup(layout.createParallelGroup(GroupLayout::Alignment.BASELINE).addComponent(@jLabel1).addComponent(@mouseActionJButton)))
    end
    java_overload :initComponents, 0
    

    def button2JCheckBoxActionPerformed(evt)
    end
    java_overload :button2JCheckBoxActionPerformed, 1
    

    def okJButtonActionPerformed(evt)
        begin
            self.update()
            self.getMouseActionJDialog().setVisible(false)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "okButtonActionPerformed", e)
        end
    end
    java_overload :okJButtonActionPerformed, 1
    

    def mouseActionJButtonActionPerformed(evt)
        self.getMouseActionJDialog().setVisible(true)
    end
    java_overload :mouseActionJButtonActionPerformed, 1
end

module ::Org; module Allbinary; module Input; module Automation; module Robot; autoload :InputRobot, "org/allbinary/input/automation/robot/InputRobot" unless const_defined?(:InputRobot, false); end; end; end; end; end
module ::Org; module Allbinary; module Input; module Automation; module Robot; autoload :InputRobotFactory, "org/allbinary/input/automation/robot/InputRobotFactory" unless const_defined?(:InputRobotFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Input; module Automation; module Robot; autoload :TempInputRobotNames, "org/allbinary/input/automation/robot/TempInputRobotNames" unless const_defined?(:TempInputRobotNames, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringValidationUtil, "org/allbinary/logic/string/StringValidationUtil" unless const_defined?(:StringValidationUtil, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonLabels, "org/allbinary/string/CommonLabels" unless const_defined?(:CommonLabels, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonPhoneStrings, "org/allbinary/string/CommonPhoneStrings" unless const_defined?(:CommonPhoneStrings, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
autoload :MouseActionScriptInputInterface, "org/allbinary/input/automation/actions/script/condition/processors/input/MouseActionScriptInputInterface" unless const_defined?(:MouseActionScriptInputInterface, false)

end; end; end; end; end; end; end; end; end

