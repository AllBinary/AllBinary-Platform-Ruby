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


class BlankModuleConfigurationJPanel < JPanel
    attr_accessor :jLabel1

    def initialize_fields
        @jLabel1 = nil
    end
    

    def initialize()
        super()
        initialize_fields
        self.initComponents()
    end
    

    def initComponents()
        @jLabel1 = JLabel.new()
        @jLabel1.setText("No Configuration Available")
        layout = GroupLayout.new(self)
        self.setLayout(layout)
        layout.setHorizontalGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup().addContainerGap(231, 32767).addComponent(@jLabel1).addGap(225, 225, 225)))
        layout.setVerticalGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addGroup(layout.createSequentialGroup().addContainerGap().addComponent(@jLabel1).addContainerGap(362, 32767)))
    end
end

