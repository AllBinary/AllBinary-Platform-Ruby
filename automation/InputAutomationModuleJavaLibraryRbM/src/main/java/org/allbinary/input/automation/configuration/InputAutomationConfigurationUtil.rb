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
# package org.allbinary.input.automation.configuration


class InputAutomationConfigurationUtil
    

    def initialize()
    end
    

    # throws Exception
    def self.getChangeEvent(inputAutomationModuleInterface)
        inputAutomationModuleConfiguration = InputAutomationModuleConfiguration.new(inputAutomationModuleInterface)
        inputAutomationConfigurationModuleChangeEvent = InputAutomationConfigurationModuleChangeEvent.new(inputAutomationModuleConfiguration)
        return inputAutomationConfigurationModuleChangeEvent
    end
end

autoload :InputAutomationModuleFactoryInterface, "org/allbinary/input/automation/module/InputAutomationModuleFactoryInterface"
autoload :InputAutomationModuleConfiguration, "org/allbinary/input/automation/module/configuration/InputAutomationModuleConfiguration"
autoload :InputAutomationConfigurationModuleChangeEvent, "org/allbinary/input/automation/configuration/InputAutomationConfigurationModuleChangeEvent"

