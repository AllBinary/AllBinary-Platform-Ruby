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


class InputAutomationConfigurationModuleChangeEvent
    attr_accessor :inputAutomationModuleConfiguration

    def initialize_fields
        @inputAutomationModuleConfiguration = nil
    end
    

    def initialize(inputAutomationModuleConfiguration)
        initialize_fields
        self.setInputAutomationModuleConfiguration(inputAutomationModuleConfiguration)
    end
    

    def getInputAutomationModuleConfiguration()
        return @inputAutomationModuleConfiguration
    end
    

    def setInputAutomationModuleConfiguration(inputAutomationModuleConfiguration)
        @inputAutomationModuleConfiguration = inputAutomationModuleConfiguration
    end
end

require "org/allbinary/input/automation/module/configuration/InputAutomationModuleConfiguration"

