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
# package org.allbinary.input.automation.module.game.test

require "java/lang/Object"
require "java/lang/JavaOverload"
# require "javax/swing/JPanel"
require "org/allbinary/input/automation/module/AbstractInputAutomationFactory"

module ::Org; module Allbinary; module Input; module Automation; module ModulePackage; module Game; module Test

class TestModuleFactory < ::Org::Allbinary::Input::Automation::ModulePackage::AbstractInputAutomationFactory
    attr_accessor :blankModuleConfigurationJPanel

    def jfields_org_allbinary_input_automation_module_game_test_TestModuleFactory
        @blankModuleConfigurationJPanel = nil unless instance_variable_defined?(:@blankModuleConfigurationJPanel)
    end
    

    def initialize()
        super(NAME, ::Org::Allbinary::Input::Automation::ModulePackage::Configuration::BlankModuleConfigurationJPanel.new())
        jfields_org_allbinary_input_automation_module_game_test_TestModuleFactory
    end
    

    def getName()
        return NAME
    end
    java_overload :getName, 0
    

    def getConfigurationJPanel()
        return @blankModuleConfigurationJPanel
    end
    java_overload :getConfigurationJPanel, 0
    

    # throws Exception
    def getInstance()
        java_monitor.synchronize do
        return nil
        end
    end
    java_overload :getInstance, 0

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:NAME, "Test New Game" + (::Org::Allbinary::Input::Automation::ModulePackage::InputAutomationModuleData::MODULE_NAME_END).to_s)
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "TestModuleFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NAME].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Input; module Automation; module ModulePackage; autoload :InputAutomationModuleData, "org/allbinary/input/automation/module/InputAutomationModuleData" unless const_defined?(:InputAutomationModuleData, false); end; end; end; end; end
module ::Org; module Allbinary; module Input; module Automation; module ModulePackage; module Configuration; autoload :BlankModuleConfigurationJPanel, "org/allbinary/input/automation/module/configuration/BlankModuleConfigurationJPanel" unless const_defined?(:BlankModuleConfigurationJPanel, false); end; end; end; end; end; end
module ::Org; module Allbinary; module ThreadPackage; autoload :RunnableInterface, "org/allbinary/thread/RunnableInterface" unless const_defined?(:RunnableInterface, false); end; end; end

begin
    TestModuleFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end; end

