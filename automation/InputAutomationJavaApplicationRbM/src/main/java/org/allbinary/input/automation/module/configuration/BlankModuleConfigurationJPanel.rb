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
# package org.allbinary.input.automation.module.configuration

require "java/lang/JavaOverload"
# require "javax/swing/GroupLayout"
# require "javax/swing/JLabel"
# require "javax/swing/JPanel"

module ::Org; module Allbinary; module Input; module Automation; module ModulePackage; module Configuration

class BlankModuleConfigurationJPanel < JPanel
    attr_accessor :jLabel1

    def jfields_org_allbinary_input_automation_module_configuration_BlankModuleConfigurationJPanel
        @jLabel1 = nil unless instance_variable_defined?(:@jLabel1)
    end
    

    def initialize()
        super()
        jfields_org_allbinary_input_automation_module_configuration_BlankModuleConfigurationJPanel
        self.initComponents()
    end
    

    def initComponents()
        @jLabel1 = JLabel.new()
        @jLabel1.setText("No Configuration Available")
        layout = GroupLayout.new(self)
        self.setLayout(layout)
        layout.setHorizontalGroup(layout.createParallelGroup(GroupLayout::Alignment.LEADING).addGroup(GroupLayout::Alignment.TRAILING, layout.createSequentialGroup().addContainerGap(231, 32767).addComponent(@jLabel1).addGap(225, 225, 225)))
        layout.setVerticalGroup(layout.createParallelGroup(GroupLayout::Alignment.LEADING).addGroup(layout.createSequentialGroup().addContainerGap().addComponent(@jLabel1).addContainerGap(362, 32767)))
    end
    java_overload :initComponents, 0
end

end; end; end; end; end; end

