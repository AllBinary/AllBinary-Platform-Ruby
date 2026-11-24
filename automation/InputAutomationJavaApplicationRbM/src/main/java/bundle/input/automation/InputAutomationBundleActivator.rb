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

require "java/lang/JavaOverload"
require "java/lang/JavaClass"
require "org/osgi/framework/BundleActivator"
require "bundle/input/automation/InputAutomationBundleActivatorListenerInterface"

module ::Bundle; module Input; module Automation

class InputAutomationBundleActivator
    include ::Org::Osgi::Framework::BundleActivator
    include InputAutomationBundleActivatorListenerInterface
    attr_accessor :logUtil, :commonStrings

    def jfields_bundle_input_automation_InputAutomationBundleActivator
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
    end

    def initialize
        jfields_bundle_input_automation_InputAutomationBundleActivator
    end
    

    def self.getBundleContext()
        return InputAutomationBundleActivator.bundleContext
    end
    

    # throws Exception
    def start(bundleContext)
        begin
            @logUtil.putF(@commonStrings.START, self, @commonStrings.START)
            @@bundleContext = bundleContext
            InputAutomationBundleActivator.moduleManagementThread = ::Java::Lang::JavaThread.new(::Org::Allbinary::Input::Automation::ModulePackage::Osgi::InputAutomationNewBundleRunnable.new(self))
            InputAutomationBundleActivator.moduleManagementThread.start()
            ::Org::Allbinary::Input::Automation::InputAutomationJFrame.create(self)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.START, e)
            raise e
        end
    end
    java_overload :start, 1
    

    # throws Exception
    def registerAsService()
        ::Org::Allbinary::Osgi::OSGIActivatorUtil.registerAsService(self.getBundleContext(), ::Org::Allbinary::Input::Automation::Osgi::InputAutomationServiceFactory.getInstance(), ::Bundle::Input::Automation::ModulePackage::Configuration::InputAutomationConfigurationModuleChangeListener.java_name)
        ::Org::Allbinary::Osgi::OSGIActivatorUtil.registerAsService(self.getBundleContext(), ::Org::Allbinary::Input::Automation::Osgi::InputAutomationServiceFactory.getInstance(), ::Bundle::Input::Automation::Robot::InputAutomationRobotChangeListener.java_name)
    end
    java_overload :registerAsService, 0
    

    # throws Exception
    def useServices()
        ::Org::Allbinary::Input::Automation::Robot::Osgi::InputAutomationRobotServiceConsumer.new(self.getBundleContext()).process()
        ::Org::Allbinary::Input::Automation::ModulePackage::Osgi::InputAutomationModuleServiceConsumer.new(self.getBundleContext()).process()
    end
    java_overload :useServices, 0
    

    # throws Exception
    def stop(context)
        @logUtil.putF(@commonStrings.START, self, "stop")
        if ::Org::Allbinary::Input::Automation::InputAutomationJFrame.getInstance() != nil
            ::Org::Allbinary::Input::Automation::InputAutomationJFrame.destroy()
        else
            @logUtil.putF("Nothing to stop", self, "stop")
        end
    end
    java_overload :stop, 1

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

module ::Org; module Osgi; module Framework; autoload :BundleContext, "org/osgi/framework/BundleContext" unless const_defined?(:BundleContext, false); end; end; end
module ::Bundle; module Input; module Automation; module ModulePackage; module Configuration; autoload :InputAutomationConfigurationModuleChangeListener, "bundle/input/automation/module/configuration/InputAutomationConfigurationModuleChangeListener" unless const_defined?(:InputAutomationConfigurationModuleChangeListener, false); end; end; end; end; end
module ::Bundle; module Input; module Automation; module Robot; autoload :InputAutomationRobotChangeListener, "bundle/input/automation/robot/InputAutomationRobotChangeListener" unless const_defined?(:InputAutomationRobotChangeListener, false); end; end; end; end
module ::Org; module Allbinary; module Input; module Automation; autoload :InputAutomationJFrame, "org/allbinary/input/automation/InputAutomationJFrame" unless const_defined?(:InputAutomationJFrame, false); end; end; end; end
module ::Org; module Allbinary; module Input; module Automation; module ModulePackage; module Osgi; autoload :InputAutomationModuleServiceConsumer, "org/allbinary/input/automation/module/osgi/InputAutomationModuleServiceConsumer" unless const_defined?(:InputAutomationModuleServiceConsumer, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Input; module Automation; module ModulePackage; module Osgi; autoload :InputAutomationNewBundleRunnable, "org/allbinary/input/automation/module/osgi/InputAutomationNewBundleRunnable" unless const_defined?(:InputAutomationNewBundleRunnable, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Input; module Automation; module Osgi; autoload :InputAutomationServiceFactory, "org/allbinary/input/automation/osgi/InputAutomationServiceFactory" unless const_defined?(:InputAutomationServiceFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Input; module Automation; module Robot; module Osgi; autoload :InputAutomationRobotServiceConsumer, "org/allbinary/input/automation/robot/osgi/InputAutomationRobotServiceConsumer" unless const_defined?(:InputAutomationRobotServiceConsumer, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Osgi; autoload :OSGIActivatorUtil, "org/allbinary/osgi/OSGIActivatorUtil" unless const_defined?(:OSGIActivatorUtil, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
require "java/lang/Thread"

begin
    InputAutomationBundleActivator.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end

