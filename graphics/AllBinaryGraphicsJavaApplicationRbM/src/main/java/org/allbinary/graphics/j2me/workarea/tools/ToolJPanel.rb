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
# package org.allbinary.graphics.j2me.workarea.tools

require "java/lang/JavaOverload"
# require "java/awt/Font"
# require "java/awt/GridLayout"
# require "java/awt/event/MouseAdapter"
# require "java/awt/event/MouseEvent"
# require "javax/swing/JButton"
# require "javax/swing/JList"
# require "javax/swing/JPanel"

module ::Org; module Allbinary; module Graphics; module J2me; module Workarea; module Tools

class ToolJPanel < JPanel
    attr_accessor :arcJButton, :charJButton, :colorJList, :colorJPanel, :dottedArcJButton, :dottedFillArcJButton, :dottedFillRectJButton, :dottedFillRountRectJButton, :dottedLineJButton, :dottedRectButton, :fillArcJButton, :fillRectJButton, :fillRoundRectJButton, :imageJButton, :lineJButton, :rectJButton, :roundRectJButton, :stringJButton

    def jfields_org_allbinary_graphics_j2me_workarea_tools_ToolJPanel
        @arcJButton = nil unless instance_variable_defined?(:@arcJButton)
        @charJButton = nil unless instance_variable_defined?(:@charJButton)
        @colorJList = nil unless instance_variable_defined?(:@colorJList)
        @colorJPanel = nil unless instance_variable_defined?(:@colorJPanel)
        @dottedArcJButton = nil unless instance_variable_defined?(:@dottedArcJButton)
        @dottedFillArcJButton = nil unless instance_variable_defined?(:@dottedFillArcJButton)
        @dottedFillRectJButton = nil unless instance_variable_defined?(:@dottedFillRectJButton)
        @dottedFillRountRectJButton = nil unless instance_variable_defined?(:@dottedFillRountRectJButton)
        @dottedLineJButton = nil unless instance_variable_defined?(:@dottedLineJButton)
        @dottedRectButton = nil unless instance_variable_defined?(:@dottedRectButton)
        @fillArcJButton = nil unless instance_variable_defined?(:@fillArcJButton)
        @fillRectJButton = nil unless instance_variable_defined?(:@fillRectJButton)
        @fillRoundRectJButton = nil unless instance_variable_defined?(:@fillRoundRectJButton)
        @imageJButton = nil unless instance_variable_defined?(:@imageJButton)
        @lineJButton = nil unless instance_variable_defined?(:@lineJButton)
        @rectJButton = nil unless instance_variable_defined?(:@rectJButton)
        @roundRectJButton = nil unless instance_variable_defined?(:@roundRectJButton)
        @stringJButton = nil unless instance_variable_defined?(:@stringJButton)
    end
    

    def initialize()
        super()
        jfields_org_allbinary_graphics_j2me_workarea_tools_ToolJPanel
        self.initComponents()
    end
    

    def initComponents()
        @lineJButton = JButton.new()
        @rectJButton = JButton.new()
        @arcJButton = JButton.new()
        @stringJButton = JButton.new()
        @charJButton = JButton.new()
        @roundRectJButton = JButton.new()
        @imageJButton = JButton.new()
        @fillArcJButton = JButton.new()
        @fillRectJButton = JButton.new()
        @fillRoundRectJButton = JButton.new()
        @dottedLineJButton = JButton.new()
        @dottedRectButton = JButton.new()
        @dottedArcJButton = JButton.new()
        @dottedFillRectJButton = JButton.new()
        @dottedFillArcJButton = JButton.new()
        @dottedFillRountRectJButton = JButton.new()
        @colorJPanel = JPanel.new()
        @colorJList = JList.new()
        self.setLayout(GridLayout.new(17, 1))
        @lineJButton.setFont(Font.new("Dialog", 0, 10))
        @lineJButton.setText(LinesGraphicItem.getStaticName())
        @lineJButton.addMouseListener(Class.new(MouseAdapter.is_a?(Class) ? MouseAdapter : Object) do
            include(MouseAdapter) unless MouseAdapter.is_a?(Class)
            

            def mouseClicked(evt)
                lineJButtonMouseClicked(evt)
            end
            java_overload :mouseClicked, 1
        end.new())
        add(@lineJButton)
        @rectJButton.setFont(Font.new("Dialog", 0, 10))
        @rectJButton.setText("Rect")
        @rectJButton.addMouseListener(Class.new(MouseAdapter.is_a?(Class) ? MouseAdapter : Object) do
            include(MouseAdapter) unless MouseAdapter.is_a?(Class)
            

            def mouseClicked(evt)
                rectJButtonMouseClicked(evt)
            end
            java_overload :mouseClicked, 1
        end.new())
        add(@rectJButton)
        @arcJButton.setFont(Font.new("Dialog", 0, 10))
        @arcJButton.setText("Arc")
        @arcJButton.addMouseListener(Class.new(MouseAdapter.is_a?(Class) ? MouseAdapter : Object) do
            include(MouseAdapter) unless MouseAdapter.is_a?(Class)
            

            def mousePressed(evt)
                arcJButtonMousePressed(evt)
            end
            java_overload :mousePressed, 1
        end.new())
        add(@arcJButton)
        @stringJButton.setFont(Font.new("Dialog", 0, 10))
        @stringJButton.setText("String")
        @stringJButton.addMouseListener(Class.new(MouseAdapter.is_a?(Class) ? MouseAdapter : Object) do
            include(MouseAdapter) unless MouseAdapter.is_a?(Class)
            

            def mousePressed(evt)
                stringJButtonMousePressed(evt)
            end
            java_overload :mousePressed, 1
        end.new())
        add(@stringJButton)
        @charJButton.setFont(Font.new("Dialog", 0, 10))
        @charJButton.setText("Char")
        @charJButton.addMouseListener(Class.new(MouseAdapter.is_a?(Class) ? MouseAdapter : Object) do
            include(MouseAdapter) unless MouseAdapter.is_a?(Class)
            

            def mousePressed(evt)
                charJButtonMousePressed(evt)
            end
            java_overload :mousePressed, 1
        end.new())
        add(@charJButton)
        @roundRectJButton.setFont(Font.new("Dialog", 0, 10))
        @roundRectJButton.setText("Round Rect")
        @roundRectJButton.addMouseListener(Class.new(MouseAdapter.is_a?(Class) ? MouseAdapter : Object) do
            include(MouseAdapter) unless MouseAdapter.is_a?(Class)
            

            def mousePressed(evt)
                roundRectJButtonMousePressed(evt)
            end
            java_overload :mousePressed, 1
        end.new())
        add(@roundRectJButton)
        @imageJButton.setFont(Font.new("Dialog", 0, 10))
        @imageJButton.setText("Image")
        @imageJButton.addMouseListener(Class.new(MouseAdapter.is_a?(Class) ? MouseAdapter : Object) do
            include(MouseAdapter) unless MouseAdapter.is_a?(Class)
            

            def mousePressed(evt)
                imageJButtonMousePressed(evt)
            end
            java_overload :mousePressed, 1
        end.new())
        add(@imageJButton)
        @fillArcJButton.setFont(Font.new("Dialog", 0, 10))
        @fillArcJButton.setText("Fill Arc")
        @fillArcJButton.addMouseListener(Class.new(MouseAdapter.is_a?(Class) ? MouseAdapter : Object) do
            include(MouseAdapter) unless MouseAdapter.is_a?(Class)
            

            def mousePressed(evt)
                fillArcJButtonMousePressed(evt)
            end
            java_overload :mousePressed, 1
        end.new())
        add(@fillArcJButton)
        @fillRectJButton.setFont(Font.new("Dialog", 0, 10))
        @fillRectJButton.setText("Fill Rect")
        @fillRectJButton.addMouseListener(Class.new(MouseAdapter.is_a?(Class) ? MouseAdapter : Object) do
            include(MouseAdapter) unless MouseAdapter.is_a?(Class)
            

            def mousePressed(evt)
                fillRectJButtonMousePressed(evt)
            end
            java_overload :mousePressed, 1
        end.new())
        add(@fillRectJButton)
        @fillRoundRectJButton.setFont(Font.new("Dialog", 0, 10))
        @fillRoundRectJButton.setText("Fill Rnd Rect")
        @fillRoundRectJButton.addMouseListener(Class.new(MouseAdapter.is_a?(Class) ? MouseAdapter : Object) do
            include(MouseAdapter) unless MouseAdapter.is_a?(Class)
            

            def mousePressed(evt)
                fillRoundRectJButtonMousePressed(evt)
            end
            java_overload :mousePressed, 1
        end.new())
        add(@fillRoundRectJButton)
        @dottedLineJButton.setFont(Font.new("Dialog", 0, 10))
        @dottedLineJButton.setText("Dot Line")
        @dottedLineJButton.addMouseListener(Class.new(MouseAdapter.is_a?(Class) ? MouseAdapter : Object) do
            include(MouseAdapter) unless MouseAdapter.is_a?(Class)
            

            def mousePressed(evt)
                dottedLineJButtonMousePressed(evt)
            end
            java_overload :mousePressed, 1
        end.new())
        add(@dottedLineJButton)
        @dottedRectButton.setFont(Font.new("Dialog", 0, 10))
        @dottedRectButton.setText("Dot Rect")
        @dottedRectButton.addMouseListener(Class.new(MouseAdapter.is_a?(Class) ? MouseAdapter : Object) do
            include(MouseAdapter) unless MouseAdapter.is_a?(Class)
            

            def mousePressed(evt)
                dottedRectButtonMousePressed(evt)
            end
            java_overload :mousePressed, 1
        end.new())
        add(@dottedRectButton)
        @dottedArcJButton.setFont(Font.new("Dialog", 0, 10))
        @dottedArcJButton.setText("Dot Arc")
        @dottedArcJButton.addMouseListener(Class.new(MouseAdapter.is_a?(Class) ? MouseAdapter : Object) do
            include(MouseAdapter) unless MouseAdapter.is_a?(Class)
            

            def mousePressed(evt)
                dottedArcJButtonMousePressed(evt)
            end
            java_overload :mousePressed, 1
        end.new())
        add(@dottedArcJButton)
        @dottedFillRectJButton.setFont(Font.new("Dialog", 0, 10))
        @dottedFillRectJButton.setText("Dot Fill Rect")
        @dottedFillRectJButton.addMouseListener(Class.new(MouseAdapter.is_a?(Class) ? MouseAdapter : Object) do
            include(MouseAdapter) unless MouseAdapter.is_a?(Class)
            

            def mousePressed(evt)
                dottedFillRectJButtonMousePressed(evt)
            end
            java_overload :mousePressed, 1
        end.new())
        add(@dottedFillRectJButton)
        @dottedFillArcJButton.setFont(Font.new("Dialog", 0, 10))
        @dottedFillArcJButton.setText("Dot Fill Arc")
        @dottedFillArcJButton.addMouseListener(Class.new(MouseAdapter.is_a?(Class) ? MouseAdapter : Object) do
            include(MouseAdapter) unless MouseAdapter.is_a?(Class)
            

            def mousePressed(evt)
                dottedFillArcJButtonMousePressed(evt)
            end
            java_overload :mousePressed, 1
        end.new())
        add(@dottedFillArcJButton)
        @dottedFillRountRectJButton.setFont(Font.new("Dialog", 0, 10))
        @dottedFillRountRectJButton.setText("Dot Fill Rnd Rect")
        @dottedFillRountRectJButton.addMouseListener(Class.new(MouseAdapter.is_a?(Class) ? MouseAdapter : Object) do
            include(MouseAdapter) unless MouseAdapter.is_a?(Class)
            

            def mousePressed(evt)
                dottedFillRountRectJButtonMousePressed(evt)
            end
            java_overload :mousePressed, 1
        end.new())
        add(@dottedFillRountRectJButton)
        @colorJPanel.setLayout(GridLayout.new(1, 1))
        @colorJPanel.add(@colorJList)
        add(@colorJPanel)
    end
    java_overload :initComponents, 0
    

    def dottedFillRountRectJButtonMousePressed(evt)
        ToolFactory.getInstance().setSelectedTool(@dottedFillRountRectJButton.getText())
    end
    java_overload :dottedFillRountRectJButtonMousePressed, 1
    

    def dottedFillArcJButtonMousePressed(evt)
        ToolFactory.getInstance().setSelectedTool(@dottedFillArcJButton.getText())
    end
    java_overload :dottedFillArcJButtonMousePressed, 1
    

    def dottedFillRectJButtonMousePressed(evt)
        ToolFactory.getInstance().setSelectedTool(@dottedFillRectJButton.getText())
    end
    java_overload :dottedFillRectJButtonMousePressed, 1
    

    def dottedArcJButtonMousePressed(evt)
        ToolFactory.getInstance().setSelectedTool(@dottedArcJButton.getText())
    end
    java_overload :dottedArcJButtonMousePressed, 1
    

    def dottedRectButtonMousePressed(evt)
        ToolFactory.getInstance().setSelectedTool(@dottedRectButton.getText())
    end
    java_overload :dottedRectButtonMousePressed, 1
    

    def dottedLineJButtonMousePressed(evt)
        ToolFactory.getInstance().setSelectedTool(@dottedLineJButton.getText())
    end
    java_overload :dottedLineJButtonMousePressed, 1
    

    def fillRoundRectJButtonMousePressed(evt)
        ToolFactory.getInstance().setSelectedTool(@fillRoundRectJButton.getText())
    end
    java_overload :fillRoundRectJButtonMousePressed, 1
    

    def fillRectJButtonMousePressed(evt)
        ToolFactory.getInstance().setSelectedTool(@fillRectJButton.getText())
    end
    java_overload :fillRectJButtonMousePressed, 1
    

    def fillArcJButtonMousePressed(evt)
        ToolFactory.getInstance().setSelectedTool(@fillArcJButton.getText())
    end
    java_overload :fillArcJButtonMousePressed, 1
    

    def imageJButtonMousePressed(evt)
        ToolFactory.getInstance().setSelectedTool(@imageJButton.getText())
    end
    java_overload :imageJButtonMousePressed, 1
    

    def roundRectJButtonMousePressed(evt)
        ToolFactory.getInstance().setSelectedTool(@roundRectJButton.getText())
    end
    java_overload :roundRectJButtonMousePressed, 1
    

    def charJButtonMousePressed(evt)
        ToolFactory.getInstance().setSelectedTool(@charJButton.getText())
    end
    java_overload :charJButtonMousePressed, 1
    

    def stringJButtonMousePressed(evt)
        ToolFactory.getInstance().setSelectedTool(@stringJButton.getText())
    end
    java_overload :stringJButtonMousePressed, 1
    

    def arcJButtonMousePressed(evt)
        ToolFactory.getInstance().setSelectedTool(@arcJButton.getText())
    end
    java_overload :arcJButtonMousePressed, 1
    

    def rectJButtonMouseClicked(evt)
        ToolFactory.getInstance().setSelectedTool(@rectJButton.getText())
    end
    java_overload :rectJButtonMouseClicked, 1
    

    def lineJButtonMouseClicked(evt)
        ToolFactory.getInstance().setSelectedTool(@lineJButton.getText())
    end
    java_overload :lineJButtonMouseClicked, 1
end

autoload :LinesGraphicItem, "org/allbinary/graphics/j2me/workarea/tools/LinesGraphicItem" unless const_defined?(:LinesGraphicItem, false)
autoload :ToolFactory, "org/allbinary/graphics/j2me/workarea/tools/ToolFactory" unless const_defined?(:ToolFactory, false)

end; end; end; end; end; end

