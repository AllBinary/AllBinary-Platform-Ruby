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
require "org/allbinary/osgi/OSGIServiceVisitorInterface"

module ::Org; module Allbinary; module Input; module Automation; module ModulePackage; module Osgi

class InputAutomationModuleOSGIServiceVisitor
    include ::Org::Allbinary::Osgi::OSGIServiceVisitorInterface
    attr_accessor :logUtil, :commonStrings

    def jfields_org_allbinary_input_automation_module_osgi_InputAutomationModuleOSGIServiceVisitor
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
    end
    

    def initialize()
        jfields_org_allbinary_input_automation_module_osgi_InputAutomationModuleOSGIServiceVisitor
    end
    

    def visit_j1_1(anyType)
        return self.visit(anyType)
    end
    

    def visit_j1_2(osgiServiceInterface)
        begin
            inputAutomationModuleService = osgiServiceInterface
            inputAutomationModuleInterfaceArray = inputAutomationModuleService.getInputAutomationModuleInterfaceArray()
            (0...inputAutomationModuleInterfaceArray.length).each do |index|
                ::Org::Allbinary::Input::Automation::InputAutomationJFrame.getInstance().onAdd(::Org::Allbinary::Input::Automation::Configuration::InputAutomationConfigurationUtil.getChangeEvent(inputAutomationModuleInterfaceArray[index]))
            end
            return true
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "visit", e)
            return false
        end
    end

    def visit(*java_overload_args)
        return visit_j1(*java_overload_args) if java_overload_args.length == 1
        raise ArgumentError, "No method visit takes #{java_overload_args.length} arguments"
    end

    def visit_j1(*java_overload_args)
        return visit_j1_2(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::Org::Allbinary::Osgi::OSGIServiceInterface))
        return visit_j1_1(*java_overload_args)
    end
end

module ::Bundle; module Input; module Automation; module ModulePackage; autoload :InputAutomationModuleService, "bundle/input/automation/module/InputAutomationModuleService" unless const_defined?(:InputAutomationModuleService, false); end; end; end; end
module ::Org; module Allbinary; module Input; module Automation; autoload :InputAutomationJFrame, "org/allbinary/input/automation/InputAutomationJFrame" unless const_defined?(:InputAutomationJFrame, false); end; end; end; end
module ::Org; module Allbinary; module Input; module Automation; module Configuration; autoload :InputAutomationConfigurationUtil, "org/allbinary/input/automation/configuration/InputAutomationConfigurationUtil" unless const_defined?(:InputAutomationConfigurationUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Input; module Automation; module ModulePackage; autoload :InputAutomationModuleFactoryInterface, "org/allbinary/input/automation/module/InputAutomationModuleFactoryInterface" unless const_defined?(:InputAutomationModuleFactoryInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Osgi; autoload :OSGIServiceInterface, "org/allbinary/osgi/OSGIServiceInterface" unless const_defined?(:OSGIServiceInterface, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end

end; end; end; end; end; end

