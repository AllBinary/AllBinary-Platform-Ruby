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
# require "javax/swing"
require "org/allbinary/input/automation/module/AbstractInputAutomationFactory"

class TestModuleFactory < AbstractInputAutomationFactory
    attr_accessor :blankModuleConfigurationJPanel

    def initialize_fields
        @blankModuleConfigurationJPanel = nil
    end
    

    def initialize()
        super(NAME, BlankModuleConfigurationJPanel.new())
        initialize_fields
    end
    

    def getName()
        return TestModuleFactory::NAME
    end
    

    def getConfigurationJPanel()
        return @blankModuleConfigurationJPanel
    end
    

    # throws Exception
    def getInstance()
        java_monitor.synchronize do
        return nil
        end
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:NAME, "Test New Game" + (InputAutomationModuleData::MODULE_NAME_END).to_s)
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

autoload :InputAutomationModuleData, "org/allbinary/input/automation/module/InputAutomationModuleData"
autoload :BlankModuleConfigurationJPanel, "org/allbinary/input/automation/module/configuration/BlankModuleConfigurationJPanel"
autoload :RunnableInterface, "org/allbinary/thread/RunnableInterface"

begin
    TestModuleFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

