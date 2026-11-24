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
require "java/lang/JavaClass"
require "org/allbinary/osgi/service/InputAutomationServiceConsumer"

module ::Org; module Allbinary; module Input; module Automation; module ModulePackage; module Osgi

class InputAutomationModuleServiceConsumer < ::Org::Allbinary::Osgi::Service::InputAutomationServiceConsumer
    

    def initialize(bundleContext)
        super(::Bundle::Input::Automation::ModulePackage::InputAutomationModuleServiceInterface.java_name, bundleContext, InputAutomationModuleOSGIServiceVisitor.new())
    end
end

module ::Org; module Osgi; module Framework; autoload :BundleContext, "org/osgi/framework/BundleContext" unless const_defined?(:BundleContext, false); end; end; end
module ::Bundle; module Input; module Automation; module ModulePackage; autoload :InputAutomationModuleServiceInterface, "bundle/input/automation/module/InputAutomationModuleServiceInterface" unless const_defined?(:InputAutomationModuleServiceInterface, false); end; end; end; end
autoload :InputAutomationModuleOSGIServiceVisitor, "org/allbinary/input/automation/module/osgi/InputAutomationModuleOSGIServiceVisitor" unless const_defined?(:InputAutomationModuleOSGIServiceVisitor, false)

end; end; end; end; end; end

