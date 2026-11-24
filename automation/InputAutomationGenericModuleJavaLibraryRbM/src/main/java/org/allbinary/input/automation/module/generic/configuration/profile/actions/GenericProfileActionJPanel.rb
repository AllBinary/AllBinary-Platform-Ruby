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

require "java/lang/JavaOverload"
# require "java/awt/Dimension"
# require "java/awt/event/ActionEvent"
# require "java/awt/event/ActionListener"
# require "javax/swing/GroupLayout"
# require "javax/swing/JButton"
# require "javax/swing/JLabel"
# require "javax/swing/JPanel"
# require "javax/swing/JScrollPane"
# require "javax/swing/LayoutStyle"

module ::Org; module Allbinary; module Input; module Automation; module ModulePackage; module Generic; module Configuration; module Profile; module Actions

class GenericProfileActionJPanel < JPanel
    attr_accessor :logUtil, :genericProfileAction, :genericProfileActionScriptJPanel, :blankProfileActionScriptJPanel, :genericProfileActionScriptJScrollPane, :ifJLabel, :newAlwaysJButton, :newColorAtJButton, :newTimeIntervalJButton

    def jfields_org_allbinary_input_automation_module_generic_configuration_profile_actions_GenericProfileActionJPanel
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @genericProfileAction = nil unless instance_variable_defined?(:@genericProfileAction)
        @genericProfileActionScriptJPanel = nil unless instance_variable_defined?(:@genericProfileActionScriptJPanel)
        @blankProfileActionScriptJPanel = nil unless instance_variable_defined?(:@blankProfileActionScriptJPanel)
        @genericProfileActionScriptJScrollPane = nil unless instance_variable_defined?(:@genericProfileActionScriptJScrollPane)
        @ifJLabel = nil unless instance_variable_defined?(:@ifJLabel)
        @newAlwaysJButton = nil unless instance_variable_defined?(:@newAlwaysJButton)
        @newColorAtJButton = nil unless instance_variable_defined?(:@newColorAtJButton)
        @newTimeIntervalJButton = nil unless instance_variable_defined?(:@newTimeIntervalJButton)
    end
    

    def initialize()
        super()
        jfields_org_allbinary_input_automation_module_generic_configuration_profile_actions_GenericProfileActionJPanel
        self.initComponents()
    end
    

    def updateProfileActionUI()
        @blankProfileActionScriptJPanel.removeAll()
        genericProfileActionScriptJPanel = ::Org::Allbinary::Input::Automation::ModulePackage::Generic::Configuration::Profile::Actions::Script::GenericProfileActionScriptJPanel.new()
        ::Org::Allbinary::Input::Automation::Actions::Script::JTreeInterfaceFactory.getInstance().set(genericProfileActionScriptJPanel)
        self.setGenericProfileActionScriptJPanel(genericProfileActionScriptJPanel)
        self.getGenericProfileActionScriptJPanel().setGenericProfileActionScript(self.getGenericProfileAction().getGenericProfileActionScript())
        self.getGenericProfileActionScriptJPanel().updateJTree()
        layout = @blankProfileActionScriptJPanel.getLayout()
        layout.setHorizontalGroup(layout.createParallelGroup(GroupLayout::Alignment.LEADING).addGap(0, 395, 32767).addComponent(self.getGenericProfileActionScriptJPanel(), GroupLayout::PREFERRED_SIZE, GroupLayout::DEFAULT_SIZE, GroupLayout::PREFERRED_SIZE))
        layout.setVerticalGroup(layout.createParallelGroup(GroupLayout::Alignment.LEADING).addGap(0, 256, 32767).addComponent(self.getGenericProfileActionScriptJPanel(), GroupLayout::PREFERRED_SIZE, GroupLayout::DEFAULT_SIZE, GroupLayout::PREFERRED_SIZE))
        @logUtil.putF("Updated UI", self, "updateUI")
    end
    java_overload :updateProfileActionUI, 0
    

    def getGenericProfileAction()
        return @genericProfileAction
    end
    java_overload :getGenericProfileAction, 0
    

    def setGenericProfileAction(genericProfileAction)
        @genericProfileAction = genericProfileAction
    end
    java_overload :setGenericProfileAction, 1
    

    def getGenericProfileActionScriptJPanel()
        return @genericProfileActionScriptJPanel
    end
    java_overload :getGenericProfileActionScriptJPanel, 0
    

    def setGenericProfileActionScriptJPanel(genericProfileActionScriptJPanel)
        @genericProfileActionScriptJPanel = genericProfileActionScriptJPanel
    end
    java_overload :setGenericProfileActionScriptJPanel, 1
    

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
        blankProfileActionScriptJPanelLayout.setHorizontalGroup(blankProfileActionScriptJPanelLayout.createParallelGroup(GroupLayout::Alignment.LEADING).addGap(0, 9996, 32767))
        blankProfileActionScriptJPanelLayout.setVerticalGroup(blankProfileActionScriptJPanelLayout.createParallelGroup(GroupLayout::Alignment.LEADING).addGap(0, 9967, 32767))
        @genericProfileActionScriptJScrollPane.setViewportView(@blankProfileActionScriptJPanel)
        @ifJLabel.setText("Conditions:")
        @newColorAtJButton.setText("Color Range At")
        @newColorAtJButton.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                newColorAtJButtonActionPerformed(evt)
            end
            java_overload :actionPerformed, 1
        end.new())
        @newTimeIntervalJButton.setText("Time Interval")
        @newTimeIntervalJButton.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                newTimeIntervalJButtonActionPerformed(evt)
            end
            java_overload :actionPerformed, 1
        end.new())
        @newAlwaysJButton.setText("Always On/Off")
        @newAlwaysJButton.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                newAlwaysJButtonActionPerformed(evt)
            end
            java_overload :actionPerformed, 1
        end.new())
        layout = GroupLayout.new(self)
        self.setLayout(layout)
        layout.setHorizontalGroup(layout.createParallelGroup(GroupLayout::Alignment.LEADING).addGroup(layout.createSequentialGroup().addComponent(@ifJLabel).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED).addComponent(@newColorAtJButton).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED).addComponent(@newTimeIntervalJButton).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED).addComponent(@newAlwaysJButton).addContainerGap(61, 32767)).addComponent(@genericProfileActionScriptJScrollPane, GroupLayout::DEFAULT_SIZE, 440, 32767))
        layout.setVerticalGroup(layout.createParallelGroup(GroupLayout::Alignment.LEADING).addGroup(layout.createSequentialGroup().addGroup(layout.createParallelGroup(GroupLayout::Alignment.BASELINE).addComponent(@ifJLabel, GroupLayout::PREFERRED_SIZE, 14, GroupLayout::PREFERRED_SIZE).addComponent(@newColorAtJButton).addComponent(@newTimeIntervalJButton).addComponent(@newAlwaysJButton)).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED).addComponent(@genericProfileActionScriptJScrollPane, GroupLayout::DEFAULT_SIZE, 246, 32767)))
    end
    java_overload :initComponents, 0
    

    def newTimeIntervalJButtonActionPerformed(evt)
        @logUtil.putF("New Time Interval Action Condition", self, "newTimeIntervalJButtonActionPerformed")
        self.getGenericProfileAction().getGenericProfileActionScript().addCondition(::Org::Allbinary::Input::Automation::Actions::Script::Condition::TimeIntervalActionScriptCondition.new())
        self.updateProfileActionUI()
    end
    java_overload :newTimeIntervalJButtonActionPerformed, 1
    

    def newAlwaysJButtonActionPerformed(evt)
        @logUtil.putF("New EveryTime Action Condition", self, "newEveryTimeJButtonActionPerformed")
        self.getGenericProfileAction().getGenericProfileActionScript().addCondition(::Org::Allbinary::Input::Automation::Actions::Script::Condition::AlwaysActionScriptCondition.new())
        self.updateProfileActionUI()
    end
    java_overload :newAlwaysJButtonActionPerformed, 1
    

    def newColorAtJButtonActionPerformed(evt)
        @logUtil.putF("New Color At Action Condition", self, "newColorAtJButtonActionPerformed")
        self.getGenericProfileAction().getGenericProfileActionScript().addCondition(::Org::Allbinary::Input::Automation::Actions::Script::Condition::ColorAtActionScriptCondition.new())
        self.updateProfileActionUI()
    end
    java_overload :newColorAtJButtonActionPerformed, 1
