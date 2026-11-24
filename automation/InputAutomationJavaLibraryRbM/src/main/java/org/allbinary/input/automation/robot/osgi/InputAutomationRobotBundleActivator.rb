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

require "java/lang/JavaOverload"
require "java/lang/JavaClass"
require "org/osgi/framework/BundleActivator"

module ::Org; module Allbinary; module Input; module Automation; module Robot; module Osgi

class InputAutomationRobotBundleActivator
    include ::Org::Osgi::Framework::BundleActivator
    attr_accessor :logUtil, :commonStrings, :inputRobotInterface, :serviceFactory

    def jfields_org_allbinary_input_automation_robot_osgi_InputAutomationRobotBundleActivator
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @inputRobotInterface = nil unless instance_variable_defined?(:@inputRobotInterface)
        @serviceFactory = nil unless instance_variable_defined?(:@serviceFactory)
    end
    

    def initialize()
        jfields_org_allbinary_input_automation_robot_osgi_InputAutomationRobotBundleActivator
        self.init()
    end
    

    # throws Exception
    def init()
        raise RuntimeError.new()
    end
    java_overload :init, 0
    

    # throws Exception
    def registerAsService(bundleContext)
        ::Org::Allbinary::Osgi::OSGIActivatorUtil.registerAsService(bundleContext, getServiceFactory(), ::Bundle::Input::Automation::Robot::InputAutomationRobotServiceInterface.java_name)
    end
    java_overload :registerAsService, 1
    

    # throws Exception
    def getInputAutomationRobotChangeListener(context)
        serviceReference = context.getServiceReference(::Bundle::Input::Automation::Robot::InputAutomationRobotChangeListener.java_name)
        if serviceReference != nil
            inputAutomationRobotChangeListener = context.getService(serviceReference)
            if inputAutomationRobotChangeListener == nil
                raise StandardError.new("No Service For ServiceReference")
            end
            return inputAutomationRobotChangeListener
        else
            @logUtil.putF("No ServiceReference: " + ::Bundle::Input::Automation::Robot::InputAutomationRobotChangeListener.java_name, self, "getInputAutomationRobotChangeListener")
            return nil
        end
    end
    java_overload :getInputAutomationRobotChangeListener, 1
    

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
    java_overload :addRobots, 1
    

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
    java_overload :removeRobots, 1
    

    # throws Exception
    def start(context)
        @logUtil.putF(@commonStrings.START, self, @commonStrings.START)
        self.addRobots(context)
        self.registerAsService(context)
    end
    java_overload :start, 1
    

    # throws Exception
    def stop(context)
        @logUtil.putF("Stop", self, @commonStrings.START)
        self.removeRobots(context)
    end
    java_overload :stop, 1
    

    def getServiceFactory()
        return @serviceFactory
    end
    java_overload :getServiceFactory, 0
    

    def setServiceFactory(serviceObject)
        @serviceFactory = serviceObject
    end
    java_overload :setServiceFactory, 1
    

    def getInputRobotInterface()
        return @inputRobotInterface
    end
    java_overload :getInputRobotInterface, 0
    

    def setInputRobotInterface(inputRobotInterface)
        @inputRobotInterface = inputRobotInterface
    end
    java_overload :setInputRobotInterface, 1
end

module ::Org; module Osgi; module Framework; autoload :BundleContext, "org/osgi/framework/BundleContext" unless const_defined?(:BundleContext, false); end; end; end
module ::Org; module Osgi; module Framework; autoload :ServiceFactory, "org/osgi/framework/ServiceFactory" unless const_defined?(:ServiceFactory, false); end; end; end
module ::Org; module Osgi; module Framework; autoload :ServiceReference, "org/osgi/framework/ServiceReference" unless const_defined?(:ServiceReference, false); end; end; end
module ::Bundle; module Input; module Automation; module Robot; autoload :InputAutomationRobotChangeListener, "bundle/input/automation/robot/InputAutomationRobotChangeListener" unless const_defined?(:InputAutomationRobotChangeListener, false); end; end; end; end
module ::Bundle; module Input; module Automation; module Robot; autoload :InputAutomationRobotServiceInterface, "bundle/input/automation/robot/InputAutomationRobotServiceInterface" unless const_defined?(:InputAutomationRobotServiceInterface, false); end; end; end; end
module ::Org; module Allbinary; module Input; module Automation; module Robot; autoload :InputRobotInterface, "org/allbinary/input/automation/robot/InputRobotInterface" unless const_defined?(:InputRobotInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Osgi; autoload :OSGIActivatorUtil, "org/allbinary/osgi/OSGIActivatorUtil" unless const_defined?(:OSGIActivatorUtil, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
autoload :InputAutomationRobotChangeEvent, "org/allbinary/input/automation/robot/osgi/InputAutomationRobotChangeEvent" unless const_defined?(:InputAutomationRobotChangeEvent, false)
autoload :InputAutomationRobotUtil, "org/allbinary/input/automation/robot/osgi/InputAutomationRobotUtil" unless const_defined?(:InputAutomationRobotUtil, false)

end; end; end; end; end; end

