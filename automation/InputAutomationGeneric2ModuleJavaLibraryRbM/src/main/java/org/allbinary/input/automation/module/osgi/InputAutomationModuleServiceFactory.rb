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
# package org.allbinary.input.automation.module.osgi

require "java/lang/JavaOverload"
require "org/osgi/framework/ServiceFactory"

module ::Org; module Allbinary; module Input; module Automation; module ModulePackage; module Osgi

class InputAutomationModuleServiceFactory
    include ::Org::Osgi::Framework::ServiceFactory
    attr_accessor :logUtil, :commonStrings, :inputAutomationModuleInterfaceArray

    def jfields_org_allbinary_input_automation_module_osgi_InputAutomationModuleServiceFactory
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @inputAutomationModuleInterfaceArray = nil unless instance_variable_defined?(:@inputAutomationModuleInterfaceArray)
    end
    

    def initialize()
        jfields_org_allbinary_input_automation_module_osgi_InputAutomationModuleServiceFactory
    end
    

    def getService(bundle, registration)
        @logUtil.putF(@commonStrings.START, self, "getService")
        return ::Bundle::Input::Automation::ModulePackage::InputAutomationModuleService.new(self.getInputAutomationModuleInterfaceArray())
    end
    java_overload :getService, 2
    

    def ungetService(bundle, registration, service)
    end
    java_overload :ungetService, 3
    

    def getInputAutomationModuleInterfaceArray()
        return @inputAutomationModuleInterfaceArray
    end
    java_overload :getInputAutomationModuleInterfaceArray, 0
    

    def setInputAutomationModuleInterfaceArray(inputAutomationModuleInterfaceArray)
        @inputAutomationModuleInterfaceArray = inputAutomationModuleInterfaceArray
    end
    java_overload :setInputAutomationModuleInterfaceArray, 1
end

module ::Org; module Osgi; module Framework; autoload :Bundle, "org/osgi/framework/Bundle" unless const_defined?(:Bundle, false); end; end; end
module ::Org; module Osgi; module Framework; autoload :ServiceRegistration, "org/osgi/framework/ServiceRegistration" unless const_defined?(:ServiceRegistration, false); end; end; end
module ::Bundle; module Input; module Automation; module ModulePackage; autoload :InputAutomationModuleService, "bundle/input/automation/module/InputAutomationModuleService" unless const_defined?(:InputAutomationModuleService, false); end; end; end; end
module ::Org; module Allbinary; module Input; module Automation; module ModulePackage; autoload :InputAutomationModuleFactoryInterface, "org/allbinary/input/automation/module/InputAutomationModuleFactoryInterface" unless const_defined?(:InputAutomationModuleFactoryInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end

end; end; end; end; end; end

