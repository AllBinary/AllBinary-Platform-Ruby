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
# require "javax/swing/GroupLayout"
# require "javax/swing/JButton"
# require "javax/swing/JDialog"
# require "javax/swing/JLabel"
# require "javax/swing/JPanel"
# require "javax/swing/JTextField"
# require "javax/swing/LayoutStyle"

module ::Org; module Allbinary; module Input; module Automation; module Actions; module Script; module Condition

class TimeIntervalActionScriptConditionJPanel < JPanel
    attr_accessor :logUtil, :commonStrings, :timeIntervalActionScriptConditionInterface, :jLabel1, :jLabel2, :okJButton, :timeIntervalActionJButton, :timeIntervalActionJDialog, :timeIntervalJTextField, :titleJLabel

    def jfields_org_allbinary_input_automation_actions_script_condition_TimeIntervalActionScriptConditionJPanel
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @timeIntervalActionScriptConditionInterface = nil unless instance_variable_defined?(:@timeIntervalActionScriptConditionInterface)
        @jLabel1 = nil unless instance_variable_defined?(:@jLabel1)
        @jLabel2 = nil unless instance_variable_defined?(:@jLabel2)
        @okJButton = nil unless instance_variable_defined?(:@okJButton)
        @timeIntervalActionJButton = nil unless instance_variable_defined?(:@timeIntervalActionJButton)
        @timeIntervalActionJDialog = nil unless instance_variable_defined?(:@timeIntervalActionJDialog)
        @timeIntervalJTextField = nil unless instance_variable_defined?(:@timeIntervalJTextField)
        @titleJLabel = nil unless instance_variable_defined?(:@titleJLabel)
    end
    

    def initialize(timeIntervalActionScriptConditionInterface)
        super()
        jfields_org_allbinary_input_automation_actions_script_condition_TimeIntervalActionScriptConditionJPanel
        @logUtil.putF(@commonStrings.START, self, @commonStrings.CONSTRUCTOR)
        self.initComponents()
        @timeIntervalActionScriptConditionInterface = timeIntervalActionScriptConditionInterface
        self.set()
    end
    

    def set()
        self.getTimeIntervalJTextField().setText((@timeIntervalActionScriptConditionInterface.getTimeDelayHelper().delay).to_s)
        @timeIntervalActionScriptConditionInterface.log()
    end
    java_overload :set, 0
    

    def update()
        @timeIntervalActionScriptConditionInterface.getTimeDelayHelper().delay = (self.getTimeIntervalJTextField().getText()).to_s
        @timeIntervalActionScriptConditionInterface.log()
    end
    java_overload :update, 0
    

    def getTimeIntervalJTextField()
        return @timeIntervalJTextField
    end
    java_overload :getTimeIntervalJTextField, 0
    

    def setTimeIntervalJTextField(timeIntervalJTextField)
        @timeIntervalJTextField = timeIntervalJTextField
    end
    java_overload :setTimeIntervalJTextField, 1
    

    def getTimeIntervalActionJDialog()
        return @timeIntervalActionJDialog
    end
    java_overload :getTimeIntervalActionJDialog, 0
    

    def setTimeIntervalActionJDialog(timeIntervalActionJDialog)
        @timeIntervalActionJDialog = timeIntervalActionJDialog
    end
    java_overload :setTimeIntervalActionJDialog, 1
    

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
            java_overload :actionPerformed, 1
        end.new())
        @jLabel2.setText("Time (ms):")
        timeIntervalActionJDialogLayout = GroupLayout.new(@timeIntervalActionJDialog.getContentPane())
        @timeIntervalActionJDialog.getContentPane().setLayout(timeIntervalActionJDialogLayout)
        timeIntervalActionJDialogLayout.setHorizontalGroup(timeIntervalActionJDialogLayout.createParallelGroup(GroupLayout::Alignment.LEADING).addGroup(timeIntervalActionJDialogLayout.createSequentialGroup().addGroup(timeIntervalActionJDialogLayout.createParallelGroup(GroupLayout::Alignment.TRAILING).addGroup(GroupLayout::Alignment.LEADING, timeIntervalActionJDialogLayout.createSequentialGroup().addGap(82, 82, 82).addComponent(@okJButton)).addGroup(GroupLayout::Alignment.LEADING, timeIntervalActionJDialogLayout.createSequentialGroup().addGap(32, 32, 32).addGroup(timeIntervalActionJDialogLayout.createParallelGroup(GroupLayout::Alignment.LEADING).addGroup(timeIntervalActionJDialogLayout.createSequentialGroup().addComponent(@jLabel2).addGap(16, 16, 16).addComponent(@timeIntervalJTextField, GroupLayout::DEFAULT_SIZE, 85, 32767)).addComponent(@titleJLabel)))).addContainerGap(36, 32767)))
        timeIntervalActionJDialogLayout.setVerticalGroup(timeIntervalActionJDialogLayout.createParallelGroup(GroupLayout::Alignment.LEADING).addGroup(timeIntervalActionJDialogLayout.createSequentialGroup().addContainerGap().addComponent(@titleJLabel).addGap(20, 20, 20).addGroup(timeIntervalActionJDialogLayout.createParallelGroup(GroupLayout::Alignment.BASELINE).addComponent(@jLabel2).addComponent(@timeIntervalJTextField, GroupLayout::PREFERRED_SIZE, GroupLayout::DEFAULT_SIZE, GroupLayout::PREFERRED_SIZE)).addGap(15, 15, 15).addComponent(@okJButton).addContainerGap()))
        setMinimumSize(Dimension.new(100, 0))
        @timeIntervalActionJButton.setText("Edit")
        @timeIntervalActionJButton.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                timeIntervalActionJButtonActionPerformed(evt)
            end
            java_overload :actionPerformed, 1
        end.new())
        @jLabel1.setText("Time Interval:")
        layout = GroupLayout.new(self)
        self.setLayout(layout)
        layout.setHorizontalGroup(layout.createParallelGroup(GroupLayout::Alignment.LEADING).addGroup(layout.createSequentialGroup().addComponent(@jLabel1).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED, GroupLayout::DEFAULT_SIZE, 32767).addComponent(@timeIntervalActionJButton)))
        layout.setVerticalGroup(layout.createParallelGroup(GroupLayout::Alignment.LEADING).addGroup(layout.createParallelGroup(GroupLayout::Alignment.BASELINE).addComponent(@jLabel1).addComponent(@timeIntervalActionJButton)))
    end
    java_overload :initComponents, 0
    

    def okJButtonActionPerformed(evt)
        self.update()
        self.getTimeIntervalActionJDialog().setVisible(false)
    end
    java_overload :okJButtonActionPerformed, 1
    

    def timeIntervalActionJButtonActionPerformed(evt)
        self.getTimeIntervalActionJDialog().setVisible(true)
    end
    java_overload :timeIntervalActionJButtonActionPerformed, 1
end

module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
autoload :TimeIntervalActionScriptConditionInterface, "org/allbinary/input/automation/actions/script/condition/TimeIntervalActionScriptConditionInterface" unless const_defined?(:TimeIntervalActionScriptConditionInterface, false)

end; end; end; end; end; end; end

