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
# package org.allbinary.input.automation.module.generic.configuration.profile.actions


class GenericProfileActionJPanel < JPanel
    attr_accessor :logUtil, :genericProfileAction, :genericProfileActionScriptJPanel, :blankProfileActionScriptJPanel, :genericProfileActionScriptJScrollPane, :ifJLabel, :newAlwaysJButton, :newColorAtJButton, :newTimeIntervalJButton

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @genericProfileAction = nil
        @genericProfileActionScriptJPanel = nil
        @blankProfileActionScriptJPanel = nil
        @genericProfileActionScriptJScrollPane = nil
        @ifJLabel = nil
        @newAlwaysJButton = nil
        @newColorAtJButton = nil
        @newTimeIntervalJButton = nil
    end
    

    def initialize()
        super()
        initialize_fields
        self.initComponents()
    end
    

    def updateProfileActionUI()
        @blankProfileActionScriptJPanel.removeAll()
        genericProfileActionScriptJPanel = GenericProfileActionScriptJPanel.new()
        JTreeInterfaceFactory.getInstance().set(genericProfileActionScriptJPanel)
        self.setGenericProfileActionScriptJPanel(genericProfileActionScriptJPanel)
        self.getGenericProfileActionScriptJPanel().setGenericProfileActionScript(self.getGenericProfileAction().getGenericProfileActionScript())
        self.getGenericProfileActionScriptJPanel().updateJTree()
        layout = @blankProfileActionScriptJPanel.getLayout()
        layout.setHorizontalGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addGap(0, 395, 32767).addComponent(self.getGenericProfileActionScriptJPanel(), javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
        layout.setVerticalGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addGap(0, 256, 32767).addComponent(self.getGenericProfileActionScriptJPanel(), javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
        @logUtil.putF("Updated UI", self, "updateUI")
    end
    

    def getGenericProfileAction()
        return @genericProfileAction
    end
    

    def setGenericProfileAction(genericProfileAction)
        @genericProfileAction = genericProfileAction
    end
    

    def getGenericProfileActionScriptJPanel()
        return @genericProfileActionScriptJPanel
    end
    

    def setGenericProfileActionScriptJPanel(genericProfileActionScriptJPanel)
        @genericProfileActionScriptJPanel = genericProfileActionScriptJPanel
    end
    

    def initComponents()
        @genericProfileActionScriptJScrollPane = JScrollPane.new()
        @blankProfileActionScriptJPanel = JPanel.new()
        @ifJLabel = JLabel.new()
        @newColorAtJButton = JButton.new()
        @newTimeIntervalJButton = JButton.new()
        @newAlwaysJButton = JButton.new()
        setMinimumSize(Dimension.new(440, 275))
        setPreferredSize(Dimension.new(440, 275))
        @genericProfileActionScriptJScrollPane.setPreferredSize(Dimension.new(474, 270))
        @blankProfileActionScriptJPanel.setMinimumSize(Dimension.new(400, 200))
        blankProfileActionScriptJPanelLayout = GroupLayout.new(@blankProfileActionScriptJPanel)
        @blankProfileActionScriptJPanel.setLayout(blankProfileActionScriptJPanelLayout)
        blankProfileActionScriptJPanelLayout.setHorizontalGroup(blankProfileActionScriptJPanelLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addGap(0, 9996, 32767))
        blankProfileActionScriptJPanelLayout.setVerticalGroup(blankProfileActionScriptJPanelLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addGap(0, 9967, 32767))
        @genericProfileActionScriptJScrollPane.setViewportView(@blankProfileActionScriptJPanel)
        @ifJLabel.setText("Conditions:")
        @newColorAtJButton.setText("Color Range At")
        @newColorAtJButton.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                newColorAtJButtonActionPerformed(evt)
            end
        end.new())
        @newTimeIntervalJButton.setText("Time Interval")
        @newTimeIntervalJButton.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                newTimeIntervalJButtonActionPerformed(evt)
            end
        end.new())
        @newAlwaysJButton.setText("Always On/Off")
        @newAlwaysJButton.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                newAlwaysJButtonActionPerformed(evt)
            end
        end.new())
        layout = GroupLayout.new(self)
        self.setLayout(layout)
        layout.setHorizontalGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addGroup(layout.createSequentialGroup().addComponent(@ifJLabel).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(@newColorAtJButton).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(@newTimeIntervalJButton).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(@newAlwaysJButton).addContainerGap(61, 32767)).addComponent(@genericProfileActionScriptJScrollPane, javax.swing.GroupLayout.DEFAULT_SIZE, 440, 32767))
        layout.setVerticalGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addGroup(layout.createSequentialGroup().addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE).addComponent(@ifJLabel, javax.swing.GroupLayout.PREFERRED_SIZE, 14, javax.swing.GroupLayout.PREFERRED_SIZE).addComponent(@newColorAtJButton).addComponent(@newTimeIntervalJButton).addComponent(@newAlwaysJButton)).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(@genericProfileActionScriptJScrollPane, javax.swing.GroupLayout.DEFAULT_SIZE, 246, 32767)))
    end
    

    def newTimeIntervalJButtonActionPerformed(evt)
        @logUtil.putF("New Time Interval Action Condition", self, "newTimeIntervalJButtonActionPerformed")
        self.getGenericProfileAction().getGenericProfileActionScript().addCondition(TimeIntervalActionScriptCondition.new())
        self.updateProfileActionUI()
    end
    

    def newAlwaysJButtonActionPerformed(evt)
        @logUtil.putF("New EveryTime Action Condition", self, "newEveryTimeJButtonActionPerformed")
        self.getGenericProfileAction().getGenericProfileActionScript().addCondition(AlwaysActionScriptCondition.new())
        self.updateProfileActionUI()
    end
    

    def newColorAtJButtonActionPerformed(evt)
        @logUtil.putF("New Color At Action Condition", self, "newColorAtJButtonActionPerformed")
        self.getGenericProfileAction().getGenericProfileActionScript().addCondition(ColorAtActionScriptCondition.new())
        self.updateProfileActionUI()
    end
end

require "org/allbinary/input/automation/actions/script/JTreeInterfaceFactory"
require "org/allbinary/input/automation/actions/script/condition/AlwaysActionScriptCondition"
require "org/allbinary/input/automation/actions/script/condition/ColorAtActionScriptCondition"
require "org/allbinary/input/automation/actions/script/condition/ProfileActionScriptConditionInterface"
require "org/allbinary/input/automation/actions/script/condition/TimeIntervalActionScriptCondition"
require "org/allbinary/input/automation/module/generic/configuration/profile/actions/script/GenericProfileActionScriptJPanel"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/input/automation/module/generic/configuration/profile/actions/GenericProfileAction"

