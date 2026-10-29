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
end

require "org/allbinary/input/automation/module/InputAutomationActionInterface"
require "org/allbinary/input/automation/module/InputAutomationModuleData"
require "org/allbinary/input/automation/module/generic/configuration/GenericModuleConfigurationJPanel"
require "org/allbinary/input/automation/module/generic/configuration/profile/GenericProfile"
require "org/allbinary/input/automation/module/generic/constraints/NoImageComparatorConstraints"
require "org/allbinary/input/automation/module/generic/constraints/NoMotionRectangleConstraints"
require "org/allbinary/thread/RunnableInterface"
require "org/allbinary/input/automation/module/generic/GenericInputAutomationAction"
require "org/allbinary/input/automation/module/generic/GenericInputAutomationWorker"

class GenericModuleFactory
    NAME = "Generic" + (InputAutomationModuleData::MODULE_NAME_END).to_s
end

