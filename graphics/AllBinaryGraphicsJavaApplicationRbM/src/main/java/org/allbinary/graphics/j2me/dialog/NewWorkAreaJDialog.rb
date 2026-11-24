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

require "java/lang/JavaOverload"
# require "java/awt/Dimension"
# require "java/awt/GridLayout"
# require "java/awt/event/ActionEvent"
# require "java/awt/event/ActionListener"
# require "javax/swing/JTextField"
# require "javax/swing/JButton"
# require "javax/swing/JLabel"
# require "java/awt/Frame"
# require "java/awt/event/WindowAdapter"
# require "java/awt/event/WindowEvent"
# require "javax/swing/JDialog"

module ::Org; module Allbinary; module Graphics; module J2me; module Dialog

class NewWorkAreaJDialog < JDialog
    attr_accessor :parent, :dimension, :xSizeJTextField, :ySizeJTextField, :nameJTextField

    def jfields_org_allbinary_graphics_j2me_dialog_NewWorkAreaJDialog
        @parent = nil unless instance_variable_defined?(:@parent)
        @dimension = nil unless instance_variable_defined?(:@dimension)
        @xSizeJTextField = nil unless instance_variable_defined?(:@xSizeJTextField)
        @ySizeJTextField = nil unless instance_variable_defined?(:@ySizeJTextField)
        @nameJTextField = nil unless instance_variable_defined?(:@nameJTextField)
    end
    

    def initialize(parent, modal, dimension, newName)
        super(parent, modal)
        jfields_org_allbinary_graphics_j2me_dialog_NewWorkAreaJDialog
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
                java_overload :actionPerformed, 1
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
                raise ::Org::Allbinary::Graphics::J2me::GraphicsException.new("No Name", self, "disposeNewDialog")
            end
            workAreaJPanel = ::Org::Allbinary::Graphics::J2me::Workarea::WorkAreaJPanel.new(newName, @dimension, canvasWidth.to_i, canvasHeight.to_i)
            workAreaJPanel.setLayout(GridLayout.new(1, 1))
            @parent.add(workAreaJPanel)
            self.dispose()
        rescue StandardError => e
            raise e
        end
    end
    java_overload :disposeNewDialog, 0
    

    def initComponents()
        addWindowListener(Class.new(WindowAdapter.is_a?(Class) ? WindowAdapter : Object) do
            include(WindowAdapter) unless WindowAdapter.is_a?(Class)
            

            def windowClosing(evt)
                closeDialog(evt)
            end
            java_overload :windowClosing, 1
        end.new())
        pack()
    end
    java_overload :initComponents, 0
    

    def closeDialog(evt)
        setVisible(false)
        dispose()
    end
    java_overload :closeDialog, 1
    

    def self.main(args)
        begin
            NewWorkAreaJDialog.new(::Org::Allbinary::Graphics::J2me::MyFrame.new(), true, Dimension.new(100, 100), "testing").show()
        rescue StandardError => e
        end
    end
end

module ::Org; module Allbinary; module Graphics; module J2me; autoload :GraphicsException, "org/allbinary/graphics/j2me/GraphicsException" unless const_defined?(:GraphicsException, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module J2me; autoload :MyFrame, "org/allbinary/graphics/j2me/MyFrame" unless const_defined?(:MyFrame, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module J2me; module Workarea; autoload :WorkAreaJPanel, "org/allbinary/graphics/j2me/workarea/WorkAreaJPanel" unless const_defined?(:WorkAreaJPanel, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module J2me; module Workarea; autoload :WorkAreaJPanelInterface, "org/allbinary/graphics/j2me/workarea/WorkAreaJPanelInterface" unless const_defined?(:WorkAreaJPanelInterface, false); end; end; end; end; end

end; end; end; end; end

