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

require "java/lang/JavaOverload"
# require "javax/swing"
# require "java/awt/Font"
# require "java/awt/GridLayout"
# require "javax/swing/JButton"
# require "javax/swing/JPanel"
# require "javax/swing/JTextField"

module ::Org; module Allbinary; module Graphics; module J2me; module Workarea; module Properties

class PropertiesJPanel < JPanel
    attr_accessor :rotateJButton, :copyVerticalJButton, :leftJButton, :rotateJPanel, :angleJTextField, :workAreaPropertiesJPanel, :modifierJPanel, :upJButton, :jPanel8, :downJButton, :jPanel7, :rightJButton, :copyHorizontalJButton

    def jfields_org_allbinary_graphics_j2me_workarea_properties_PropertiesJPanel
        @rotateJButton = nil unless instance_variable_defined?(:@rotateJButton)
        @copyVerticalJButton = nil unless instance_variable_defined?(:@copyVerticalJButton)
        @leftJButton = nil unless instance_variable_defined?(:@leftJButton)
        @rotateJPanel = nil unless instance_variable_defined?(:@rotateJPanel)
        @angleJTextField = nil unless instance_variable_defined?(:@angleJTextField)
        @workAreaPropertiesJPanel = nil unless instance_variable_defined?(:@workAreaPropertiesJPanel)
        @modifierJPanel = nil unless instance_variable_defined?(:@modifierJPanel)
        @upJButton = nil unless instance_variable_defined?(:@upJButton)
        @jPanel8 = nil unless instance_variable_defined?(:@jPanel8)
        @downJButton = nil unless instance_variable_defined?(:@downJButton)
        @jPanel7 = nil unless instance_variable_defined?(:@jPanel7)
        @rightJButton = nil unless instance_variable_defined?(:@rightJButton)
        @copyHorizontalJButton = nil unless instance_variable_defined?(:@copyHorizontalJButton)
    end
    

    def initialize()
        super()
        jfields_org_allbinary_graphics_j2me_workarea_properties_PropertiesJPanel
        self.initComponents()
    end
    

    def set(panel)
        @workAreaPropertiesJPanel.add(panel)
        self.repaint()
    end
    java_overload :set, 1
    

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
    java_overload :initComponents, 0
end

end; end; end; end; end; end

