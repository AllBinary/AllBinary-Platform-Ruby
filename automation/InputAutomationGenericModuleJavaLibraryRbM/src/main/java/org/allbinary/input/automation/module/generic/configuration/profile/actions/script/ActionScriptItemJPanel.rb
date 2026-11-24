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

require "java/lang/JavaOverload"
# require "java/awt/Dimension"
# require "java/awt/GridLayout"
# require "javax/swing/GroupLayout"
# require "javax/swing/JPanel"
# require "javax/swing/LayoutStyle"

module ::Org; module Allbinary; module Input; module Automation; module ModulePackage; module Generic; module Configuration; module Profile; module Actions; module Script

class ActionScriptItemJPanel < JPanel
    attr_accessor :childActionScriptConditionJPanel, :newActionScriptConditionJPanel, :newActionScriptInputJPanel, :removeJPanel, :scriptItemJPanel

    def jfields_org_allbinary_input_automation_module_generic_configuration_profile_actions_script_ActionScriptItemJPanel
        @childActionScriptConditionJPanel = nil unless instance_variable_defined?(:@childActionScriptConditionJPanel)
        @newActionScriptConditionJPanel = nil unless instance_variable_defined?(:@newActionScriptConditionJPanel)
        @newActionScriptInputJPanel = nil unless instance_variable_defined?(:@newActionScriptInputJPanel)
        @removeJPanel = nil unless instance_variable_defined?(:@removeJPanel)
        @scriptItemJPanel = nil unless instance_variable_defined?(:@scriptItemJPanel)
    end
    

    def initialize()
        super()
        jfields_org_allbinary_input_automation_module_generic_configuration_profile_actions_script_ActionScriptItemJPanel
        self.initComponents()
    end
    

    def getNewActionScriptInputJPanel()
        return @newActionScriptInputJPanel
    end
    java_overload :getNewActionScriptInputJPanel, 0
    

    def setNewActionScriptInputJPanel(newActionScriptInputJPanel)
        @newActionScriptInputJPanel = newActionScriptInputJPanel
    end
    java_overload :setNewActionScriptInputJPanel, 1
    

    def getRemoveJPanel()
        return @removeJPanel
    end
    java_overload :getRemoveJPanel, 0
    

    def setRemoveJPanel(removeJPanel)
        @removeJPanel = removeJPanel
    end
    java_overload :setRemoveJPanel, 1
    

    def getScriptItemJPanel()
        return @scriptItemJPanel
    end
    java_overload :getScriptItemJPanel, 0
    

    def setScriptItemJPanel(scriptItemJPanel)
        @scriptItemJPanel = scriptItemJPanel
    end
    java_overload :setScriptItemJPanel, 1
    

    def getNewActionScriptConditionJPanel()
        return @newActionScriptConditionJPanel
    end
    java_overload :getNewActionScriptConditionJPanel, 0
    

    def setNewActionScriptConditionJPanel(newActionScriptConditionJPanel)
        @newActionScriptConditionJPanel = newActionScriptConditionJPanel
    end
    java_overload :setNewActionScriptConditionJPanel, 1
    

    def getChildActionScriptConditionJPanel()
        return @childActionScriptConditionJPanel
    end
    java_overload :getChildActionScriptConditionJPanel, 0
    

    def setChildActionScriptConditionJPanel(childActionScriptConditionJPanel)
        @childActionScriptConditionJPanel = childActionScriptConditionJPanel
    end
    java_overload :setChildActionScriptConditionJPanel, 1
    

    def initComponents()
        @newActionScriptInputJPanel = JPanel.new()
        @childActionScriptConditionJPanel = JPanel.new()
        @newActionScriptConditionJPanel = JPanel.new()
        @scriptItemJPanel = JPanel.new()
        @removeJPanel = JPanel.new()
        @newActionScriptInputJPanel.setLayout(GridLayout.new(1, 0))
        childActionScriptConditionJPanelLayout = GroupLayout.new(@childActionScriptConditionJPanel)
        @childActionScriptConditionJPanel.setLayout(childActionScriptConditionJPanelLayout)
        childActionScriptConditionJPanelLayout.setHorizontalGroup(childActionScriptConditionJPanelLayout.createParallelGroup(GroupLayout::Alignment.LEADING).addGap(0, 229, 32767))
        childActionScriptConditionJPanelLayout.setVerticalGroup(childActionScriptConditionJPanelLayout.createParallelGroup(GroupLayout::Alignment.LEADING).addGap(0, 8, 32767))
        @newActionScriptConditionJPanel.setLayout(GridLayout.new(1, 0))
        @scriptItemJPanel.setLayout(GridLayout.new(1, 1))
        @removeJPanel.setLayout(GridLayout.new(1, 1))
        @removeJPanel.setMinimumSize(Dimension.new(30, 20))
        layout = GroupLayout.new(self)
        self.setLayout(layout)
        layout.setHorizontalGroup(layout.createParallelGroup(GroupLayout::Alignment.LEADING).addGroup(layout.createSequentialGroup().addComponent(@scriptItemJPanel, GroupLayout::PREFERRED_SIZE, 167, GroupLayout::PREFERRED_SIZE).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED).addComponent(@removeJPanel, GroupLayout::DEFAULT_SIZE, 56, 32767)).addComponent(@newActionScriptInputJPanel, GroupLayout::DEFAULT_SIZE, 229, 32767).addComponent(@newActionScriptConditionJPanel, GroupLayout::DEFAULT_SIZE, 229, 32767).addComponent(@childActionScriptConditionJPanel, GroupLayout::DEFAULT_SIZE, GroupLayout::DEFAULT_SIZE, 32767))
        layout.setVerticalGroup(layout.createParallelGroup(GroupLayout::Alignment.LEADING).addGroup(layout.createSequentialGroup().addGroup(layout.createParallelGroup(GroupLayout::Alignment.LEADING).addComponent(@scriptItemJPanel, GroupLayout::DEFAULT_SIZE, 31, 32767).addComponent(@removeJPanel, GroupLayout::Alignment.TRAILING, GroupLayout::DEFAULT_SIZE, 31, 32767)).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED).addComponent(@childActionScriptConditionJPanel, GroupLayout::PREFERRED_SIZE, GroupLayout::DEFAULT_SIZE, GroupLayout::PREFERRED_SIZE).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED).addComponent(@newActionScriptConditionJPanel, GroupLayout::PREFERRED_SIZE, 28, GroupLayout::PREFERRED_SIZE).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED).addComponent(@newActionScriptInputJPanel, GroupLayout::PREFERRED_SIZE, 30, GroupLayout::PREFERRED_SIZE)))
    end
    java_overload :initComponents, 0
end

end; end; end; end; end; end; end; end; end; end

