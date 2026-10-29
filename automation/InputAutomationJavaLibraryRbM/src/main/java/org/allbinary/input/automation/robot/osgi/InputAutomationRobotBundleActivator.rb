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
# package org.allbinary.input.automation.robot.osgi

require "org/osgi/framework/BundleActivator"

class InputAutomationRobotBundleActivator
    include BundleActivator
    attr_accessor :logUtil, :commonStrings, :inputRobotInterface, :serviceFactory

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @inputRobotInterface = nil
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
    def registerAsService(bundleContext)
        OSGIActivatorUtil.registerAsService(bundleContext, getServiceFactory(), InputAutomationRobotServiceInterface.getName())
    end
    

    # throws Exception
    def getInputAutomationRobotChangeListener(context)
        serviceReference = context.getServiceReference(InputAutomationRobotChangeListener.getName())
        if serviceReference != nil
            inputAutomationRobotChangeListener = context.getService(serviceReference)
            if inputAutomationRobotChangeListener == nil
                raise StandardError.new("No Service For ServiceReference")
            end
            return inputAutomationRobotChangeListener
        else
            @logUtil.putF("No ServiceReference: " + InputAutomationRobotChangeListener.getName(), self, "getInputAutomationRobotChangeListener")
            return nil
        end
    end
    

    def addRobots(context)
        begin
            @logUtil.putF(@commonStrings.START, self, "addRobots")
            inputAutomationRobotChangeListener = self.getInputAutomationRobotChangeListener(context)
            if inputAutomationRobotChangeListener != nil
                (0...self.getInputRobotInterface().length).each do |index|
                    inputAutomationRobotChangeEvent = InputAutomationRobotUtil.getChangeEvent(self.getInputRobotInterface()[index])
                    inputAutomationRobotChangeListener.onAdd(inputAutomationRobotChangeEvent)
                end
            end
        rescue StandardError => e
            @logUtil.putF(@commonStrings.EXCEPTION, self, "addModules")
        end
    end
    

    def removeRobots(context)
        begin
            @logUtil.putF(@commonStrings.START, self, "removeRobots")
            inputAutomationRobotChangeListener = self.getInputAutomationRobotChangeListener(context)
            if inputAutomationRobotChangeListener != nil
                (0...self.getInputRobotInterface().length).each do |index|
                    inputAutomationRobotChangeEvent = InputAutomationRobotUtil.getChangeEvent(self.getInputRobotInterface()[index])
                    inputAutomationRobotChangeListener.onRemove(inputAutomationRobotChangeEvent)
                end
            end
        rescue StandardError => e
            @logUtil.putF(@commonStrings.EXCEPTION, self, "removeRobots")
        end
    end
    

    # throws Exception
    def start(context)
        @logUtil.putF(@commonStrings.START, self, @commonStrings.START)
        self.addRobots(context)
        self.registerAsService(context)
    end
    

    # throws Exception
    def stop(context)
        @logUtil.putF("Stop", self, @commonStrings.START)
        self.removeRobots(context)
    end
    

    def getServiceFactory()
        return @serviceFactory
    end
    

    def setServiceFactory(serviceObject)
        @serviceFactory = serviceObject
    end
    

    def getInputRobotInterface()
        return @inputRobotInterface
    end
    

    def setInputRobotInterface(inputRobotInterface)
        @inputRobotInterface = inputRobotInterface
    end
end

require "org/osgi/framework/BundleContext"
require "org/osgi/framework/ServiceFactory"
require "org/osgi/framework/ServiceReference"
require "bundle/input/automation/robot/InputAutomationRobotChangeListener"
require "bundle/input/automation/robot/InputAutomationRobotServiceInterface"
require "org/allbinary/input/automation/robot/InputRobotInterface"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/osgi/OSGIActivatorUtil"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/input/automation/robot/osgi/InputAutomationRobotChangeEvent"
require "org/allbinary/input/automation/robot/osgi/InputAutomationRobotUtil"

