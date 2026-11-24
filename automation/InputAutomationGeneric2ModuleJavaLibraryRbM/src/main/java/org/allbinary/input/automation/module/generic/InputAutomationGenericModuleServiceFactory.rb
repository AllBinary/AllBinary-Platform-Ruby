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

require "java/lang/JavaOverload"
require "org/allbinary/input/automation/module/osgi/InputAutomationModuleServiceFactory"

module ::Org; module Allbinary; module Input; module Automation; module ModulePackage; module Generic

class InputAutomationGenericModuleServiceFactory < ::Org::Allbinary::Input::Automation::ModulePackage::Osgi::InputAutomationModuleServiceFactory
    attr_accessor :logUtil

    def jfields_org_allbinary_input_automation_module_generic_InputAutomationGenericModuleServiceFactory
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
    end
    

    def initialize()
        super()
        jfields_org_allbinary_input_automation_module_generic_InputAutomationGenericModuleServiceFactory
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

module ::Org; module Allbinary; module Input; module Automation; module ModulePackage; autoload :InputAutomationModuleFactoryInterface, "org/allbinary/input/automation/module/InputAutomationModuleFactoryInterface" unless const_defined?(:InputAutomationModuleFactoryInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
autoload :GenericModuleFactory, "org/allbinary/input/automation/module/generic/GenericModuleFactory" unless const_defined?(:GenericModuleFactory, false)

begin
    InputAutomationGenericModuleServiceFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end

