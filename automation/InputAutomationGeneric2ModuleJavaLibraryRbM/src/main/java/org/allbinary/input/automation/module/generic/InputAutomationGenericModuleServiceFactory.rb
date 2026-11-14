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
        InputAutomationGenericModuleServiceFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@inputAutomationGenericModuleServiceFactory) ? @@inputAutomationGenericModuleServiceFactory : nil
    end

    def self.inputAutomationGenericModuleServiceFactory=(value)
        InputAutomationGenericModuleServiceFactory.java_static_fields unless @java_static_fields_started
        @@inputAutomationGenericModuleServiceFactory = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@inputAutomationGenericModuleServiceFactory = InputAutomationGenericModuleServiceFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "InputAutomationGenericModuleServiceFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :InputAutomationModuleFactoryInterface, "org/allbinary/input/automation/module/InputAutomationModuleFactoryInterface"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :GenericModuleFactory, "org/allbinary/input/automation/module/generic/GenericModuleFactory"

begin
    InputAutomationGenericModuleServiceFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

