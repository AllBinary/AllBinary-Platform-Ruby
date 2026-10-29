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
# package org.allbinary.input.automation.module.generic

require "org/allbinary/input/automation/module/osgi/InputAutomationModuleServiceFactory"

class InputAutomationGenericModuleServiceFactory < InputAutomationModuleServiceFactory
    attr_accessor :logUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
    end
    

    def initialize()
        super()
        initialize_fields
        begin
            inputAutomationModuleInterfaceArray = Array.new(1, nil)
            inputAutomationModuleInterfaceArray[0] = GenericModuleFactory.new()
            self.setInputAutomationModuleInterfaceArray(inputAutomationModuleInterfaceArray)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.CONSTRUCTOR, e)
        end
    end
    

    def self.getInstance()
        return InputAutomationGenericModuleServiceFactory.inputAutomationGenericModuleServiceFactory
    end

    def self.inputAutomationGenericModuleServiceFactory()
        return defined?(@@inputAutomationGenericModuleServiceFactory) ? @@inputAutomationGenericModuleServiceFactory : nil
    end

    def self.inputAutomationGenericModuleServiceFactory=(value)
        @@inputAutomationGenericModuleServiceFactory = value
    end
end

require "org/allbinary/input/automation/module/InputAutomationModuleFactoryInterface"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/input/automation/module/generic/GenericModuleFactory"

class InputAutomationGenericModuleServiceFactory
    @@inputAutomationGenericModuleServiceFactory = InputAutomationGenericModuleServiceFactory.new()
end

