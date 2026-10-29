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
# package org.allbinary.input.automation.osgi

require "org/osgi/framework/ServiceFactory"

class InputAutomationServiceFactory
    include ServiceFactory
    attr_accessor :logUtil, :commonStrings

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
    end
    

    def initialize()
        initialize_fields
    end
    

    def self.getInstance()
        return InputAutomationServiceFactory.inputAutomationServiceFactory
    end
    

    def getService(bundle, registration)
        @logUtil.putF(@commonStrings.START, self, "getService")
        return InputAutomationJFrame.getInstance()
    end
    

    def ungetService(bundle, registration, service)
    end

    def self.inputAutomationServiceFactory()
        return defined?(@@inputAutomationServiceFactory) ? @@inputAutomationServiceFactory : nil
    end

    def self.inputAutomationServiceFactory=(value)
        @@inputAutomationServiceFactory = value
    end
end

require "org/osgi/framework/Bundle"
require "org/osgi/framework/ServiceRegistration"
require "org/allbinary/input/automation/InputAutomationJFrame"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/string/CommonStrings"

class InputAutomationServiceFactory
    @@inputAutomationServiceFactory = InputAutomationServiceFactory.new()
end

