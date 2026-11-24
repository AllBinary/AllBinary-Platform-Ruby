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

class InputAutomationConfigurationUtil
    

    def initialize()
    end
    

    # throws Exception
    def self.getChangeEvent(inputAutomationModuleInterface)
        inputAutomationModuleConfiguration = ::Org::Allbinary::Input::Automation::ModulePackage::Configuration::InputAutomationModuleConfiguration.new(inputAutomationModuleInterface)
        inputAutomationConfigurationModuleChangeEvent = InputAutomationConfigurationModuleChangeEvent.new(inputAutomationModuleConfiguration)
        return inputAutomationConfigurationModuleChangeEvent
    end
end

module ::Org; module Allbinary; module Input; module Automation; module ModulePackage; autoload :InputAutomationModuleFactoryInterface, "org/allbinary/input/automation/module/InputAutomationModuleFactoryInterface" unless const_defined?(:InputAutomationModuleFactoryInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Input; module Automation; module ModulePackage; module Configuration; autoload :InputAutomationModuleConfiguration, "org/allbinary/input/automation/module/configuration/InputAutomationModuleConfiguration" unless const_defined?(:InputAutomationModuleConfiguration, false); end; end; end; end; end; end
autoload :InputAutomationConfigurationModuleChangeEvent, "org/allbinary/input/automation/configuration/InputAutomationConfigurationModuleChangeEvent" unless const_defined?(:InputAutomationConfigurationModuleChangeEvent, false)

end; end; end; end; end

