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
# package bundle.input.automation.module.generic

require "java/lang/JavaOverload"
require "org/allbinary/input/automation/module/osgi/InputAutomationModuleBundleActivator"

module ::Bundle; module Input; module Automation; module ModulePackage; module Generic

class InputAutomationGenericModuleBundleActivator < ::Org::Allbinary::Input::Automation::ModulePackage::Osgi::InputAutomationModuleBundleActivator
    

    def initialize()
        super()
    end
    

    # throws Exception
    def init()
        inputAutomationGenericModuleServiceFactory = ::Org::Allbinary::Input::Automation::ModulePackage::Generic::InputAutomationGenericModuleServiceFactory.getInstance()
        self.setInputAutomationModuleInterface(inputAutomationGenericModuleServiceFactory.getInputAutomationModuleInterfaceArray())
        self.setServiceFactory(inputAutomationGenericModuleServiceFactory)
    end
    java_overload :init, 0
end

module ::Org; module Allbinary; module Input; module Automation; module ModulePackage; module Generic; autoload :InputAutomationGenericModuleServiceFactory, "org/allbinary/input/automation/module/generic/InputAutomationGenericModuleServiceFactory" unless const_defined?(:InputAutomationGenericModuleServiceFactory, false); end; end; end; end; end; end

end; end; end; end; end

