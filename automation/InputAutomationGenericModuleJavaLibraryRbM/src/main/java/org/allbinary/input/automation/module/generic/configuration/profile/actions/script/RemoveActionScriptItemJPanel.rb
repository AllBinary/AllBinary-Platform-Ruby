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


class RemoveActionScriptItemJPanel < Panel
    attr_accessor :logUtil, :genericProfileActionJPanel, :profileActionScriptConditionInterface, :removeJButton

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @genericProfileActionJPanel = nil
        @profileActionScriptConditionInterface = nil
        @removeJButton = nil
    end
    

    def initialize(genericProfileActionJPanel, profileActionScriptConditionInterface)
        super()
        initialize_fields
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
        end.new())
        add(@removeJButton)
    end
    

    def removeJButtonActionPerformed(evt)
        genericProfileAction = @genericProfileActionJPanel.getGenericProfileAction()
        if genericProfileAction == nil
            @logUtil.putF("GenericProfileAction was null", self, "removeJButtonActionPerformed")
            return
        end
        genericProfileAction.getGenericProfileActionScript().removeCondition(@profileActionScriptConditionInterface)
        @genericProfileActionJPanel.updateProfileActionUI()
    end
end

require "org/allbinary/input/automation/actions/script/condition/ProfileActionScriptConditionInterface"
require "org/allbinary/input/automation/module/generic/configuration/profile/actions/GenericProfileAction"
require "org/allbinary/input/automation/module/generic/configuration/profile/actions/GenericProfileActionJPanel"
require "org/allbinary/logic/communication/log/LogUtil"

