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

require "org/osgi/framework/BundleActivator"

class InputAutomationModuleBundleActivator
    include BundleActivator
    attr_accessor :logUtil, :commonStrings, :inputAutomationModuleInterface, :serviceFactory

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @inputAutomationModuleInterface = nil
        @serviceFactory = nil
    end
    

    def initialize()
        initialize_fields
        self.init()
    end
    

    # throws Exception
    def init()
        raise RuntimeError.new()
    end
    

    # throws Exception
    def getInputAutomationConfigurationModuleChangeListener(context)
        serviceReference = context.getServiceReference(InputAutomationConfigurationModuleChangeListener.getName())
        if serviceReference != nil
            inputAutomationConfigurationModuleChangeListener = context.getService(serviceReference)
            if inputAutomationConfigurationModuleChangeListener == nil
                raise StandardError.new("No Service For ServiceReference")
            end
            return inputAutomationConfigurationModuleChangeListener
        else
            @logUtil.putF("No ServiceReference: " + InputAutomationConfigurationModuleChangeListener.getName(), self, "addModules")
            return nil
        end
    end
    

    def addModules(context)
        begin
            @logUtil.putF(@commonStrings.START, self, "addModules")
            inputAutomationConfigurationModuleChangeListener = self.getInputAutomationConfigurationModuleChangeListener(context)
            if inputAutomationConfigurationModuleChangeListener != nil
                (0...self.getInputAutomationModuleInterface().length).each do |index|
                    inputAutomationConfigurationModuleChangeEvent = InputAutomationConfigurationUtil.getChangeEvent(self.getInputAutomationModuleInterface()[index])
                    inputAutomationConfigurationModuleChangeListener.onAdd(inputAutomationConfigurationModuleChangeEvent)
                end
            end
        rescue StandardError => e
            @logUtil.putF(@commonStrings.EXCEPTION, self, "addModules")
        end
    end
    

    # throws Exception
    def registerAsService(bundleContext)
        OSGIActivatorUtil.registerAsService(bundleContext, getServiceFactory(), InputAutomationModuleServiceInterface.getName())
    end
    

    def removeModules(context)
        begin
            @logUtil.putF(@commonStrings.START, self, "removeModules")
            inputAutomationConfigurationModuleChangeListener = self.getInputAutomationConfigurationModuleChangeListener(context)
            if inputAutomationConfigurationModuleChangeListener != nil
                (0...self.getInputAutomationModuleInterface().length).each do |index|
                    inputAutomationConfigurationModuleChangeEvent = InputAutomationConfigurationUtil.getChangeEvent(self.getInputAutomationModuleInterface()[index])
                    inputAutomationConfigurationModuleChangeListener.onRemove(inputAutomationConfigurationModuleChangeEvent)
                end
            end
        rescue StandardError => e
            @logUtil.putF(@commonStrings.EXCEPTION, self, "removeModules")
        end
    end
    

    # throws Exception
    def start(context)
        @logUtil.putF(@commonStrings.START, self, @commonStrings.START)
        self.addModules(context)
        self.registerAsService(context)
    end
    

    # throws Exception
    def stop(context)
        @logUtil.putF(@commonStrings.START, self, "stop")
        self.removeModules(context)
    end
    

    def getInputAutomationModuleInterface()
        return @inputAutomationModuleInterface
    end
    

    def setInputAutomationModuleInterface(inputAutomationModuleInterface)
        @inputAutomationModuleInterface = inputAutomationModuleInterface
    end
    

    def getServiceFactory()
        return @serviceFactory
    end
    

    def setServiceFactory(serviceObject)
        @serviceFactory = serviceObject
    end
end

require "org/osgi/framework/BundleContext"
require "org/osgi/framework/ServiceFactory"
require "org/osgi/framework/ServiceReference"
require "bundle/input/automation/module/InputAutomationModuleServiceInterface"
require "bundle/input/automation/module/configuration/InputAutomationConfigurationModuleChangeListener"
require "org/allbinary/input/automation/configuration/InputAutomationConfigurationModuleChangeEvent"
require "org/allbinary/input/automation/configuration/InputAutomationConfigurationUtil"
require "org/allbinary/input/automation/module/InputAutomationModuleFactoryInterface"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/osgi/OSGIActivatorUtil"
require "org/allbinary/string/CommonStrings"

