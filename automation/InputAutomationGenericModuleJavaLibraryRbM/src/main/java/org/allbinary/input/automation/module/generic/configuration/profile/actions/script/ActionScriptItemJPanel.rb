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
# package org.allbinary.input.automation.module.generic.configuration.profile.actions.script


class ActionScriptItemJPanel < JPanel
    attr_accessor :childActionScriptConditionJPanel, :newActionScriptConditionJPanel, :newActionScriptInputJPanel, :removeJPanel, :scriptItemJPanel

    def initialize_fields
        @childActionScriptConditionJPanel = nil
        @newActionScriptConditionJPanel = nil
        @newActionScriptInputJPanel = nil
        @removeJPanel = nil
        @scriptItemJPanel = nil
    end
    

    def initialize()
        super()
        initialize_fields
        self.initComponents()
    end
    

    def getNewActionScriptInputJPanel()
        return @newActionScriptInputJPanel
    end
    

    def setNewActionScriptInputJPanel(newActionScriptInputJPanel)
        @newActionScriptInputJPanel = newActionScriptInputJPanel
    end
    

    def getRemoveJPanel()
        return @removeJPanel
    end
    

    def setRemoveJPanel(removeJPanel)
        @removeJPanel = removeJPanel
    end
    

    def getScriptItemJPanel()
        return @scriptItemJPanel
    end
    

    def setScriptItemJPanel(scriptItemJPanel)
        @scriptItemJPanel = scriptItemJPanel
    end
    

    def getNewActionScriptConditionJPanel()
        return @newActionScriptConditionJPanel
    end
    

    def setNewActionScriptConditionJPanel(newActionScriptConditionJPanel)
        @newActionScriptConditionJPanel = newActionScriptConditionJPanel
    end
    

    def getChildActionScriptConditionJPanel()
        return @childActionScriptConditionJPanel
    end
    

    def setChildActionScriptConditionJPanel(childActionScriptConditionJPanel)
        @childActionScriptConditionJPanel = childActionScriptConditionJPanel
    end
    

    def initComponents()
        @newActionScriptInputJPanel = JPanel.new()
        @childActionScriptConditionJPanel = JPanel.new()
        @newActionScriptConditionJPanel = JPanel.new()
        @scriptItemJPanel = JPanel.new()
        @removeJPanel = JPanel.new()
        @newActionScriptInputJPanel.setLayout(GridLayout.new(1, 0))
        childActionScriptConditionJPanelLayout = GroupLayout.new(@childActionScriptConditionJPanel)
        @childActionScriptConditionJPanel.setLayout(childActionScriptConditionJPanelLayout)
        childActionScriptConditionJPanelLayout.setHorizontalGroup(childActionScriptConditionJPanelLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addGap(0, 229, 32767))
        childActionScriptConditionJPanelLayout.setVerticalGroup(childActionScriptConditionJPanelLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addGap(0, 8, 32767))
        @newActionScriptConditionJPanel.setLayout(GridLayout.new(1, 0))
        @scriptItemJPanel.setLayout(GridLayout.new(1, 1))
        @removeJPanel.setLayout(GridLayout.new(1, 1))
        @removeJPanel.setMinimumSize(Dimension.new(30, 20))
        layout = GroupLayout.new(self)
        self.setLayout(layout)
        layout.setHorizontalGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addGroup(layout.createSequentialGroup().addComponent(@scriptItemJPanel, javax.swing.GroupLayout.PREFERRED_SIZE, 167, javax.swing.GroupLayout.PREFERRED_SIZE).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(@removeJPanel, javax.swing.GroupLayout.DEFAULT_SIZE, 56, 32767)).addComponent(@newActionScriptInputJPanel, javax.swing.GroupLayout.DEFAULT_SIZE, 229, 32767).addComponent(@newActionScriptConditionJPanel, javax.swing.GroupLayout.DEFAULT_SIZE, 229, 32767).addComponent(@childActionScriptConditionJPanel, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, 32767))
        layout.setVerticalGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addGroup(layout.createSequentialGroup().addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addComponent(@scriptItemJPanel, javax.swing.GroupLayout.DEFAULT_SIZE, 31, 32767).addComponent(@removeJPanel, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, 31, 32767)).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(@childActionScriptConditionJPanel, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(@newActionScriptConditionJPanel, javax.swing.GroupLayout.PREFERRED_SIZE, 28, javax.swing.GroupLayout.PREFERRED_SIZE).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(@newActionScriptInputJPanel, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)))
    end
end

