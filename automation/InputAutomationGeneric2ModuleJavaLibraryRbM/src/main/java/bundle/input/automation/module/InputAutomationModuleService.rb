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

require "bundle/input/automation/module/InputAutomationModuleServiceInterface"

class InputAutomationModuleService
    include InputAutomationModuleServiceInterface
    attr_accessor :inputAutomationModuleInterfaceArray

    def initialize_fields
        @inputAutomationModuleInterfaceArray = nil
    end
    

    def initialize(inputAutomationModuleInterfaceArray)
        initialize_fields
        self.setInputAutomationModuleInterfaceArray(inputAutomationModuleInterfaceArray)
    end
    

    def getInputAutomationModuleInterfaceArray()
        return @inputAutomationModuleInterfaceArray
    end
    

    def setInputAutomationModuleInterfaceArray(inputAutomationModuleInterfaceArray)
        @inputAutomationModuleInterfaceArray = inputAutomationModuleInterfaceArray
    end
end

require "org/allbinary/input/automation/module/InputAutomationModuleFactoryInterface"

