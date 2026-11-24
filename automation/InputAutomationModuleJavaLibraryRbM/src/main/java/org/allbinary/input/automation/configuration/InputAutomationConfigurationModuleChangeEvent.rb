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


module ::Org; module Allbinary; module Input; module Automation; module Configuration

class InputAutomationConfigurationModuleChangeEvent
    attr_accessor :inputAutomationModuleConfiguration

    def jfields_org_allbinary_input_automation_configuration_InputAutomationConfigurationModuleChangeEvent
        @inputAutomationModuleConfiguration = nil unless instance_variable_defined?(:@inputAutomationModuleConfiguration)
    end
    

    def initialize(inputAutomationModuleConfiguration)
        jfields_org_allbinary_input_automation_configuration_InputAutomationConfigurationModuleChangeEvent
        self.setInputAutomationModuleConfiguration(inputAutomationModuleConfiguration)
    end
    

    def getInputAutomationModuleConfiguration()
        return @inputAutomationModuleConfiguration
    end
    

    def setInputAutomationModuleConfiguration(inputAutomationModuleConfiguration)
        @inputAutomationModuleConfiguration = inputAutomationModuleConfiguration
    end
end

module ::Org; module Allbinary; module Input; module Automation; module ModulePackage; module Configuration; autoload :InputAutomationModuleConfiguration, "org/allbinary/input/automation/module/configuration/InputAutomationModuleConfiguration" unless const_defined?(:InputAutomationModuleConfiguration, false); end; end; end; end; end; end

end; end; end; end; end

