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


class ToolJPanel < JPanel
    attr_accessor :arcJButton, :charJButton, :colorJList, :colorJPanel, :dottedArcJButton, :dottedFillArcJButton, :dottedFillRectJButton, :dottedFillRountRectJButton, :dottedLineJButton, :dottedRectButton, :fillArcJButton, :fillRectJButton, :fillRoundRectJButton, :imageJButton, :lineJButton, :rectJButton, :roundRectJButton, :stringJButton

    def initialize_fields
        @arcJButton = nil
        @charJButton = nil
        @colorJList = nil
        @colorJPanel = nil
        @dottedArcJButton = nil
        @dottedFillArcJButton = nil
        @dottedFillRectJButton = nil
        @dottedFillRountRectJButton = nil
        @dottedLineJButton = nil
        @dottedRectButton = nil
        @fillArcJButton = nil
        @fillRectJButton = nil
        @fillRoundRectJButton = nil
        @imageJButton = nil
        @lineJButton = nil
        @rectJButton = nil
        @roundRectJButton = nil
        @stringJButton = nil
    end
    

    def initialize()
        super()
        initialize_fields
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
        end.new())
        add(@lineJButton)
        @rectJButton.setFont(Font.new("Dialog", 0, 10))
        @rectJButton.setText("Rect")
        @rectJButton.addMouseListener(Class.new(MouseAdapter.is_a?(Class) ? MouseAdapter : Object) do
            include(MouseAdapter) unless MouseAdapter.is_a?(Class)
            

            def mouseClicked(evt)
                rectJButtonMouseClicked(evt)
            end
        end.new())
        add(@rectJButton)
        @arcJButton.setFont(Font.new("Dialog", 0, 10))
        @arcJButton.setText("Arc")
        @arcJButton.addMouseListener(Class.new(MouseAdapter.is_a?(Class) ? MouseAdapter : Object) do
            include(MouseAdapter) unless MouseAdapter.is_a?(Class)
            

            def mousePressed(evt)
                arcJButtonMousePressed(evt)
            end
        end.new())
        add(@arcJButton)
        @stringJButton.setFont(Font.new("Dialog", 0, 10))
        @stringJButton.setText("String")
        @stringJButton.addMouseListener(Class.new(MouseAdapter.is_a?(Class) ? MouseAdapter : Object) do
            include(MouseAdapter) unless MouseAdapter.is_a?(Class)
            

            def mousePressed(evt)
                stringJButtonMousePressed(evt)
            end
        end.new())
        add(@stringJButton)
        @charJButton.setFont(Font.new("Dialog", 0, 10))
        @charJButton.setText("Char")
        @charJButton.addMouseListener(Class.new(MouseAdapter.is_a?(Class) ? MouseAdapter : Object) do
            include(MouseAdapter) unless MouseAdapter.is_a?(Class)
            

            def mousePressed(evt)
                charJButtonMousePressed(evt)
            end
        end.new())
        add(@charJButton)
        @roundRectJButton.setFont(Font.new("Dialog", 0, 10))
        @roundRectJButton.setText("Round Rect")
        @roundRectJButton.addMouseListener(Class.new(MouseAdapter.is_a?(Class) ? MouseAdapter : Object) do
            include(MouseAdapter) unless MouseAdapter.is_a?(Class)
            

            def mousePressed(evt)
                roundRectJButtonMousePressed(evt)
            end
        end.new())
        add(@roundRectJButton)
        @imageJButton.setFont(Font.new("Dialog", 0, 10))
        @imageJButton.setText("Image")
        @imageJButton.addMouseListener(Class.new(MouseAdapter.is_a?(Class) ? MouseAdapter : Object) do
            include(MouseAdapter) unless MouseAdapter.is_a?(Class)
            

            def mousePressed(evt)
                imageJButtonMousePressed(evt)
            end
        end.new())
        add(@imageJButton)
        @fillArcJButton.setFont(Font.new("Dialog", 0, 10))
        @fillArcJButton.setText("Fill Arc")
        @fillArcJButton.addMouseListener(Class.new(MouseAdapter.is_a?(Class) ? MouseAdapter : Object) do
            include(MouseAdapter) unless MouseAdapter.is_a?(Class)
            

            def mousePressed(evt)
                fillArcJButtonMousePressed(evt)
            end
        end.new())
        add(@fillArcJButton)
        @fillRectJButton.setFont(Font.new("Dialog", 0, 10))
        @fillRectJButton.setText("Fill Rect")
        @fillRectJButton.addMouseListener(Class.new(MouseAdapter.is_a?(Class) ? MouseAdapter : Object) do
            include(MouseAdapter) unless MouseAdapter.is_a?(Class)
            

            def mousePressed(evt)
                fillRectJButtonMousePressed(evt)
            end
        end.new())
        add(@fillRectJButton)
        @fillRoundRectJButton.setFont(Font.new("Dialog", 0, 10))
        @fillRoundRectJButton.setText("Fill Rnd Rect")
        @fillRoundRectJButton.addMouseListener(Class.new(MouseAdapter.is_a?(Class) ? MouseAdapter : Object) do
            include(MouseAdapter) unless MouseAdapter.is_a?(Class)
            

            def mousePressed(evt)
                fillRoundRectJButtonMousePressed(evt)
            end
        end.new())
        add(@fillRoundRectJButton)
        @dottedLineJButton.setFont(Font.new("Dialog", 0, 10))
        @dottedLineJButton.setText("Dot Line")
        @dottedLineJButton.addMouseListener(Class.new(MouseAdapter.is_a?(Class) ? MouseAdapter : Object) do
            include(MouseAdapter) unless MouseAdapter.is_a?(Class)
            

            def mousePressed(evt)
                dottedLineJButtonMousePressed(evt)
            end
        end.new())
        add(@dottedLineJButton)
        @dottedRectButton.setFont(Font.new("Dialog", 0, 10))
        @dottedRectButton.setText("Dot Rect")
        @dottedRectButton.addMouseListener(Class.new(MouseAdapter.is_a?(Class) ? MouseAdapter : Object) do
            include(MouseAdapter) unless MouseAdapter.is_a?(Class)
            

            def mousePressed(evt)
                dottedRectButtonMousePressed(evt)
            end
        end.new())
        add(@dottedRectButton)
        @dottedArcJButton.setFont(Font.new("Dialog", 0, 10))
        @dottedArcJButton.setText("Dot Arc")
        @dottedArcJButton.addMouseListener(Class.new(MouseAdapter.is_a?(Class) ? MouseAdapter : Object) do
            include(MouseAdapter) unless MouseAdapter.is_a?(Class)
            

            def mousePressed(evt)
                dottedArcJButtonMousePressed(evt)
            end
        end.new())
        add(@dottedArcJButton)
        @dottedFillRectJButton.setFont(Font.new("Dialog", 0, 10))
        @dottedFillRectJButton.setText("Dot Fill Rect")
        @dottedFillRectJButton.addMouseListener(Class.new(MouseAdapter.is_a?(Class) ? MouseAdapter : Object) do
            include(MouseAdapter) unless MouseAdapter.is_a?(Class)
            

            def mousePressed(evt)
                dottedFillRectJButtonMousePressed(evt)
            end
        end.new())
        add(@dottedFillRectJButton)
        @dottedFillArcJButton.setFont(Font.new("Dialog", 0, 10))
        @dottedFillArcJButton.setText("Dot Fill Arc")
        @dottedFillArcJButton.addMouseListener(Class.new(MouseAdapter.is_a?(Class) ? MouseAdapter : Object) do
            include(MouseAdapter) unless MouseAdapter.is_a?(Class)
            

            def mousePressed(evt)
                dottedFillArcJButtonMousePressed(evt)
            end
        end.new())
        add(@dottedFillArcJButton)
        @dottedFillRountRectJButton.setFont(Font.new("Dialog", 0, 10))
        @dottedFillRountRectJButton.setText("Dot Fill Rnd Rect")
        @dottedFillRountRectJButton.addMouseListener(Class.new(MouseAdapter.is_a?(Class) ? MouseAdapter : Object) do
            include(MouseAdapter) unless MouseAdapter.is_a?(Class)
            

            def mousePressed(evt)
                dottedFillRountRectJButtonMousePressed(evt)
            end
        end.new())
        add(@dottedFillRountRectJButton)
        @colorJPanel.setLayout(GridLayout.new(1, 1))
        @colorJPanel.add(@colorJList)
        add(@colorJPanel)
    end
    

    def dottedFillRountRectJButtonMousePressed(evt)
        ToolFactory.getInstance().setSelectedTool(@dottedFillRountRectJButton.getText())
    end
    

    def dottedFillArcJButtonMousePressed(evt)
        ToolFactory.getInstance().setSelectedTool(@dottedFillArcJButton.getText())
    end
    

    def dottedFillRectJButtonMousePressed(evt)
        ToolFactory.getInstance().setSelectedTool(@dottedFillRectJButton.getText())
    end
    

    def dottedArcJButtonMousePressed(evt)
        ToolFactory.getInstance().setSelectedTool(@dottedArcJButton.getText())
    end
    

    def dottedRectButtonMousePressed(evt)
        ToolFactory.getInstance().setSelectedTool(@dottedRectButton.getText())
    end
    

    def dottedLineJButtonMousePressed(evt)
        ToolFactory.getInstance().setSelectedTool(@dottedLineJButton.getText())
    end
    

    def fillRoundRectJButtonMousePressed(evt)
        ToolFactory.getInstance().setSelectedTool(@fillRoundRectJButton.getText())
    end
    

    def fillRectJButtonMousePressed(evt)
        ToolFactory.getInstance().setSelectedTool(@fillRectJButton.getText())
    end
    

    def fillArcJButtonMousePressed(evt)
        ToolFactory.getInstance().setSelectedTool(@fillArcJButton.getText())
    end
    

    def imageJButtonMousePressed(evt)
        ToolFactory.getInstance().setSelectedTool(@imageJButton.getText())
    end
    

    def roundRectJButtonMousePressed(evt)
        ToolFactory.getInstance().setSelectedTool(@roundRectJButton.getText())
    end
    

    def charJButtonMousePressed(evt)
        ToolFactory.getInstance().setSelectedTool(@charJButton.getText())
    end
    

    def stringJButtonMousePressed(evt)
        ToolFactory.getInstance().setSelectedTool(@stringJButton.getText())
    end
    

    def arcJButtonMousePressed(evt)
        ToolFactory.getInstance().setSelectedTool(@arcJButton.getText())
    end
    

    def rectJButtonMouseClicked(evt)
        ToolFactory.getInstance().setSelectedTool(@rectJButton.getText())
    end
    

    def lineJButtonMouseClicked(evt)
        ToolFactory.getInstance().setSelectedTool(@lineJButton.getText())
    end
end

require "org/allbinary/graphics/j2me/workarea/tools/LinesGraphicItem"
require "org/allbinary/graphics/j2me/workarea/tools/ToolFactory"

