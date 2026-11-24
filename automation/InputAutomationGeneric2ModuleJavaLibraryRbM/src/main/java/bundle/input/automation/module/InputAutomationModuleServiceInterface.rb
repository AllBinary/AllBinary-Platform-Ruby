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
# package bundle.input.automation.module

require "java/lang/JavaOverload"
require "org/allbinary/osgi/OSGIServiceInterface"

module ::Bundle; module Input; module Automation; module ModulePackage

module InputAutomationModuleServiceInterface
    include ::Org::Allbinary::Osgi::OSGIServiceInterface
    

    def getInputAutomationModuleInterfaceArray()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getInputAutomationModuleInterfaceArray, 0
end

module ::Org; module Allbinary; module Input; module Automation; module ModulePackage; autoload :InputAutomationModuleFactoryInterface, "org/allbinary/input/automation/module/InputAutomationModuleFactoryInterface" unless const_defined?(:InputAutomationModuleFactoryInterface, false); end; end; end; end; end

end; end; end; end

