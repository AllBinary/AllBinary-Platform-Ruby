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
        InputAutomationServiceFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@inputAutomationServiceFactory) ? @@inputAutomationServiceFactory : nil
    end

    def self.inputAutomationServiceFactory=(value)
        InputAutomationServiceFactory.java_static_fields unless @java_static_fields_started
        @@inputAutomationServiceFactory = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@inputAutomationServiceFactory = InputAutomationServiceFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "InputAutomationServiceFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :Bundle, "org/osgi/framework/Bundle"
autoload :ServiceRegistration, "org/osgi/framework/ServiceRegistration"
autoload :InputAutomationJFrame, "org/allbinary/input/automation/InputAutomationJFrame"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"

begin
    InputAutomationServiceFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

