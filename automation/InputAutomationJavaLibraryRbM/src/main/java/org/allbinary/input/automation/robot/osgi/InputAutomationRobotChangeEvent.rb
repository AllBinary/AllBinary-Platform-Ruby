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


module ::Org; module Allbinary; module Input; module Automation; module Robot; module Osgi

class InputAutomationRobotChangeEvent
    attr_accessor :inputAutomationRobotInterfaceWrapper

    def jfields_org_allbinary_input_automation_robot_osgi_InputAutomationRobotChangeEvent
        @inputAutomationRobotInterfaceWrapper = nil unless instance_variable_defined?(:@inputAutomationRobotInterfaceWrapper)
    end
    

    def initialize(inputAutomationRobotInterfaceWrapper)
        jfields_org_allbinary_input_automation_robot_osgi_InputAutomationRobotChangeEvent
        self.setInputAutomationRobotInterfaceWrapper(inputAutomationRobotInterfaceWrapper)
    end
    

    def getInputAutomationRobotInterfaceWrapper()
        return @inputAutomationRobotInterfaceWrapper
    end
    

    def setInputAutomationRobotInterfaceWrapper(inputAutomationRobotInterfaceWrapper)
        @inputAutomationRobotInterfaceWrapper = inputAutomationRobotInterfaceWrapper
    end
end

autoload :InputAutomationRobotInterfaceWrapper, "org/allbinary/input/automation/robot/osgi/InputAutomationRobotInterfaceWrapper" unless const_defined?(:InputAutomationRobotInterfaceWrapper, false)

end; end; end; end; end; end

