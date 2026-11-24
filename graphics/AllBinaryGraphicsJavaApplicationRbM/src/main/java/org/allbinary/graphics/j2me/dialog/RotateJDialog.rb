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
# require "java/awt/EventQueue"
# require "java/awt/Frame"
# require "java/awt/event/ActionEvent"
# require "java/awt/event/ActionListener"
# require "java/awt/event/WindowAdapter"
# require "java/awt/event/WindowEvent"
# require "javax/swing/GroupLayout"
# require "javax/swing/JButton"
# require "javax/swing/JDialog"
# require "javax/swing/JFrame"
# require "javax/swing/JLabel"
# require "javax/swing/JPanel"
# require "javax/swing/JTextField"
# require "javax/swing/LayoutStyle"
# require "javax/swing/WindowConstants"

module ::Org; module Allbinary; module Graphics; module J2me; module Dialog

class RotateJDialog < JDialog
    attr_accessor :logUtil, :hashMap, :angleIncrementJTextField, :jButton1, :jLabel1, :jLabel2, :jPanel1, :totalRotationJTextField

    def jfields_org_allbinary_graphics_j2me_dialog_RotateJDialog
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @hashMap = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
        @angleIncrementJTextField = nil unless instance_variable_defined?(:@angleIncrementJTextField)
        @jButton1 = nil unless instance_variable_defined?(:@jButton1)
        @jLabel1 = nil unless instance_variable_defined?(:@jLabel1)
        @jLabel2 = nil unless instance_variable_defined?(:@jLabel2)
        @jPanel1 = nil unless instance_variable_defined?(:@jPanel1)
        @totalRotationJTextField = nil unless instance_variable_defined?(:@totalRotationJTextField)
    end
    

    def initialize(parent, modal)
        super(parent, modal)
        jfields_org_allbinary_graphics_j2me_dialog_RotateJDialog
        self.initComponents()
    end
    

    def initComponents()
        @angleIncrementJTextField = JTextField.new()
        @jLabel1 = JLabel.new()
        @totalRotationJTextField = JTextField.new()
        @jLabel2 = JLabel.new()
        @jPanel1 = JPanel.new()
        @jButton1 = JButton.new()
        setDefaultCloseOperation(WindowConstants::DISPOSE_ON_CLOSE)
        @angleIncrementJTextField.setText("36")
        @jLabel1.setText("Angle Increment:")
        @totalRotationJTextField.setText("360")
        @jLabel2.setText("Total Angular Rotation:")
        @jButton1.setText("OK")
        @jButton1.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                jButton1ActionPerformed(evt)
            end
            java_overload :actionPerformed, 1
        end.new())
        jPanel1Layout = GroupLayout.new(@jPanel1)
        @jPanel1.setLayout(jPanel1Layout)
        jPanel1Layout.setHorizontalGroup(jPanel1Layout.createParallelGroup(GroupLayout::Alignment.LEADING).addGroup(jPanel1Layout.createSequentialGroup().addGap(62, 62, 62).addComponent(@jButton1).addContainerGap(62, 32767)))
        jPanel1Layout.setVerticalGroup(jPanel1Layout.createParallelGroup(GroupLayout::Alignment.LEADING).addComponent(@jButton1))
        layout = GroupLayout.new(getContentPane())
        getContentPane().setLayout(layout)
        layout.setHorizontalGroup(layout.createParallelGroup(GroupLayout::Alignment.LEADING).addGroup(layout.createSequentialGroup().addContainerGap().addGroup(layout.createParallelGroup(GroupLayout::Alignment.TRAILING).addComponent(@jLabel1).addComponent(@jLabel2)).addPreferredGap(LayoutStyle::ComponentPlacement.UNRELATED).addGroup(layout.createParallelGroup(GroupLayout::Alignment.LEADING).addComponent(@totalRotationJTextField, GroupLayout::Alignment.TRAILING, GroupLayout::DEFAULT_SIZE, 31, 32767).addComponent(@angleIncrementJTextField, GroupLayout::Alignment.TRAILING, GroupLayout::PREFERRED_SIZE, 31, GroupLayout::PREFERRED_SIZE)).addContainerGap()).addComponent(@jPanel1, GroupLayout::Alignment.TRAILING, GroupLayout::DEFAULT_SIZE, GroupLayout::DEFAULT_SIZE, 32767))
        layout.setVerticalGroup(layout.createParallelGroup(GroupLayout::Alignment.LEADING).addGroup(layout.createSequentialGroup().addContainerGap().addGroup(layout.createParallelGroup(GroupLayout::Alignment.BASELINE).addComponent(@angleIncrementJTextField, GroupLayout::PREFERRED_SIZE, GroupLayout::DEFAULT_SIZE, GroupLayout::PREFERRED_SIZE).addComponent(@jLabel1)).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED).addGroup(layout.createParallelGroup(GroupLayout::Alignment.BASELINE).addComponent(@totalRotationJTextField, GroupLayout::PREFERRED_SIZE, GroupLayout::DEFAULT_SIZE, GroupLayout::PREFERRED_SIZE).addComponent(@jLabel2)).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED, 16, 32767).addComponent(@jPanel1, GroupLayout::PREFERRED_SIZE, GroupLayout::DEFAULT_SIZE, GroupLayout::PREFERRED_SIZE).addContainerGap()))
        pack()
    end
    java_overload :initComponents, 0
    

    def jButton1ActionPerformed(evt)
        begin
            @hashMap.put((0).to_s, (@angleIncrementJTextField.getText()).to_s)
            @hashMap.put((1).to_s, (@totalRotationJTextField.getText()).to_s)
            (self.getParent()).onHashMap(@hashMap)
            self.setVisible(false)
        rescue StandardError => e
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
            @logUtil.putF(commonStrings.EXCEPTION, self, "jButton1ActionPerformed")
        end
    end
    java_overload :jButton1ActionPerformed, 1
    

    def self.main(args)
        EventQueue.invokeLater(Class.new(::Org::Allbinary::ThreadPackage::ARunnable.is_a?(Class) ? ::Org::Allbinary::ThreadPackage::ARunnable : Object) do
            include(::Org::Allbinary::ThreadPackage::ARunnable) unless ::Org::Allbinary::ThreadPackage::ARunnable.is_a?(Class)
            

            def run()
                dialog = RotateJDialog.new(JFrame.new(), true)
                dialog.addWindowListener(Class.new(WindowAdapter.is_a?(Class) ? WindowAdapter : Object) do
                    include(WindowAdapter) unless WindowAdapter.is_a?(Class)
                    

                    def windowClosing(e)
                        exit(0)
                    end
                    java_overload :windowClosing, 1
                end.new())
                dialog.setVisible(true)
            end
            java_overload :run, 0
        end.new())
    end
end

module ::Org; module Allbinary; module ThreadPackage; autoload :ARunnable, "org/allbinary/thread/ARunnable" unless const_defined?(:ARunnable, false); end; end; end
module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Gui; module Dialog; autoload :HashMapJDialogListenerInterface, "org/allbinary/gui/dialog/HashMapJDialogListenerInterface" unless const_defined?(:HashMapJDialogListenerInterface, false); end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
require "java/lang/System"

end; end; end; end; end

