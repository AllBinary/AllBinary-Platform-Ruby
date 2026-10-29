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


class RotateJDialog < JDialog
    attr_accessor :logUtil, :hashMap, :angleIncrementJTextField, :jButton1, :jLabel1, :jLabel2, :jPanel1, :totalRotationJTextField

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @hashMap = StdUtil.getInstance().createHashMap()
        @angleIncrementJTextField = nil
        @jButton1 = nil
        @jLabel1 = nil
        @jLabel2 = nil
        @jPanel1 = nil
        @totalRotationJTextField = nil
    end
    

    def initialize(parent, modal)
        super(parent, modal)
        initialize_fields
        self.initComponents()
    end
    

    def initComponents()
        @angleIncrementJTextField = JTextField.new()
        @jLabel1 = JLabel.new()
        @totalRotationJTextField = JTextField.new()
        @jLabel2 = JLabel.new()
        @jPanel1 = JPanel.new()
        @jButton1 = JButton.new()
        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE)
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
        end.new())
        jPanel1Layout = GroupLayout.new(@jPanel1)
        @jPanel1.setLayout(jPanel1Layout)
        jPanel1Layout.setHorizontalGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addGroup(jPanel1Layout.createSequentialGroup().addGap(62, 62, 62).addComponent(@jButton1).addContainerGap(62, 32767)))
        jPanel1Layout.setVerticalGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addComponent(@jButton1))
        layout = GroupLayout.new(getContentPane())
        getContentPane().setLayout(layout)
        layout.setHorizontalGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addGroup(layout.createSequentialGroup().addContainerGap().addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING).addComponent(@jLabel1).addComponent(@jLabel2)).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED).addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addComponent(@totalRotationJTextField, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, 31, 32767).addComponent(@angleIncrementJTextField, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, 31, javax.swing.GroupLayout.PREFERRED_SIZE)).addContainerGap()).addComponent(@jPanel1, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, 32767))
        layout.setVerticalGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addGroup(layout.createSequentialGroup().addContainerGap().addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE).addComponent(@angleIncrementJTextField, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE).addComponent(@jLabel1)).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE).addComponent(@totalRotationJTextField, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE).addComponent(@jLabel2)).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 16, 32767).addComponent(@jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE).addContainerGap()))
        pack()
    end
    

    def jButton1ActionPerformed(evt)
        begin
            @hashMap.put((0).to_s, (@angleIncrementJTextField.getText()).to_s)
            @hashMap.put((1).to_s, (@totalRotationJTextField.getText()).to_s)
            (self.getParent()).onHashMap(@hashMap)
            self.setVisible(false)
        rescue StandardError => e
            commonStrings = CommonStrings.getInstance()
            @logUtil.putF(commonStrings.EXCEPTION, self, "jButton1ActionPerformed")
        end
    end
    

    def self.main(args)
        java.awt.EventQueue.invokeLater(Class.new(ARunnable.is_a?(Class) ? ARunnable : Object) do
            include(ARunnable) unless ARunnable.is_a?(Class)
            

            def run()
                dialog = RotateJDialog.new(JFrame.new(), true)
                dialog.addWindowListener(Class.new(WindowAdapter.is_a?(Class) ? WindowAdapter : Object) do
                    include(WindowAdapter) unless WindowAdapter.is_a?(Class)
                    

                    def windowClosing(e)
                        exit(0)
                    end
                end.new())
                dialog.setVisible(true)
            end
        end.new())
    end
end

require "org/allbinary/thread/ARunnable"
require "java/util/HashMap"
require "org/allbinary/gui/dialog/HashMapJDialogListenerInterface"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/string/CommonStrings"
require "java/lang/System"

