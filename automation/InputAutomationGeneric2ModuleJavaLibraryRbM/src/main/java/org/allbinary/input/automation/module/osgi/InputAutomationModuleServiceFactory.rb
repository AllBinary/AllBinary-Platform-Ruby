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
# package org.allbinary.input.automation.module.osgi

require "org/osgi/framework/ServiceFactory"

class InputAutomationModuleServiceFactory
    include ServiceFactory
    attr_accessor :logUtil, :commonStrings, :inputAutomationModuleInterfaceArray

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @inputAutomationModuleInterfaceArray = nil
    end
    

    def initialize()
        initialize_fields
    end
    

    def getService(bundle, registration)
        @logUtil.putF(@commonStrings.START, self, "getService")
        return InputAutomationModuleService.new(self.getInputAutomationModuleInterfaceArray())
    end
    

    def ungetService(bundle, registration, service)
    end
    

    def getInputAutomationModuleInterfaceArray()
        return @inputAutomationModuleInterfaceArray
    end
    

    def setInputAutomationModuleInterfaceArray(inputAutomationModuleInterfaceArray)
        @inputAutomationModuleInterfaceArray = inputAutomationModuleInterfaceArray
    end
end

require "org/osgi/framework/Bundle"
require "org/osgi/framework/ServiceRegistration"
require "bundle/input/automation/module/InputAutomationModuleService"
require "org/allbinary/input/automation/module/InputAutomationModuleFactoryInterface"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/string/CommonStrings"

