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


class BasicTextJDialog < JDialog
    attr_accessor :closeListenerInterface, :jButton1, :textJLabel

    def initialize_fields
        @closeListenerInterface = nil
        @jButton1 = nil
        @textJLabel = nil
    end

    def initialize(*args)
        case args.length
        when 3 then constructor3(*args)
        when 1 then constructor1(*args)
        end
    end
    

    def constructor3(parent, modal, text)
        method(:initialize).super_method.call(parent, modal)
        initialize_fields
        self.initComponents()
        self.setText(text)
    end
    

    def setText(text)
        @textJLabel.setText(text)
    end
    

    def addCloseListener(closeListenerInterface)
        @closeListenerInterface = closeListenerInterface
    end
    

    def constructor1(text)
        method(:initialize).super_method.call()
        initialize_fields
        self.initComponents()
        @textJLabel.setText(text)
    end
    

    def initComponents()
        @jButton1 = JButton.new()
        @textJLabel = JLabel.new()
        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE)
        @jButton1.setText("OK")
        @jButton1.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                jButton1ActionPerformed(evt)
            end
        end.new())
        @textJLabel.setText("No Text Set")
        layout = GroupLayout.new(getContentPane())
        getContentPane().setLayout(layout)
        layout.setHorizontalGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addGroup(layout.createSequentialGroup().addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addGroup(layout.createSequentialGroup().addGap(80, 80, 80).addComponent(@jButton1)).addGroup(layout.createSequentialGroup().addContainerGap().addComponent(@textJLabel, javax.swing.GroupLayout.DEFAULT_SIZE, 184, 32767))).addContainerGap()))
        layout.setVerticalGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addGroup(layout.createSequentialGroup().addGap(20, 20, 20).addComponent(@textJLabel, javax.swing.GroupLayout.PREFERRED_SIZE, 20, javax.swing.GroupLayout.PREFERRED_SIZE).addGap(30, 30, 30).addComponent(@jButton1)))
        pack()
    end
    

    def jButton1ActionPerformed(evt)
        self.setVisible(false)
        if @closeListenerInterface != nil
            @closeListenerInterface.onClose()
        end
    end
    

    def self.main(args)
        java.awt.EventQueue.invokeLater(Class.new(ARunnable.is_a?(Class) ? ARunnable : Object) do
            include(ARunnable) unless ARunnable.is_a?(Class)
            

            def run()
                BasicTextJDialog.new(JFrame.new(), true, "Test").setVisible(true)
            end
        end.new())
    end
end

require "org/allbinary/thread/ARunnable"
require "org/allbinary/gui/dialog/CloseJDialogListenerInterface"

