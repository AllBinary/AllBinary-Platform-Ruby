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
# require "javax/swing/DefaultComboBoxModel"
# require "javax/swing/GroupLayout"
# require "javax/swing/JComboBox"
# require "javax/swing/JLabel"
# require "javax/swing/JPanel"
# require "javax/swing/LayoutStyle"

module ::Org; module Allbinary; module Input; module Automation; module Actions; module Script; module Condition; module Processors; module Input

class InputAutomationTypeJPanel < JPanel
    attr_accessor :inputAutomationTypeJComboBox, :jLabel1

    def jfields_org_allbinary_input_automation_actions_script_condition_processors_input_InputAutomationTypeJPanel
        @inputAutomationTypeJComboBox = nil unless instance_variable_defined?(:@inputAutomationTypeJComboBox)
        @jLabel1 = nil unless instance_variable_defined?(:@jLabel1)
    end
    

    def initialize()
        super()
        jfields_org_allbinary_input_automation_actions_script_condition_processors_input_InputAutomationTypeJPanel
        self.initComponents()
    end
    

    def getInputAutomationTypeJComboBox()
        return @inputAutomationTypeJComboBox
    end
    java_overload :getInputAutomationTypeJComboBox, 0
    

    def setInputAutomationTypeJComboBox(inputAutomationTypeJComboBox)
        @inputAutomationTypeJComboBox = inputAutomationTypeJComboBox
    end
    java_overload :setInputAutomationTypeJComboBox, 1
    

    def initComponents()
        @inputAutomationTypeJComboBox = JComboBox.new()
        @jLabel1 = JLabel.new()
        @inputAutomationTypeJComboBox.setModel(DefaultComboBoxModel.new(["DirectX", "DirectX 8", "Low Level", "Java Robot"]))
        @jLabel1.setText("Input Type:")
        layout = GroupLayout.new(self)
        self.setLayout(layout)
        layout.setHorizontalGroup(layout.createParallelGroup(GroupLayout::Alignment.LEADING).addGroup(layout.createSequentialGroup().addComponent(@jLabel1).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED).addComponent(@inputAutomationTypeJComboBox, 0, 98, 32767)))
        layout.setVerticalGroup(layout.createParallelGroup(GroupLayout::Alignment.LEADING).addGroup(layout.createParallelGroup(GroupLayout::Alignment.BASELINE).addComponent(@jLabel1).addComponent(@inputAutomationTypeJComboBox, GroupLayout::PREFERRED_SIZE, GroupLayout::DEFAULT_SIZE, GroupLayout::PREFERRED_SIZE)))
    end
    java_overload :initComponents, 0
end

end; end; end; end; end; end; end; end; end

