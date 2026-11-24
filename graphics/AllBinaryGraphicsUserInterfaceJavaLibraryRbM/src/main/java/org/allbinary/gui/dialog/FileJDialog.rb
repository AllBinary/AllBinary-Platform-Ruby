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
# require "java/io/File"
# require "java/awt/EventQueue"
# require "java/awt/Frame"
# require "java/awt/event/ActionEvent"
# require "java/awt/event/ActionListener"
# require "javax/swing/JDialog"
# require "javax/swing/JFileChooser"
# require "javax/swing/JFrame"
# require "javax/swing/WindowConstants"

module ::Org; module Allbinary; module Gui; module Dialog

class FileJDialog < JDialog
    attr_accessor :logUtil, :finishedListenerInterface, :jFileChooser1

    def jfields_org_allbinary_gui_dialog_FileJDialog
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @finishedListenerInterface = nil unless instance_variable_defined?(:@finishedListenerInterface)
        @jFileChooser1 = nil unless instance_variable_defined?(:@jFileChooser1)
    end

    def initialize(*args)
        case args.length
        when 0 then jnew_org_allbinary_gui_dialog_FileJDialog_0(*args)
        when 2 then jnew_org_allbinary_gui_dialog_FileJDialog_2(*args)
        else raise ArgumentError, "No constructor of FileJDialog takes #{args.length} arguments"
        end
    end
    

    def jnew_org_allbinary_gui_dialog_FileJDialog_0()
        FileJDialog.superclass.instance_method(:initialize).bind(self).call()
        jfields_org_allbinary_gui_dialog_FileJDialog
        self.initComponents()
        self.getJFileChooser1().setMultiSelectionEnabled(true)
    end
    

    def jnew_org_allbinary_gui_dialog_FileJDialog_2(parent, modal)
        FileJDialog.superclass.instance_method(:initialize).bind(self).call(parent, modal)
        jfields_org_allbinary_gui_dialog_FileJDialog
        self.initComponents()
        self.getJFileChooser1().setMultiSelectionEnabled(true)
    end
    

    def addFinishedListener(finishedListenerInterface)
        @finishedListenerInterface = finishedListenerInterface
    end
    java_overload :addFinishedListener, 1
    

    def initComponents()
        @jFileChooser1 = JFileChooser.new()
        setDefaultCloseOperation(WindowConstants::DISPOSE_ON_CLOSE)
        @jFileChooser1.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                jFileChooser1ActionPerformed(evt)
            end
            java_overload :actionPerformed, 1
        end.new())
        layout = ::Org::Jdesktop::Layout::GroupLayout.new(getContentPane())
        getContentPane().setLayout(layout)
        layout.setHorizontalGroup(layout.createParallelGroup(::Org::Jdesktop::Layout::GroupLayout::LEADING).add(::Org::Jdesktop::Layout::GroupLayout::TRAILING, layout.createSequentialGroup().addContainerGap(::Org::Jdesktop::Layout::GroupLayout::DEFAULT_SIZE, 32767).add(@jFileChooser1, ::Org::Jdesktop::Layout::GroupLayout::PREFERRED_SIZE, ::Org::Jdesktop::Layout::GroupLayout::DEFAULT_SIZE, ::Org::Jdesktop::Layout::GroupLayout::PREFERRED_SIZE).addContainerGap()))
        layout.setVerticalGroup(layout.createParallelGroup(::Org::Jdesktop::Layout::GroupLayout::LEADING).add(layout.createSequentialGroup().addContainerGap().add(@jFileChooser1, ::Org::Jdesktop::Layout::GroupLayout::PREFERRED_SIZE, 357, ::Org::Jdesktop::Layout::GroupLayout::PREFERRED_SIZE).addContainerGap(::Org::Jdesktop::Layout::GroupLayout::DEFAULT_SIZE, 32767)))
        pack()
    end
    java_overload :initComponents, 0
    

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
    java_overload :jFileChooser1ActionPerformed, 1
    

    def self.main(args)
        EventQueue.invokeLater(Class.new(::Org::Allbinary::ThreadPackage::ARunnable.is_a?(Class) ? ::Org::Allbinary::ThreadPackage::ARunnable : Object) do
            include(::Org::Allbinary::ThreadPackage::ARunnable) unless ::Org::Allbinary::ThreadPackage::ARunnable.is_a?(Class)
            

            def run()
                FileJDialog.new(JFrame.new(), true).setVisible(true)
            end
            java_overload :run, 0
        end.new())
    end
    

    def getJFileChooser1()
        return @jFileChooser1
    end
    java_overload :getJFileChooser1, 0
    

    def setJFileChooser1(jFileChooser1)
        @jFileChooser1 = jFileChooser1
    end
    java_overload :setJFileChooser1, 1
end

module ::Org; module Allbinary; module ThreadPackage; autoload :ARunnable, "org/allbinary/thread/ARunnable" unless const_defined?(:ARunnable, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
autoload :FileJDialogListenerInterface, "org/allbinary/gui/dialog/FileJDialogListenerInterface" unless const_defined?(:FileJDialogListenerInterface, false)
module ::Org; module Jdesktop; module Layout; autoload :GroupLayout, "org/jdesktop/layout/GroupLayout" unless const_defined?(:GroupLayout, false); end; end; end
module ::Org; module Jdesktop; module Layout; autoload :GroupLayout, "org/jdesktop/layout/GroupLayout" unless const_defined?(:GroupLayout, false); end; end; end

end; end; end; end

