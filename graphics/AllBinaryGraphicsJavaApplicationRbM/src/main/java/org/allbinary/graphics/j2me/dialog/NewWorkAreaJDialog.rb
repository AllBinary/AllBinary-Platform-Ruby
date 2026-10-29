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
# package org.allbinary.graphics.j2me.dialog

# require "java/awt"
# require "java/awt/event/ActionEvent"
# require "java/awt/event/ActionListener"
# require "javax/swing"

class NewWorkAreaJDialog < JDialog
    attr_accessor :parent, :dimension, :xSizeJTextField, :ySizeJTextField, :nameJTextField

    def initialize_fields
        @parent = nil
        @dimension = nil
        @xSizeJTextField = nil
        @ySizeJTextField = nil
        @nameJTextField = nil
    end
    

    def initialize(parent, modal, dimension, newName)
        super(parent, modal)
        initialize_fields
        begin
            self.initComponents()
            @parent = parent
            @xSizeJTextField = JTextField.new("12")
            @ySizeJTextField = JTextField.new("12")
            @nameJTextField = JTextField.new(newName)
            @dimension = dimension
            submitButton = JButton.new("Ok")
            submitButton.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
                include(ActionListener) unless ActionListener.is_a?(Class)
                

                def actionPerformed(evt)
                    begin
                        disposeNewDialog()
                    rescue StandardError => e
                    end
                end
            end.new())
            self.setSize(150, 100)
            self.getContentPane().setLayout(GridLayout.new(5, 2))
            self.getContentPane().add(JLabel.new("Please enter"))
            self.getContentPane().add(JLabel.new(" the size."))
            self.getContentPane().add(JLabel.new("Name:"))
            self.getContentPane().add(@nameJTextField)
            self.getContentPane().add(JLabel.new("X: "))
            self.getContentPane().add(@xSizeJTextField)
            self.getContentPane().add(JLabel.new("Y: "))
            self.getContentPane().add(@ySizeJTextField)
            self.getContentPane().add(submitButton)
            self.show()
        rescue StandardError => e
            raise e
        end
    end
    

    # throws Exception
    def disposeNewDialog()
        begin
            canvasWidth = @xSizeJTextField.getText()
            canvasHeight = @ySizeJTextField.getText()
            newName = @nameJTextField.getText()
            if newName == nil
                raise GraphicsException.new("No Name", self, "disposeNewDialog")
            end
            workAreaJPanel = WorkAreaJPanel.new(newName, @dimension, canvasWidth.to_i, canvasHeight.to_i)
            workAreaJPanel.setLayout(GridLayout.new(1, 1))
            @parent.add(workAreaJPanel)
            self.dispose()
        rescue StandardError => e
            raise e
        end
    end
    

    def initComponents()
        addWindowListener(Class.new(WindowAdapter.is_a?(Class) ? WindowAdapter : Object) do
            include(WindowAdapter) unless WindowAdapter.is_a?(Class)
            

            def windowClosing(evt)
                closeDialog(evt)
            end
        end.new())
        pack()
    end
    

    def closeDialog(evt)
        setVisible(false)
        dispose()
    end
    

    def self.main(args)
        begin
            NewWorkAreaJDialog.new(MyFrame.new(), true, Dimension.new(100, 100), "testing").show()
        rescue StandardError => e
        end
    end
end

require "org/allbinary/graphics/j2me/GraphicsException"
require "org/allbinary/graphics/j2me/MyFrame"
require "org/allbinary/graphics/j2me/workarea/WorkAreaJPanel"
require "org/allbinary/graphics/j2me/workarea/WorkAreaJPanelInterface"

