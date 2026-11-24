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
# package org.allbinary.gui.dialog

require "java/lang/JavaOverload"
# require "java/awt/EventQueue"
# require "java/awt/Frame"
# require "java/awt/event/ActionEvent"
# require "java/awt/event/ActionListener"
# require "javax/swing/GroupLayout"
# require "javax/swing/JButton"
# require "javax/swing/JDialog"
# require "javax/swing/JFrame"
# require "javax/swing/JLabel"
# require "javax/swing/WindowConstants"

module ::Org; module Allbinary; module Gui; module Dialog

class BasicTextJDialog < JDialog
    attr_accessor :closeListenerInterface, :jButton1, :textJLabel

    def jfields_org_allbinary_gui_dialog_BasicTextJDialog
        @closeListenerInterface = nil unless instance_variable_defined?(:@closeListenerInterface)
        @jButton1 = nil unless instance_variable_defined?(:@jButton1)
        @textJLabel = nil unless instance_variable_defined?(:@textJLabel)
    end

    def initialize(*args)
        case args.length
        when 3 then jnew_org_allbinary_gui_dialog_BasicTextJDialog_3(*args)
        when 1 then jnew_org_allbinary_gui_dialog_BasicTextJDialog_1(*args)
        else raise ArgumentError, "No constructor of BasicTextJDialog takes #{args.length} arguments"
        end
    end
    

    def jnew_org_allbinary_gui_dialog_BasicTextJDialog_3(parent, modal, text)
        BasicTextJDialog.superclass.instance_method(:initialize).bind(self).call(parent, modal)
        jfields_org_allbinary_gui_dialog_BasicTextJDialog
        self.initComponents()
        self.setText(text)
    end
    

    def setText(text)
        @textJLabel.setText(text)
    end
    java_overload :setText, 1
    

    def addCloseListener(closeListenerInterface)
        @closeListenerInterface = closeListenerInterface
    end
    java_overload :addCloseListener, 1
    

    def jnew_org_allbinary_gui_dialog_BasicTextJDialog_1(text)
        BasicTextJDialog.superclass.instance_method(:initialize).bind(self).call()
        jfields_org_allbinary_gui_dialog_BasicTextJDialog
        self.initComponents()
        @textJLabel.setText(text)
    end
    

    def initComponents()
        @jButton1 = JButton.new()
        @textJLabel = JLabel.new()
        setDefaultCloseOperation(WindowConstants::DISPOSE_ON_CLOSE)
        @jButton1.setText("OK")
        @jButton1.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                jButton1ActionPerformed(evt)
            end
            java_overload :actionPerformed, 1
        end.new())
        @textJLabel.setText("No Text Set")
        layout = GroupLayout.new(getContentPane())
        getContentPane().setLayout(layout)
        layout.setHorizontalGroup(layout.createParallelGroup(GroupLayout::Alignment.LEADING).addGroup(layout.createSequentialGroup().addGroup(layout.createParallelGroup(GroupLayout::Alignment.LEADING).addGroup(layout.createSequentialGroup().addGap(80, 80, 80).addComponent(@jButton1)).addGroup(layout.createSequentialGroup().addContainerGap().addComponent(@textJLabel, GroupLayout::DEFAULT_SIZE, 184, 32767))).addContainerGap()))
        layout.setVerticalGroup(layout.createParallelGroup(GroupLayout::Alignment.LEADING).addGroup(layout.createSequentialGroup().addGap(20, 20, 20).addComponent(@textJLabel, GroupLayout::PREFERRED_SIZE, 20, GroupLayout::PREFERRED_SIZE).addGap(30, 30, 30).addComponent(@jButton1)))
        pack()
    end
    java_overload :initComponents, 0
    

    def jButton1ActionPerformed(evt)
        self.setVisible(false)
        if @closeListenerInterface != nil
            @closeListenerInterface.onClose()
        end
    end
    java_overload :jButton1ActionPerformed, 1
    

    def self.main(args)
        EventQueue.invokeLater(Class.new(::Org::Allbinary::ThreadPackage::ARunnable.is_a?(Class) ? ::Org::Allbinary::ThreadPackage::ARunnable : Object) do
            include(::Org::Allbinary::ThreadPackage::ARunnable) unless ::Org::Allbinary::ThreadPackage::ARunnable.is_a?(Class)
            

            def run()
                BasicTextJDialog.new(JFrame.new(), true, "Test").setVisible(true)
            end
            java_overload :run, 0
        end.new())
    end
end

module ::Org; module Allbinary; module ThreadPackage; autoload :ARunnable, "org/allbinary/thread/ARunnable" unless const_defined?(:ARunnable, false); end; end; end
autoload :CloseJDialogListenerInterface, "org/allbinary/gui/dialog/CloseJDialogListenerInterface" unless const_defined?(:CloseJDialogListenerInterface, false)

end; end; end; end

