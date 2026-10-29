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
# package bundle.input.automation.module.generic

require "org/allbinary/input/automation/module/osgi/InputAutomationModuleBundleActivator"

class InputAutomationGenericModuleBundleActivator < InputAutomationModuleBundleActivator
    

    def initialize()
        super()
    end
    

    # throws Exception
    def init()
        inputAutomationGenericModuleServiceFactory = InputAutomationGenericModuleServiceFactory.getInstance()
        self.setInputAutomationModuleInterface(inputAutomationGenericModuleServiceFactory.getInputAutomationModuleInterfaceArray())
        self.setServiceFactory(inputAutomationGenericModuleServiceFactory)
    end
end

require "org/allbinary/input/automation/module/generic/InputAutomationGenericModuleServiceFactory"

