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
# package org.allbinary.input.automation.robot.osgi

require "java/lang/JavaOverload"
require "java/lang/JavaClass"
require "org/allbinary/osgi/service/InputAutomationServiceConsumer"

module ::Org; module Allbinary; module Input; module Automation; module Robot; module Osgi

class InputAutomationRobotServiceConsumer < ::Org::Allbinary::Osgi::Service::InputAutomationServiceConsumer
    

    def initialize(bundleContext)
        super(::Bundle::Input::Automation::Robot::InputAutomationRobotServiceInterface.java_name, bundleContext, InputAutomationRobotOSGIServiceVisitor.new())
    end
end

module ::Org; module Osgi; module Framework; autoload :BundleContext, "org/osgi/framework/BundleContext" unless const_defined?(:BundleContext, false); end; end; end
module ::Bundle; module Input; module Automation; module Robot; autoload :InputAutomationRobotServiceInterface, "bundle/input/automation/robot/InputAutomationRobotServiceInterface" unless const_defined?(:InputAutomationRobotServiceInterface, false); end; end; end; end
autoload :InputAutomationRobotOSGIServiceVisitor, "org/allbinary/input/automation/robot/osgi/InputAutomationRobotOSGIServiceVisitor" unless const_defined?(:InputAutomationRobotOSGIServiceVisitor, false)

end; end; end; end; end; end

