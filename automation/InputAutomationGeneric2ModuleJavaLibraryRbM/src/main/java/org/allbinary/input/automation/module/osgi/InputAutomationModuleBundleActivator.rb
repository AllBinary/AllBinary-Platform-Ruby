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

require "java/lang/JavaOverload"
require "java/lang/JavaClass"
require "org/osgi/framework/BundleActivator"

module ::Org; module Allbinary; module Input; module Automation; module ModulePackage; module Osgi

class InputAutomationModuleBundleActivator
    include ::Org::Osgi::Framework::BundleActivator
    attr_accessor :logUtil, :commonStrings, :inputAutomationModuleInterface, :serviceFactory

    def jfields_org_allbinary_input_automation_module_osgi_InputAutomationModuleBundleActivator
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @inputAutomationModuleInterface = nil unless instance_variable_defined?(:@inputAutomationModuleInterface)
        @serviceFactory = nil unless instance_variable_defined?(:@serviceFactory)
    end
    

    def initialize()
        jfields_org_allbinary_input_automation_module_osgi_InputAutomationModuleBundleActivator
        self.init()
    end
    

    # throws Exception
    def init()
        raise RuntimeError.new()
    end
    java_overload :init, 0
    

    # throws Exception
    def getInputAutomationConfigurationModuleChangeListener(context)
        serviceReference = context.getServiceReference(::Bundle::Input::Automation::ModulePackage::Configuration::InputAutomationConfigurationModuleChangeListener.java_name)
        if serviceReference != nil
            inputAutomationConfigurationModuleChangeListener = context.getService(serviceReference)
            if inputAutomationConfigurationModuleChangeListener == nil
                raise StandardError.new("No Service For ServiceReference")
            end
            return inputAutomationConfigurationModuleChangeListener
        else
            @logUtil.putF("No ServiceReference: " + ::Bundle::Input::Automation::ModulePackage::Configuration::InputAutomationConfigurationModuleChangeListener.java_name, self, "addModules")
            return nil
        end
    end
    java_overload :getInputAutomationConfigurationModuleChangeListener, 1
    

    def addModules(context)
        begin
            @logUtil.putF(@commonStrings.START, self, "addModules")
            inputAutomationConfigurationModuleChangeListener = self.getInputAutomationConfigurationModuleChangeListener(context)
            if inputAutomationConfigurationModuleChangeListener != nil
                (0...self.getInputAutomationModuleInterface().length).each do |index|
                    inputAutomationConfigurationModuleChangeEvent = ::Org::Allbinary::Input::Automation::Configuration::InputAutomationConfigurationUtil.getChangeEvent(self.getInputAutomationModuleInterface()[index])
                    inputAutomationConfigurationModuleChangeListener.onAdd(inputAutomationConfigurationModuleChangeEvent)
                end
            end
        rescue StandardError => e
            @logUtil.putF(@commonStrings.EXCEPTION, self, "addModules")
        end
    end
    java_overload :addModules, 1
    

    # throws Exception
    def registerAsService(bundleContext)
        ::Org::Allbinary::Osgi::OSGIActivatorUtil.registerAsService(bundleContext, getServiceFactory(), ::Bundle::Input::Automation::ModulePackage::InputAutomationModuleServiceInterface.java_name)
    end
    java_overload :registerAsService, 1
    

    def removeModules(context)
        begin
            @logUtil.putF(@commonStrings.START, self, "removeModules")
            inputAutomationConfigurationModuleChangeListener = self.getInputAutomationConfigurationModuleChangeListener(context)
            if inputAutomationConfigurationModuleChangeListener != nil
                (0...self.getInputAutomationModuleInterface().length).each do |index|
                    inputAutomationConfigurationModuleChangeEvent = ::Org::Allbinary::Input::Automation::Configuration::InputAutomationConfigurationUtil.getChangeEvent(self.getInputAutomationModuleInterface()[index])
                    inputAutomationConfigurationModuleChangeListener.onRemove(inputAutomationConfigurationModuleChangeEvent)
                end
            end
        rescue StandardError => e
            @logUtil.putF(@commonStrings.EXCEPTION, self, "removeModules")
        end
    end
    java_overload :removeModules, 1
    

    # throws Exception
    def start(context)
        @logUtil.putF(@commonStrings.START, self, @commonStrings.START)
        self.addModules(context)
        self.registerAsService(context)
    end
    java_overload :start, 1
    

    # throws Exception
    def stop(context)
        @logUtil.putF(@commonStrings.START, self, "stop")
        self.removeModules(context)
    end
    java_overload :stop, 1
    

    def getInputAutomationModuleInterface()
        return @inputAutomationModuleInterface
    end
    java_overload :getInputAutomationModuleInterface, 0
    

    def setInputAutomationModuleInterface(inputAutomationModuleInterface)
        @inputAutomationModuleInterface = inputAutomationModuleInterface
    end
    java_overload :setInputAutomationModuleInterface, 1
    

    def getServiceFactory()
        return @serviceFactory
    end
    java_overload :getServiceFactory, 0
    

    def setServiceFactory(serviceObject)
        @serviceFactory = serviceObject
    end
    java_overload :setServiceFactory, 1
end

module ::Org; module Osgi; module Framework; autoload :BundleContext, "org/osgi/framework/BundleContext" unless const_defined?(:BundleContext, false); end; end; end
module ::Org; module Osgi; module Framework; autoload :ServiceFactory, "org/osgi/framework/ServiceFactory" unless const_defined?(:ServiceFactory, false); end; end; end
module ::Org; module Osgi; module Framework; autoload :ServiceReference, "org/osgi/framework/ServiceReference" unless const_defined?(:ServiceReference, false); end; end; end
module ::Bundle; module Input; module Automation; module ModulePackage; autoload :InputAutomationModuleServiceInterface, "bundle/input/automation/module/InputAutomationModuleServiceInterface" unless const_defined?(:InputAutomationModuleServiceInterface, false); end; end; end; end
module ::Bundle; module Input; module Automation; module ModulePackage; module Configuration; autoload :InputAutomationConfigurationModuleChangeListener, "bundle/input/automation/module/configuration/InputAutomationConfigurationModuleChangeListener" unless const_defined?(:InputAutomationConfigurationModuleChangeListener, false); end; end; end; end; end
module ::Org; module Allbinary; module Input; module Automation; module Configuration; autoload :InputAutomationConfigurationModuleChangeEvent, "org/allbinary/input/automation/configuration/InputAutomationConfigurationModuleChangeEvent" unless const_defined?(:InputAutomationConfigurationModuleChangeEvent, false); end; end; end; end; end
module ::Org; module Allbinary; module Input; module Automation; module Configuration; autoload :InputAutomationConfigurationUtil, "org/allbinary/input/automation/configuration/InputAutomationConfigurationUtil" unless const_defined?(:InputAutomationConfigurationUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Input; module Automation; module ModulePackage; autoload :InputAutomationModuleFactoryInterface, "org/allbinary/input/automation/module/InputAutomationModuleFactoryInterface" unless const_defined?(:InputAutomationModuleFactoryInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Osgi; autoload :OSGIActivatorUtil, "org/allbinary/osgi/OSGIActivatorUtil" unless const_defined?(:OSGIActivatorUtil, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end

end; end; end; end; end; end

