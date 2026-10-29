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


class InputAutomationTypeJPanel < JPanel
    attr_accessor :inputAutomationTypeJComboBox, :jLabel1

    def initialize_fields
        @inputAutomationTypeJComboBox = nil
        @jLabel1 = nil
    end
    

    def initialize()
        super()
        initialize_fields
        self.initComponents()
    end
    

    def getInputAutomationTypeJComboBox()
        return @inputAutomationTypeJComboBox
    end
    

    def setInputAutomationTypeJComboBox(inputAutomationTypeJComboBox)
        @inputAutomationTypeJComboBox = inputAutomationTypeJComboBox
    end
    

    def initComponents()
        @inputAutomationTypeJComboBox = JComboBox.new()
        @jLabel1 = JLabel.new()
        @inputAutomationTypeJComboBox.setModel(DefaultComboBoxModel.new(["DirectX", "DirectX 8", "Low Level", "Java Robot"]))
        @jLabel1.setText("Input Type:")
        layout = GroupLayout.new(self)
        self.setLayout(layout)
        layout.setHorizontalGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addGroup(layout.createSequentialGroup().addComponent(@jLabel1).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(@inputAutomationTypeJComboBox, 0, 98, 32767)))
        layout.setVerticalGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE).addComponent(@jLabel1).addComponent(@inputAutomationTypeJComboBox, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)))
    end
end

