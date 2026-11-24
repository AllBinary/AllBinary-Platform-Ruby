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
# require "java/awt/GridLayout"
# require "java/awt/Panel"
# require "java/awt/event/ActionEvent"
# require "java/awt/event/ActionListener"
# require "javax/swing/JButton"

module ::Org; module Allbinary; module Input; module Automation; module ModulePackage; module Generic; module Configuration; module Profile; module Actions; module Script

class RemoveActionScriptItemJPanel < Panel
    attr_accessor :logUtil, :genericProfileActionJPanel, :profileActionScriptConditionInterface, :removeJButton

    def jfields_org_allbinary_input_automation_module_generic_configuration_profile_actions_script_RemoveActionScriptItemJPanel
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @genericProfileActionJPanel = nil unless instance_variable_defined?(:@genericProfileActionJPanel)
        @profileActionScriptConditionInterface = nil unless instance_variable_defined?(:@profileActionScriptConditionInterface)
        @removeJButton = nil unless instance_variable_defined?(:@removeJButton)
    end
    

    def initialize(genericProfileActionJPanel, profileActionScriptConditionInterface)
        super()
        jfields_org_allbinary_input_automation_module_generic_configuration_profile_actions_script_RemoveActionScriptItemJPanel
        self.initComponents()
        @genericProfileActionJPanel = genericProfileActionJPanel
        @profileActionScriptConditionInterface = profileActionScriptConditionInterface
    end
    

    def initComponents()
        @removeJButton = JButton.new()
        setLayout(GridLayout.new())
        @removeJButton.setText("Remove")
        @removeJButton.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                removeJButtonActionPerformed(evt)
            end
            java_overload :actionPerformed, 1
        end.new())
        add(@removeJButton)
    end
    java_overload :initComponents, 0
    

    def removeJButtonActionPerformed(evt)
        genericProfileAction = @genericProfileActionJPanel.getGenericProfileAction()
        if genericProfileAction == nil
            @logUtil.putF("GenericProfileAction was null", self, "removeJButtonActionPerformed")
            return
        end
        genericProfileAction.getGenericProfileActionScript().removeCondition(@profileActionScriptConditionInterface)
        @genericProfileActionJPanel.updateProfileActionUI()
    end
    java_overload :removeJButtonActionPerformed, 1
end

module ::Org; module Allbinary; module Input; module Automation; module Actions; module Script; module Condition; autoload :ProfileActionScriptConditionInterface, "org/allbinary/input/automation/actions/script/condition/ProfileActionScriptConditionInterface" unless const_defined?(:ProfileActionScriptConditionInterface, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Input; module Automation; module ModulePackage; module Generic; module Configuration; module Profile; module Actions; autoload :GenericProfileAction, "org/allbinary/input/automation/module/generic/configuration/profile/actions/GenericProfileAction" unless const_defined?(:GenericProfileAction, false); end; end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Input; module Automation; module ModulePackage; module Generic; module Configuration; module Profile; module Actions; autoload :GenericProfileActionJPanel, "org/allbinary/input/automation/module/generic/configuration/profile/actions/GenericProfileActionJPanel" unless const_defined?(:GenericProfileActionJPanel, false); end; end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end

end; end; end; end; end; end; end; end; end; end

