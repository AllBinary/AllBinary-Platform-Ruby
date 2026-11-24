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
# require "javax/swing/DefaultComboBoxModel"
# require "javax/swing/ComboBoxModel"
# require "java/awt/Dimension"
# require "java/awt/Insets"
# require "java/awt/event/ActionEvent"
# require "java/awt/event/ActionListener"
# require "javax/swing/BorderFactory"
# require "javax/swing/GroupLayout"
# require "javax/swing/JButton"
# require "javax/swing/JComboBox"
# require "javax/swing/JDialog"
# require "javax/swing/JLabel"
# require "javax/swing/JPanel"
# require "javax/swing/JRadioButton"
# require "javax/swing/JTextField"
# require "javax/swing/LayoutStyle"
# require "javax/swing/SwingConstants"

module ::Org; module Allbinary; module Input; module Automation; module Actions; module Script; module Condition; module Processors; module Input

class KeyboardActionScriptInputJPanel < JPanel
    attr_accessor :logUtil, :commonStrings, :keyActionScriptInputInterface, :addKeyJLabel, :delayBetweenJLabel, :delayJTextField, :holdTimeJLabel, :inputAutomationTypeJComboBox, :inputTypeJLabel, :jLabel1, :jPanel1, :keyActionJButton, :keyActionJDialog, :keyIntegerJComboBox, :keyNameJComboBox, :normalJRadioButton, :okJButton, :pressJRadioButton, :releaseJRadioButton, :sequenceJRadioButton, :simultaneousJRadioButton, :testJLabel, :textJTextField, :timeJTextField, :titleJLabel

    def jfields_org_allbinary_input_automation_actions_script_condition_processors_input_KeyboardActionScriptInputJPanel
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @keyActionScriptInputInterface = nil unless instance_variable_defined?(:@keyActionScriptInputInterface)
        @addKeyJLabel = nil unless instance_variable_defined?(:@addKeyJLabel)
        @delayBetweenJLabel = nil unless instance_variable_defined?(:@delayBetweenJLabel)
        @delayJTextField = nil unless instance_variable_defined?(:@delayJTextField)
        @holdTimeJLabel = nil unless instance_variable_defined?(:@holdTimeJLabel)
        @inputAutomationTypeJComboBox = nil unless instance_variable_defined?(:@inputAutomationTypeJComboBox)
        @inputTypeJLabel = nil unless instance_variable_defined?(:@inputTypeJLabel)
        @jLabel1 = nil unless instance_variable_defined?(:@jLabel1)
        @jPanel1 = nil unless instance_variable_defined?(:@jPanel1)
        @keyActionJButton = nil unless instance_variable_defined?(:@keyActionJButton)
        @keyActionJDialog = nil unless instance_variable_defined?(:@keyActionJDialog)
        @keyIntegerJComboBox = nil unless instance_variable_defined?(:@keyIntegerJComboBox)
        @keyNameJComboBox = nil unless instance_variable_defined?(:@keyNameJComboBox)
        @normalJRadioButton = nil unless instance_variable_defined?(:@normalJRadioButton)
        @okJButton = nil unless instance_variable_defined?(:@okJButton)
        @pressJRadioButton = nil unless instance_variable_defined?(:@pressJRadioButton)
        @releaseJRadioButton = nil unless instance_variable_defined?(:@releaseJRadioButton)
        @sequenceJRadioButton = nil unless instance_variable_defined?(:@sequenceJRadioButton)
        @simultaneousJRadioButton = nil unless instance_variable_defined?(:@simultaneousJRadioButton)
        @testJLabel = nil unless instance_variable_defined?(:@testJLabel)
        @textJTextField = nil unless instance_variable_defined?(:@textJTextField)
        @timeJTextField = nil unless instance_variable_defined?(:@timeJTextField)
        @titleJLabel = nil unless instance_variable_defined?(:@titleJLabel)
    end
    

    def initialize(keyActionScriptInputInterface)
        super()
        jfields_org_allbinary_input_automation_actions_script_condition_processors_input_KeyboardActionScriptInputJPanel
        @logUtil.putF(@commonStrings.START, self, @commonStrings.CONSTRUCTOR)
        self.initComponents()
        @keyActionScriptInputInterface = keyActionScriptInputInterface
        defaultComboBoxModel = DefaultComboBoxModel.new()
        defaultComboBoxModel.addElement(::Org::Allbinary::Input::Automation::Robot::TempInputRobotNames::DX_NAME)
        defaultComboBoxModel.addElement(::Org::Allbinary::Input::Automation::Robot::InputRobot::NAME)
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
    java_overload :set, 0
    

    # throws Exception
    def updateInputType()
        comboBoxModel = @inputAutomationTypeJComboBox.getModel()
        selectedItem = comboBoxModel.getSelectedItem()
        if !::Org::Allbinary::Logic::StringPackage::StringValidationUtil.getInstance().isEmpty(selectedItem)
            @keyActionScriptInputInterface.setInputRobotInterface(::Org::Allbinary::Input::Automation::Robot::InputRobotFactory.getInstance().get(selectedItem))
        end
    end
    java_overload :updateInputType, 0
    

    def getSelectedKey()
        comboBoxModel = @keyNameJComboBox.getModel()
        selectedItem = comboBoxModel.getSelectedItem()
        if !::Org::Allbinary::Logic::StringPackage::StringValidationUtil.getInstance().isEmpty(selectedItem)
            return ::Org::Allbinary::Input::KeySingletonFactory.getHashtable().get(selectedItem)
        end
        return nil
    end
    java_overload :getSelectedKey, 0
    

    def updateKeys()
        text = @textJTextField.getText()
        @keyActionScriptInputInterface.setText(text)
    end
    java_overload :updateKeys, 0
    

    # throws Exception
    def update()
        self.updateInputType()
        self.updateKeys()
        @keyActionScriptInputInterface.setTime((@timeJTextField.getText()).to_s.to_i)
        @keyActionScriptInputInterface.log()
    end
    java_overload :update, 0
    

    def getKeyActionJDialog()
        return @keyActionJDialog
    end
    java_overload :getKeyActionJDialog, 0
    

    def setKeyActionJDialog(keyActionJDialog)
        @keyActionJDialog = keyActionJDialog
    end
    java_overload :setKeyActionJDialog, 1
    

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
        @titleJLabel.setHorizontalAlignment(SwingConstants::CENTER)
        @titleJLabel.setText("Keyboard Input Options")
        @addKeyJLabel.setText("Add Key:")
        @keyNameJComboBox.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                keyNameJComboBoxActionPerformed(evt)
            end
            java_overload :actionPerformed, 1
        end.new())
        @timeJTextField.setText(::Org::Allbinary::StringPackage::CommonPhoneStrings.getInstance().ZERO)
        @holdTimeJLabel.setText("Hold Time (ms):")
        @inputTypeJLabel.setText("Input Type:")
        @delayJTextField.setText(::Org::Allbinary::StringPackage::CommonPhoneStrings.getInstance().ZERO)
        @delayBetweenJLabel.setText("Delay Between Keys (ms):")
        @testJLabel.setText("Text:")
        @textJTextField.setText(::Org::Allbinary::StringPackage::CommonPhoneStrings.getInstance().ZERO)
        @pressJRadioButton.setText("Press")
        @pressJRadioButton.setBorder(BorderFactory.createEmptyBorder(0, 0, 0, 0))
        @pressJRadioButton.setMargin(Insets.new(0, 0, 0, 0))
        @pressJRadioButton.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                pressJRadioButtonActionPerformed(evt)
            end
            java_overload :actionPerformed, 1
        end.new())
        @releaseJRadioButton.setText("Release")
        @releaseJRadioButton.setBorder(BorderFactory.createEmptyBorder(0, 0, 0, 0))
        @releaseJRadioButton.setMargin(Insets.new(0, 0, 0, 0))
        @releaseJRadioButton.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                releaseJRadioButtonActionPerformed(evt)
            end
            java_overload :actionPerformed, 1
        end.new())
        @normalJRadioButton.setSelected(true)
        @normalJRadioButton.setText("Normal")
        @normalJRadioButton.setBorder(BorderFactory.createEmptyBorder(0, 0, 0, 0))
        @normalJRadioButton.setMargin(Insets.new(0, 0, 0, 0))
        @normalJRadioButton.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                normalJRadioButtonActionPerformed(evt)
            end
            java_overload :actionPerformed, 1
        end.new())
        @simultaneousJRadioButton.setSelected(true)
        @simultaneousJRadioButton.setText("Simultaneous")
        @simultaneousJRadioButton.setBorder(BorderFactory.createEmptyBorder(0, 0, 0, 0))
        @simultaneousJRadioButton.setMargin(Insets.new(0, 0, 0, 0))
        @simultaneousJRadioButton.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                simultaneousJRadioButtonActionPerformed(evt)
            end
            java_overload :actionPerformed, 1
        end.new())
        @sequenceJRadioButton.setText("Sequence")
        @sequenceJRadioButton.setBorder(BorderFactory.createEmptyBorder(0, 0, 0, 0))
        @sequenceJRadioButton.setMargin(Insets.new(0, 0, 0, 0))
        @sequenceJRadioButton.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                sequenceJRadioButtonActionPerformed(evt)
            end
            java_overload :actionPerformed, 1
        end.new())
        @okJButton.setText("OK")
        @okJButton.setHorizontalTextPosition(SwingConstants::CENTER)
        @okJButton.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                okJButtonActionPerformed(evt)
            end
            java_overload :actionPerformed, 1
        end.new())
        @jPanel1.add(@okJButton)
        @keyIntegerJComboBox.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                keyIntegerJComboBoxActionPerformed(evt)
            end
            java_overload :actionPerformed, 1
        end.new())
        keyActionJDialogLayout = GroupLayout.new(@keyActionJDialog.getContentPane())
        @keyActionJDialog.getContentPane().setLayout(keyActionJDialogLayout)
        keyActionJDialogLayout.setHorizontalGroup(keyActionJDialogLayout.createParallelGroup(GroupLayout::Alignment.LEADING).addGroup(keyActionJDialogLayout.createSequentialGroup().addContainerGap().addGroup(keyActionJDialogLayout.createParallelGroup(GroupLayout::Alignment.LEADING).addGroup(keyActionJDialogLayout.createSequentialGroup().addGroup(keyActionJDialogLayout.createParallelGroup(GroupLayout::Alignment.LEADING, false).addComponent(@addKeyJLabel, GroupLayout::DEFAULT_SIZE, GroupLayout::DEFAULT_SIZE, 32767).addComponent(@inputTypeJLabel, GroupLayout::DEFAULT_SIZE, GroupLayout::DEFAULT_SIZE, 32767)).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED).addGroup(keyActionJDialogLayout.createParallelGroup(GroupLayout::Alignment.TRAILING).addComponent(@inputAutomationTypeJComboBox, 0, 148, 32767).addComponent(@textJTextField, GroupLayout::Alignment.LEADING, GroupLayout::DEFAULT_SIZE, 148, 32767).addGroup(keyActionJDialogLayout.createSequentialGroup().addComponent(@keyNameJComboBox, 0, 101, 32767).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED).addComponent(@keyIntegerJComboBox, GroupLayout::PREFERRED_SIZE, 41, GroupLayout::PREFERRED_SIZE)))).addComponent(@testJLabel, GroupLayout::PREFERRED_SIZE, 60, GroupLayout::PREFERRED_SIZE).addGroup(keyActionJDialogLayout.createSequentialGroup().addComponent(@normalJRadioButton).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED).addComponent(@pressJRadioButton).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED).addComponent(@releaseJRadioButton).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED, 48, GroupLayout::PREFERRED_SIZE)).addGroup(GroupLayout::Alignment.TRAILING, keyActionJDialogLayout.createSequentialGroup().addComponent(@holdTimeJLabel).addGap(22, 22, 22).addComponent(@timeJTextField, GroupLayout::DEFAULT_SIZE, 113, 32767)).addGroup(keyActionJDialogLayout.createSequentialGroup().addComponent(@delayBetweenJLabel).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED, 15, 32767).addComponent(@delayJTextField, GroupLayout::PREFERRED_SIZE, 68, GroupLayout::PREFERRED_SIZE)).addGroup(keyActionJDialogLayout.createSequentialGroup().addComponent(@simultaneousJRadioButton).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED).addComponent(@sequenceJRadioButton))).addContainerGap()).addComponent(@titleJLabel, GroupLayout::Alignment.TRAILING, GroupLayout::DEFAULT_SIZE, 229, 32767).addComponent(@jPanel1, GroupLayout::DEFAULT_SIZE, 229, 32767))
        keyActionJDialogLayout.setVerticalGroup(keyActionJDialogLayout.createParallelGroup(GroupLayout::Alignment.LEADING).addGroup(keyActionJDialogLayout.createSequentialGroup().addComponent(@titleJLabel).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED).addGroup(keyActionJDialogLayout.createParallelGroup(GroupLayout::Alignment.BASELINE).addComponent(@inputTypeJLabel).addComponent(@inputAutomationTypeJComboBox, GroupLayout::PREFERRED_SIZE, GroupLayout::DEFAULT_SIZE, GroupLayout::PREFERRED_SIZE)).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED).addGroup(keyActionJDialogLayout.createParallelGroup(GroupLayout::Alignment.BASELINE).addComponent(@addKeyJLabel).addComponent(@keyIntegerJComboBox, GroupLayout::PREFERRED_SIZE, GroupLayout::DEFAULT_SIZE, GroupLayout::PREFERRED_SIZE).addComponent(@keyNameJComboBox, GroupLayout::PREFERRED_SIZE, GroupLayout::DEFAULT_SIZE, GroupLayout::PREFERRED_SIZE)).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED).addGroup(keyActionJDialogLayout.createParallelGroup(GroupLayout::Alignment.BASELINE).addComponent(@testJLabel).addComponent(@textJTextField, GroupLayout::PREFERRED_SIZE, GroupLayout::DEFAULT_SIZE, GroupLayout::PREFERRED_SIZE)).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED).addGroup(keyActionJDialogLayout.createParallelGroup(GroupLayout::Alignment.BASELINE).addComponent(@pressJRadioButton).addComponent(@normalJRadioButton).addComponent(@releaseJRadioButton)).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED).addGroup(keyActionJDialogLayout.createParallelGroup(GroupLayout::Alignment.BASELINE).addComponent(@holdTimeJLabel).addComponent(@timeJTextField, GroupLayout::PREFERRED_SIZE, GroupLayout::DEFAULT_SIZE, GroupLayout::PREFERRED_SIZE)).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED).addGroup(keyActionJDialogLayout.createParallelGroup(GroupLayout::Alignment.BASELINE).addComponent(@delayBetweenJLabel).addComponent(@delayJTextField, GroupLayout::PREFERRED_SIZE, GroupLayout::DEFAULT_SIZE, GroupLayout::PREFERRED_SIZE)).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED).addGroup(keyActionJDialogLayout.createParallelGroup(GroupLayout::Alignment.BASELINE).addComponent(@simultaneousJRadioButton).addComponent(@sequenceJRadioButton)).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED).addComponent(@jPanel1, GroupLayout::PREFERRED_SIZE, GroupLayout::DEFAULT_SIZE, GroupLayout::PREFERRED_SIZE).addContainerGap()))
        setMinimumSize(Dimension.new(100, 0))
        @keyActionJButton.setText("Edit")
        @keyActionJButton.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                keyActionJButtonActionPerformed(evt)
            end
            java_overload :actionPerformed, 1
        end.new())
        @jLabel1.setText("Key:")
        layout = GroupLayout.new(self)
        self.setLayout(layout)
        layout.setHorizontalGroup(layout.createParallelGroup(GroupLayout::Alignment.LEADING).addGroup(layout.createSequentialGroup().addComponent(@jLabel1).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED, 49, 32767).addComponent(@keyActionJButton)))
        layout.setVerticalGroup(layout.createParallelGroup(GroupLayout::Alignment.LEADING).addGroup(layout.createParallelGroup(GroupLayout::Alignment.BASELINE).addComponent(@jLabel1).addComponent(@keyActionJButton)))
    end
    java_overload :initComponents, 0
    

    def prependText(integer)
        if integer != nil
            newKey = "&#" + integer.to_s + ";"
            @textJTextField.setText(newKey + (@textJTextField.getText()).to_s)
        end
    end
    java_overload :prependText, 1
    

    def keyIntegerJComboBoxActionPerformed(evt)
        @keyIntegerJComboBox.getSelectedIndex()
        @keyNameJComboBox.setSelectedIndex(@keyIntegerJComboBox.getSelectedIndex())
    end
    java_overload :keyIntegerJComboBoxActionPerformed, 1
    

    def sequenceJRadioButtonActionPerformed(evt)
        if @sequenceJRadioButton.isSelected()
            @delayJTextField.setText(::Org::Allbinary::StringPackage::CommonPhoneStrings.getInstance().ONE)
            @simultaneousJRadioButton.setSelected(false)
        end
    end
    java_overload :sequenceJRadioButtonActionPerformed, 1
    

    def simultaneousJRadioButtonActionPerformed(evt)
        if @simultaneousJRadioButton.isSelected()
            @delayJTextField.setText(::Org::Allbinary::StringPackage::CommonPhoneStrings.getInstance().ZERO)
            @sequenceJRadioButton.setSelected(false)
        end
    end
    java_overload :simultaneousJRadioButtonActionPerformed, 1
    

    def keyNameJComboBoxActionPerformed(evt)
        integer = self.getSelectedKey()
        self.prependText(integer)
        @keyIntegerJComboBox.setSelectedIndex(@keyNameJComboBox.getSelectedIndex())
    end
    java_overload :keyNameJComboBoxActionPerformed, 1
    

    def okJButtonActionPerformed(evt)
        begin
            self.update()
            self.getKeyActionJDialog().setVisible(false)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "okButtonActionPerformed", e)
        end
    end
    java_overload :okJButtonActionPerformed, 1
    

    def keyActionJButtonActionPerformed(evt)
        self.getKeyActionJDialog().setVisible(true)
    end
    java_overload :keyActionJButtonActionPerformed, 1
    

    def normalJRadioButtonActionPerformed(evt)
        if @normalJRadioButton.isSelected()
            @keyActionScriptInputInterface.setNormal()
            @pressJRadioButton.setSelected(false)
            @releaseJRadioButton.setSelected(false)
        end
    end
    java_overload :normalJRadioButtonActionPerformed, 1
    

    def releaseJRadioButtonActionPerformed(evt)
        if @releaseJRadioButton.isSelected()
            @keyActionScriptInputInterface.setRelease(true)
            @keyActionScriptInputInterface.setPress(false)
            @pressJRadioButton.setSelected(false)
            @normalJRadioButton.setSelected(false)
        end
    end
    java_overload :releaseJRadioButtonActionPerformed, 1
    

    def pressJRadioButtonActionPerformed(evt)
        if @pressJRadioButton.isSelected()
            @keyActionScriptInputInterface.setPress(true)
            @keyActionScriptInputInterface.setRelease(false)
            @releaseJRadioButton.setSelected(false)
            @normalJRadioButton.setSelected(false)
        end
    end
    java_overload :pressJRadioButtonActionPerformed, 1
