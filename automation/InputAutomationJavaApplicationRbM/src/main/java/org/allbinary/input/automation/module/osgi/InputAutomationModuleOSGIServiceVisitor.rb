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

require "org/allbinary/osgi/OSGIServiceVisitorInterface"

class InputAutomationModuleOSGIServiceVisitor
    include OSGIServiceVisitorInterface
    attr_accessor :logUtil, :commonStrings

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
    end
    

    def initialize()
        initialize_fields
    end
    

    def visit(anyType)
        return self.visit(anyType)
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def visit(osgiServiceInterface)
        begin
            inputAutomationModuleService = osgiServiceInterface
            inputAutomationModuleInterfaceArray = inputAutomationModuleService.getInputAutomationModuleInterfaceArray()
            (0...inputAutomationModuleInterfaceArray.length).each do |index|
                InputAutomationJFrame.getInstance().onAdd(InputAutomationConfigurationUtil.getChangeEvent(inputAutomationModuleInterfaceArray[index]))
            end
            return true
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "visit", e)
            return false
        end
    end
end

require "bundle/input/automation/module/InputAutomationModuleService"
require "org/allbinary/input/automation/InputAutomationJFrame"
require "org/allbinary/input/automation/configuration/InputAutomationConfigurationUtil"
require "org/allbinary/input/automation/module/InputAutomationModuleFactoryInterface"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/osgi/OSGIServiceInterface"
require "org/allbinary/string/CommonStrings"

