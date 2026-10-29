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
end

require "org/allbinary/input/automation/module/InputAutomationModuleData"
require "org/allbinary/input/automation/module/configuration/BlankModuleConfigurationJPanel"
require "org/allbinary/thread/RunnableInterface"

class TestModuleFactory
    NAME = "Test New Game" + (InputAutomationModuleData::MODULE_NAME_END).to_s
end