end

module ::Org; module Allbinary; module Input; autoload :KeySingletonFactory, "org/allbinary/input/KeySingletonFactory" unless const_defined?(:KeySingletonFactory, false); end; end; end
module ::Org; module Allbinary; module Input; module Automation; module Robot; autoload :InputRobot, "org/allbinary/input/automation/robot/InputRobot" unless const_defined?(:InputRobot, false); end; end; end; end; end
module ::Org; module Allbinary; module Input; module Automation; module Robot; autoload :InputRobotFactory, "org/allbinary/input/automation/robot/InputRobotFactory" unless const_defined?(:InputRobotFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Input; module Automation; module Robot; autoload :TempInputRobotNames, "org/allbinary/input/automation/robot/TempInputRobotNames" unless const_defined?(:TempInputRobotNames, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringValidationUtil, "org/allbinary/logic/string/StringValidationUtil" unless const_defined?(:StringValidationUtil, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonPhoneStrings, "org/allbinary/string/CommonPhoneStrings" unless const_defined?(:CommonPhoneStrings, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
autoload :KeyCharDefaultComboBoxModelFactory, "org/allbinary/input/automation/actions/script/condition/processors/input/KeyCharDefaultComboBoxModelFactory" unless const_defined?(:KeyCharDefaultComboBoxModelFactory, false)
autoload :KeyNameDefaultComboBoxModelFactory, "org/allbinary/input/automation/actions/script/condition/processors/input/KeyNameDefaultComboBoxModelFactory" unless const_defined?(:KeyNameDefaultComboBoxModelFactory, false)
autoload :KeyboardActionScriptInputInterface, "org/allbinary/input/automation/actions/script/condition/processors/input/KeyboardActionScriptInputInterface" unless const_defined?(:KeyboardActionScriptInputInterface, false)

end; end; end; end; end; end; end; end; end

