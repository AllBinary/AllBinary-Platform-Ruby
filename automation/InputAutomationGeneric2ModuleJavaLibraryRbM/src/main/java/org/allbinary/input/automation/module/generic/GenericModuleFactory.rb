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
require "java/lang/JavaOverload"
require "org/allbinary/input/automation/module/AbstractInputAutomationFactory"

module ::Org; module Allbinary; module Input; module Automation; module ModulePackage; module Generic

class GenericModuleFactory < ::Org::Allbinary::Input::Automation::ModulePackage::AbstractInputAutomationFactory
    

    def initialize()
        super(NAME, ::Org::Allbinary::Input::Automation::ModulePackage::Generic::Configuration::GenericModuleConfigurationJPanel.new())
    end
    

    # throws Exception
    def getInstance()
        java_monitor.synchronize do
        genericProfile = (self.getConfigurationJPanel()).getSelectedGenericProfile()
        inputAutomationActionInterface = GenericInputAutomationAction.new()
        return GenericInputAutomationWorker.new(inputAutomationActionInterface, genericProfile, ::Org::Allbinary::Input::Automation::ModulePackage::Generic::Constraints::NoMotionRectangleConstraints.new(), ::Org::Allbinary::Input::Automation::ModulePackage::Generic::Constraints::NoImageComparatorConstraints.new())
        end
    end
    java_overload :getInstance, 0

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:NAME, "Generic" + (::Org::Allbinary::Input::Automation::ModulePackage::InputAutomationModuleData::MODULE_NAME_END).to_s)
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

module ::Org; module Allbinary; module Input; module Automation; module ModulePackage; autoload :InputAutomationActionInterface, "org/allbinary/input/automation/module/InputAutomationActionInterface" unless const_defined?(:InputAutomationActionInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Input; module Automation; module ModulePackage; autoload :InputAutomationModuleData, "org/allbinary/input/automation/module/InputAutomationModuleData" unless const_defined?(:InputAutomationModuleData, false); end; end; end; end; end
module ::Org; module Allbinary; module Input; module Automation; module ModulePackage; module Generic; module Configuration; autoload :GenericModuleConfigurationJPanel, "org/allbinary/input/automation/module/generic/configuration/GenericModuleConfigurationJPanel" unless const_defined?(:GenericModuleConfigurationJPanel, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Input; module Automation; module ModulePackage; module Generic; module Configuration; module Profile; autoload :GenericProfile, "org/allbinary/input/automation/module/generic/configuration/profile/GenericProfile" unless const_defined?(:GenericProfile, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Input; module Automation; module ModulePackage; module Generic; module Constraints; autoload :NoImageComparatorConstraints, "org/allbinary/input/automation/module/generic/constraints/NoImageComparatorConstraints" unless const_defined?(:NoImageComparatorConstraints, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Input; module Automation; module ModulePackage; module Generic; module Constraints; autoload :NoMotionRectangleConstraints, "org/allbinary/input/automation/module/generic/constraints/NoMotionRectangleConstraints" unless const_defined?(:NoMotionRectangleConstraints, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module ThreadPackage; autoload :RunnableInterface, "org/allbinary/thread/RunnableInterface" unless const_defined?(:RunnableInterface, false); end; end; end
autoload :GenericInputAutomationAction, "org/allbinary/input/automation/module/generic/GenericInputAutomationAction" unless const_defined?(:GenericInputAutomationAction, false)
autoload :GenericInputAutomationWorker, "org/allbinary/input/automation/module/generic/GenericInputAutomationWorker" unless const_defined?(:GenericInputAutomationWorker, false)

begin
    GenericModuleFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end

