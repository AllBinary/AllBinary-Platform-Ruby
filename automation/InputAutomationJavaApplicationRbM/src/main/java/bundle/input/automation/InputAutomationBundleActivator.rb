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
        InputAutomationBundleActivator.java_static_fields unless @java_static_fields_started
        return defined?(@@moduleManagementThread) ? @@moduleManagementThread : nil
    end

    def self.moduleManagementThread=(value)
        InputAutomationBundleActivator.java_static_fields unless @java_static_fields_started
        @@moduleManagementThread = value
    end

    def self.bundleContext()
        InputAutomationBundleActivator.java_static_fields unless @java_static_fields_started
        return defined?(@@bundleContext) ? @@bundleContext : nil
    end

    def self.bundleContext=(value)
        InputAutomationBundleActivator.java_static_fields unless @java_static_fields_started
        @@bundleContext = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@moduleManagementThread = nil
            @@bundleContext = nil
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "InputAutomationBundleActivator"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :BundleContext, "org/osgi/framework/BundleContext"
autoload :InputAutomationConfigurationModuleChangeListener, "bundle/input/automation/module/configuration/InputAutomationConfigurationModuleChangeListener"
autoload :InputAutomationRobotChangeListener, "bundle/input/automation/robot/InputAutomationRobotChangeListener"
autoload :InputAutomationJFrame, "org/allbinary/input/automation/InputAutomationJFrame"
autoload :InputAutomationModuleServiceConsumer, "org/allbinary/input/automation/module/osgi/InputAutomationModuleServiceConsumer"
autoload :InputAutomationNewBundleRunnable, "org/allbinary/input/automation/module/osgi/InputAutomationNewBundleRunnable"
autoload :InputAutomationServiceFactory, "org/allbinary/input/automation/osgi/InputAutomationServiceFactory"
autoload :InputAutomationRobotServiceConsumer, "org/allbinary/input/automation/robot/osgi/InputAutomationRobotServiceConsumer"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :OSGIActivatorUtil, "org/allbinary/osgi/OSGIActivatorUtil"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
require "java/lang/Thread"

begin
    InputAutomationBundleActivator.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

