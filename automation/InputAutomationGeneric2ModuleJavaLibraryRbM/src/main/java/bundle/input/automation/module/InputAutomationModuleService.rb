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
# package bundle.input.automation.module

require "java/lang/JavaOverload"
require "bundle/input/automation/module/InputAutomationModuleServiceInterface"

module ::Bundle; module Input; module Automation; module ModulePackage

class InputAutomationModuleService
    include InputAutomationModuleServiceInterface
    attr_accessor :inputAutomationModuleInterfaceArray

    def jfields_bundle_input_automation_module_InputAutomationModuleService
        @inputAutomationModuleInterfaceArray = nil unless instance_variable_defined?(:@inputAutomationModuleInterfaceArray)
    end
    

    def initialize(inputAutomationModuleInterfaceArray)
        jfields_bundle_input_automation_module_InputAutomationModuleService
        self.setInputAutomationModuleInterfaceArray(inputAutomationModuleInterfaceArray)
    end
    

    def getInputAutomationModuleInterfaceArray()
        return @inputAutomationModuleInterfaceArray
    end
    java_overload :getInputAutomationModuleInterfaceArray, 0
    

    def setInputAutomationModuleInterfaceArray(inputAutomationModuleInterfaceArray)
        @inputAutomationModuleInterfaceArray = inputAutomationModuleInterfaceArray
    end
    java_overload :setInputAutomationModuleInterfaceArray, 1
end

module ::Org; module Allbinary; module Input; module Automation; module ModulePackage; autoload :InputAutomationModuleFactoryInterface, "org/allbinary/input/automation/module/InputAutomationModuleFactoryInterface" unless const_defined?(:InputAutomationModuleFactoryInterface, false); end; end; end; end; end

end; end; end; end

