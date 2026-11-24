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

class InputAutomationRobotInterfaceWrapper
    attr_accessor :inputRobotInterface

    def jfields_org_allbinary_input_automation_robot_osgi_InputAutomationRobotInterfaceWrapper
        @inputRobotInterface = nil unless instance_variable_defined?(:@inputRobotInterface)
    end
    

    def initialize(inputRobotInterface)
        jfields_org_allbinary_input_automation_robot_osgi_InputAutomationRobotInterfaceWrapper
        self.setInputRobotInterface(inputRobotInterface)
    end
    

    def getInputRobotInterface()
        return @inputRobotInterface
    end
    

    def setInputRobotInterface(inputRobotInterface)
        @inputRobotInterface = inputRobotInterface
    end
end

module ::Org; module Allbinary; module Input; module Automation; module Robot; autoload :InputRobotInterface, "org/allbinary/input/automation/robot/InputRobotInterface" unless const_defined?(:InputRobotInterface, false); end; end; end; end; end

end; end; end; end; end; end

