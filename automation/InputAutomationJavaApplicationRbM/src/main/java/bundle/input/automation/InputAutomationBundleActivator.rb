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
# package bundle.input.automation

require "org/osgi/framework/BundleActivator"
require "bundle/input/automation/InputAutomationBundleActivatorListenerInterface"

class InputAutomationBundleActivator
    include BundleActivator
    include InputAutomationBundleActivatorListenerInterface
    attr_accessor :logUtil, :commonStrings

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
    end

    def initialize
        initialize_fields
    end
    

    def self.getBundleContext()
        return InputAutomationBundleActivator.bundleContext
    end
    

    # throws Exception
    def start(bundleContext)
        begin
            @logUtil.putF(@commonStrings.START, self, @commonStrings.START)
            @@bundleContext = bundleContext
            InputAutomationBundleActivator.moduleManagementThread = JavaThread.new(InputAutomationNewBundleRunnable.new(self))
            InputAutomationBundleActivator.moduleManagementThread.start()
            InputAutomationJFrame.create(self)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.START, e)
            raise e
        end
    end
    

    # throws Exception
    def registerAsService()
        OSGIActivatorUtil.registerAsService(self.getBundleContext(), InputAutomationServiceFactory.getInstance(), InputAutomationConfigurationModuleChangeListener.getName())
        OSGIActivatorUtil.registerAsService(self.getBundleContext(), InputAutomationServiceFactory.getInstance(), InputAutomationRobotChangeListener.getName())
    end
    

    # throws Exception
    def useServices()
        InputAutomationRobotServiceConsumer.new(self.getBundleContext()).process()
        InputAutomationModuleServiceConsumer.new(self.getBundleContext()).process()
    end
    

    # throws Exception
    def stop(context)
        @logUtil.putF(@commonStrings.START, self, "stop")
        if InputAutomationJFrame.getInstance() != nil
            InputAutomationJFrame.destroy()
        else
            @logUtil.putF("Nothing to stop", self, "stop")
        end
    end

    def self.moduleManagementThread()
        return defined?(@@moduleManagementThread) ? @@moduleManagementThread : nil
    end

    def self.moduleManagementThread=(value)
        @@moduleManagementThread = value
    end

    def self.bundleContext()
        return defined?(@@bundleContext) ? @@bundleContext : nil
    end

    def self.bundleContext=(value)
        @@bundleContext = value
    end
end

require "org/osgi/framework/BundleContext"
require "bundle/input/automation/module/configuration/InputAutomationConfigurationModuleChangeListener"
require "bundle/input/automation/robot/InputAutomationRobotChangeListener"
require "org/allbinary/input/automation/InputAutomationJFrame"
require "org/allbinary/input/automation/module/osgi/InputAutomationModuleServiceConsumer"
require "org/allbinary/input/automation/module/osgi/InputAutomationNewBundleRunnable"
require "org/allbinary/input/automation/osgi/InputAutomationServiceFactory"
require "org/allbinary/input/automation/robot/osgi/InputAutomationRobotServiceConsumer"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/osgi/OSGIActivatorUtil"
require "org/allbinary/string/CommonStrings"
require "java/lang/Thread"

class InputAutomationBundleActivator
    @@moduleManagementThread = nil
    @@bundleContext = nil
end

