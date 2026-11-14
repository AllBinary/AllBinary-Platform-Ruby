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
# package org.allbinary.input.automation.module.generic

require "java/lang/Object"
require "org/allbinary/input/automation/module/AbstractInputAutomationFactory"

class GenericModuleFactory < AbstractInputAutomationFactory
    

    def initialize()
        super(NAME, GenericModuleConfigurationJPanel.new())
    end
    

    # throws Exception
    def getInstance()
        java_monitor.synchronize do
        genericProfile = (self.getConfigurationJPanel()).getSelectedGenericProfile()
        inputAutomationActionInterface = GenericInputAutomationAction.new()
        return GenericInputAutomationWorker.new(inputAutomationActionInterface, genericProfile, NoMotionRectangleConstraints.new(), NoImageComparatorConstraints.new())
        end
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:NAME, "Generic" + (InputAutomationModuleData::MODULE_NAME_END).to_s)
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "GenericModuleFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NAME].include?(name)
        end
        super
    end
end

autoload :InputAutomationActionInterface, "org/allbinary/input/automation/module/InputAutomationActionInterface"
autoload :InputAutomationModuleData, "org/allbinary/input/automation/module/InputAutomationModuleData"
autoload :GenericModuleConfigurationJPanel, "org/allbinary/input/automation/module/generic/configuration/GenericModuleConfigurationJPanel"
autoload :GenericProfile, "org/allbinary/input/automation/module/generic/configuration/profile/GenericProfile"
autoload :NoImageComparatorConstraints, "org/allbinary/input/automation/module/generic/constraints/NoImageComparatorConstraints"
autoload :NoMotionRectangleConstraints, "org/allbinary/input/automation/module/generic/constraints/NoMotionRectangleConstraints"
autoload :RunnableInterface, "org/allbinary/thread/RunnableInterface"
autoload :GenericInputAutomationAction, "org/allbinary/input/automation/module/generic/GenericInputAutomationAction"
autoload :GenericInputAutomationWorker, "org/allbinary/input/automation/module/generic/GenericInputAutomationWorker"

begin
    GenericModuleFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