end

module ::Org; module Allbinary; module Input; module Automation; module Actions; module Script; autoload :JTreeInterfaceFactory, "org/allbinary/input/automation/actions/script/JTreeInterfaceFactory" unless const_defined?(:JTreeInterfaceFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Input; module Automation; module Actions; module Script; module Condition; autoload :AlwaysActionScriptCondition, "org/allbinary/input/automation/actions/script/condition/AlwaysActionScriptCondition" unless const_defined?(:AlwaysActionScriptCondition, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Input; module Automation; module Actions; module Script; module Condition; autoload :ColorAtActionScriptCondition, "org/allbinary/input/automation/actions/script/condition/ColorAtActionScriptCondition" unless const_defined?(:ColorAtActionScriptCondition, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Input; module Automation; module Actions; module Script; module Condition; autoload :ProfileActionScriptConditionInterface, "org/allbinary/input/automation/actions/script/condition/ProfileActionScriptConditionInterface" unless const_defined?(:ProfileActionScriptConditionInterface, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Input; module Automation; module Actions; module Script; module Condition; autoload :TimeIntervalActionScriptCondition, "org/allbinary/input/automation/actions/script/condition/TimeIntervalActionScriptCondition" unless const_defined?(:TimeIntervalActionScriptCondition, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Input; module Automation; module ModulePackage; module Generic; module Configuration; module Profile; module Actions; module Script; autoload :GenericProfileActionScriptJPanel, "org/allbinary/input/automation/module/generic/configuration/profile/actions/script/GenericProfileActionScriptJPanel" unless const_defined?(:GenericProfileActionScriptJPanel, false); end; end; end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
autoload :GenericProfileAction, "org/allbinary/input/automation/module/generic/configuration/profile/actions/GenericProfileAction" unless const_defined?(:GenericProfileAction, false)

end; end; end; end; end; end; end; end; end

