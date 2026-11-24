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

require "java/lang/JavaOverload"
# require "java/awt/Dimension"
# require "java/awt/event/ActionEvent"
# require "java/awt/event/ActionListener"
# require "javax/swing/DefaultComboBoxModel"
# require "javax/swing/GroupLayout"
# require "javax/swing/JButton"
# require "javax/swing/JComboBox"
# require "javax/swing/JDialog"
# require "javax/swing/JLabel"
# require "javax/swing/JPanel"
# require "javax/swing/LayoutStyle"

module ::Org; module Allbinary; module Input; module Automation; module Actions; module Script; module Condition

class AlwaysActionScriptConditionJPanel < JPanel
    attr_accessor :logUtil, :commonStrings, :alwaysActionScriptConditionInterface, :alwaysActionJButton, :alwaysActionJDialog, :alwaysJComboBox, :jLabel1, :jLabel2, :okJButton, :titleJLabel

    def jfields_org_allbinary_input_automation_actions_script_condition_AlwaysActionScriptConditionJPanel
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @alwaysActionScriptConditionInterface = nil unless instance_variable_defined?(:@alwaysActionScriptConditionInterface)
        @alwaysActionJButton = nil unless instance_variable_defined?(:@alwaysActionJButton)
        @alwaysActionJDialog = nil unless instance_variable_defined?(:@alwaysActionJDialog)
        @alwaysJComboBox = nil unless instance_variable_defined?(:@alwaysJComboBox)
        @jLabel1 = nil unless instance_variable_defined?(:@jLabel1)
        @jLabel2 = nil unless instance_variable_defined?(:@jLabel2)
        @okJButton = nil unless instance_variable_defined?(:@okJButton)
        @titleJLabel = nil unless instance_variable_defined?(:@titleJLabel)
    end
    

    def initialize(alwaysActionScriptConditionInterface)
        super()
        jfields_org_allbinary_input_automation_actions_script_condition_AlwaysActionScriptConditionJPanel
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
    java_overload :set, 0
    

    def update()
        if @alwaysJComboBox.getSelectedIndex() == 0
            @alwaysActionScriptConditionInterface.setIsOn(true)
        else
            @alwaysActionScriptConditionInterface.setIsOn(false)
        end
        @alwaysActionScriptConditionInterface.log()
    end
    java_overload :update, 0
    

    def getAlwaysActionJDialog()
        return @alwaysActionJDialog
    end
    java_overload :getAlwaysActionJDialog, 0
    

    def setAlwaysActionJDialog(alwaysActionJDialog)
        @alwaysActionJDialog = alwaysActionJDialog
    end
    java_overload :setAlwaysActionJDialog, 1
    

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
            java_overload :actionPerformed, 1
        end.new())
        @jLabel2.setText("On:")
        @alwaysJComboBox.setModel(DefaultComboBoxModel.new(["true", "false"]))
        alwaysActionJDialogLayout = GroupLayout.new(@alwaysActionJDialog.getContentPane())
        @alwaysActionJDialog.getContentPane().setLayout(alwaysActionJDialogLayout)
        alwaysActionJDialogLayout.setHorizontalGroup(alwaysActionJDialogLayout.createParallelGroup(GroupLayout::Alignment.LEADING).addGroup(alwaysActionJDialogLayout.createSequentialGroup().addGroup(alwaysActionJDialogLayout.createParallelGroup(GroupLayout::Alignment.LEADING).addGroup(alwaysActionJDialogLayout.createSequentialGroup().addGap(47, 47, 47).addGroup(alwaysActionJDialogLayout.createParallelGroup(GroupLayout::Alignment.LEADING, false).addGroup(GroupLayout::Alignment.TRAILING, alwaysActionJDialogLayout.createSequentialGroup().addComponent(@jLabel2).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED, GroupLayout::DEFAULT_SIZE, 32767).addComponent(@alwaysJComboBox, GroupLayout::PREFERRED_SIZE, GroupLayout::DEFAULT_SIZE, GroupLayout::PREFERRED_SIZE)).addComponent(@titleJLabel))).addGroup(alwaysActionJDialogLayout.createSequentialGroup().addGap(79, 79, 79).addComponent(@okJButton))).addContainerGap(45, 32767)))
        alwaysActionJDialogLayout.setVerticalGroup(alwaysActionJDialogLayout.createParallelGroup(GroupLayout::Alignment.LEADING).addGroup(alwaysActionJDialogLayout.createSequentialGroup().addContainerGap().addComponent(@titleJLabel).addGap(20, 20, 20).addGroup(alwaysActionJDialogLayout.createParallelGroup(GroupLayout::Alignment.BASELINE).addComponent(@alwaysJComboBox, GroupLayout::PREFERRED_SIZE, GroupLayout::DEFAULT_SIZE, GroupLayout::PREFERRED_SIZE).addComponent(@jLabel2)).addGap(15, 15, 15).addComponent(@okJButton).addContainerGap()))
        setMinimumSize(Dimension.new(100, 0))
        @alwaysActionJButton.setText("Edit")
        @alwaysActionJButton.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                alwaysActionJButtonActionPerformed(evt)
            end
            java_overload :actionPerformed, 1
        end.new())
        @jLabel1.setText("Always:")
        layout = GroupLayout.new(self)
        self.setLayout(layout)
        layout.setHorizontalGroup(layout.createParallelGroup(GroupLayout::Alignment.LEADING).addGroup(layout.createSequentialGroup().addComponent(@jLabel1).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED, 33, 32767).addComponent(@alwaysActionJButton)))
        layout.setVerticalGroup(layout.createParallelGroup(GroupLayout::Alignment.LEADING).addGroup(layout.createParallelGroup(GroupLayout::Alignment.BASELINE).addComponent(@jLabel1).addComponent(@alwaysActionJButton)))
    end
    java_overload :initComponents, 0
    

    def okJButtonActionPerformed(evt)
        self.update()
        self.getAlwaysActionJDialog().setVisible(false)
    end
    java_overload :okJButtonActionPerformed, 1
    

    def alwaysActionJButtonActionPerformed(evt)
        self.getAlwaysActionJDialog().setVisible(true)
    end
    java_overload :alwaysActionJButtonActionPerformed, 1
end

module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
autoload :AlwaysActionScriptConditionInterface, "org/allbinary/input/automation/actions/script/condition/AlwaysActionScriptConditionInterface" unless const_defined?(:AlwaysActionScriptConditionInterface, false)

end; end; end; end; end; end; end

