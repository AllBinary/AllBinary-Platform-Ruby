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

# require "java/io/File"

class FileJDialog < JDialog
    attr_accessor :logUtil, :finishedListenerInterface, :jFileChooser1

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @finishedListenerInterface = nil
        @jFileChooser1 = nil
    end

    def initialize(*args)
        case args.length
        when 0 then constructor0(*args)
        when 2 then constructor2(*args)
        end
    end
    

    def constructor0()
        method(:initialize).super_method.call()
        initialize_fields
        self.initComponents()
        self.getJFileChooser1().setMultiSelectionEnabled(true)
    end
    

    def constructor2(parent, modal)
        method(:initialize).super_method.call(parent, modal)
        initialize_fields
        self.initComponents()
        self.getJFileChooser1().setMultiSelectionEnabled(true)
    end
    

    def addFinishedListener(finishedListenerInterface)
        @finishedListenerInterface = finishedListenerInterface
    end
    

    def initComponents()
        @jFileChooser1 = JFileChooser.new()
        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE)
        @jFileChooser1.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                jFileChooser1ActionPerformed(evt)
            end
        end.new())
        layout = GroupLayout.new(getContentPane())
        getContentPane().setLayout(layout)
        layout.setHorizontalGroup(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING).add(org.jdesktop.layout.GroupLayout.TRAILING, layout.createSequentialGroup().addContainerGap(org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 32767).add(@jFileChooser1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE).addContainerGap()))
        layout.setVerticalGroup(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING).add(layout.createSequentialGroup().addContainerGap().add(@jFileChooser1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 357, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE).addContainerGap(org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 32767)))
        pack()
    end
    

    def jFileChooser1ActionPerformed(evt)
        @logUtil.putF("Starting Action Command: " + (evt.getActionCommand()).to_s, self, "ActionPerformed")
        files = self.getJFileChooser1().getSelectedFiles()
        if evt.getActionCommand() == self.getJFileChooser1().CANCEL_SELECTION
            self.setVisible(false)
        end
        if evt.getActionCommand() == self.getJFileChooser1().APPROVE_SELECTION
            if files != nil && files.length > 0
                @finishedListenerInterface.onFiles(files)
            end
        end
    end
    

    def self.main(args)
        java.awt.EventQueue.invokeLater(Class.new(ARunnable.is_a?(Class) ? ARunnable : Object) do
            include(ARunnable) unless ARunnable.is_a?(Class)
            

            def run()
                FileJDialog.new(JFrame.new(), true).setVisible(true)
            end
        end.new())
    end
    

    def getJFileChooser1()
        return @jFileChooser1
    end
    

    def setJFileChooser1(jFileChooser1)
        @jFileChooser1 = jFileChooser1
    end
end

require "org/allbinary/thread/ARunnable"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/gui/dialog/FileJDialogListenerInterface"

