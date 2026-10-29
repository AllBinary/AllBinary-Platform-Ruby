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
# package org.allbinary.graphics.j2me.workarea.properties

# require "javax/swing"

class PropertiesJPanel < JPanel
    attr_accessor :rotateJButton, :copyVerticalJButton, :leftJButton, :rotateJPanel, :angleJTextField, :workAreaPropertiesJPanel, :modifierJPanel, :upJButton, :jPanel8, :downJButton, :jPanel7, :rightJButton, :copyHorizontalJButton

    def initialize_fields
        @rotateJButton = nil
        @copyVerticalJButton = nil
        @leftJButton = nil
        @rotateJPanel = nil
        @angleJTextField = nil
        @workAreaPropertiesJPanel = nil
        @modifierJPanel = nil
        @upJButton = nil
        @jPanel8 = nil
        @downJButton = nil
        @jPanel7 = nil
        @rightJButton = nil
        @copyHorizontalJButton = nil
    end
    

    def initialize()
        super()
        initialize_fields
        self.initComponents()
    end
    

    def set(panel)
        @workAreaPropertiesJPanel.add(panel)
        self.repaint()
    end
    

    def initComponents()
        @workAreaPropertiesJPanel = JPanel.new()
        @modifierJPanel = JPanel.new()
        @copyVerticalJButton = JButton.new()
        @copyHorizontalJButton = JButton.new()
        @rotateJPanel = JPanel.new()
        @rotateJButton = JButton.new()
        @angleJTextField = JTextField.new()
        @jPanel7 = JPanel.new()
        @upJButton = JButton.new()
        @downJButton = JButton.new()
        @jPanel8 = JPanel.new()
        @leftJButton = JButton.new()
        @rightJButton = JButton.new()
        setLayout(GridLayout.new(2, 1))
        @workAreaPropertiesJPanel.setLayout(GridLayout.new())
        add(@workAreaPropertiesJPanel)
        @modifierJPanel.setLayout(GridLayout.new(6, 0))
        @copyVerticalJButton.setFont(Font.new("Dialog", 0, 10))
        @copyVerticalJButton.setText("Copy Vertical")
        @modifierJPanel.add(@copyVerticalJButton)
        @copyHorizontalJButton.setFont(Font.new("Dialog", 0, 10))
        @copyHorizontalJButton.setText("Copy Horizontal")
        @modifierJPanel.add(@copyHorizontalJButton)
        @rotateJPanel.setLayout(GridLayout.new(1, 2))
        @rotateJButton.setFont(Font.new("Dialog", 0, 10))
        @rotateJButton.setText("Rotate")
        @rotateJPanel.add(@rotateJButton)
        @angleJTextField.setText("Angle")
        @rotateJPanel.add(@angleJTextField)
        @modifierJPanel.add(@rotateJPanel)
        @jPanel7.setLayout(GridLayout.new(1, 2))
        @upJButton.setFont(Font.new("Dialog", 0, 10))
        @upJButton.setText("Up")
        @jPanel7.add(@upJButton)
        @downJButton.setFont(Font.new("Dialog", 0, 10))
        @downJButton.setText("Down")
        @jPanel7.add(@downJButton)
        @modifierJPanel.add(@jPanel7)
        @jPanel8.setLayout(GridLayout.new(1, 2))
        @leftJButton.setFont(Font.new("Dialog", 0, 10))
        @leftJButton.setText("Left")
        @jPanel8.add(@leftJButton)
        @rightJButton.setFont(Font.new("Dialog", 0, 10))
        @rightJButton.setText("Right")
        @jPanel8.add(@rightJButton)
        @modifierJPanel.add(@jPanel8)
        add(@modifierJPanel)
    end
end

