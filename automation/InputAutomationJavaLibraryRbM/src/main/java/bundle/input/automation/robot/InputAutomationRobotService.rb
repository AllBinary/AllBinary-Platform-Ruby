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
# package bundle.input.automation.robot

require "java/lang/JavaOverload"
require "bundle/input/automation/robot/InputAutomationRobotServiceInterface"

module ::Bundle; module Input; module Automation; module Robot

class InputAutomationRobotService
    include InputAutomationRobotServiceInterface
    attr_accessor :inputRobotInterfaceArray

    def jfields_bundle_input_automation_robot_InputAutomationRobotService
        @inputRobotInterfaceArray = nil unless instance_variable_defined?(:@inputRobotInterfaceArray)
    end
    

    def initialize(inputRobotInterfaceArray)
        jfields_bundle_input_automation_robot_InputAutomationRobotService
        self.setInputRobotInterfaceArray(inputRobotInterfaceArray)
    end
    

    def getInputRobotInterfaceArray()
        return @inputRobotInterfaceArray
    end
    java_overload :getInputRobotInterfaceArray, 0
    

    def setInputRobotInterfaceArray(inputRobotInterfaceArray)
        @inputRobotInterfaceArray = inputRobotInterfaceArray
    end
    java_overload :setInputRobotInterfaceArray, 1
end

module ::Org; module Allbinary; module Input; module Automation; module Robot; autoload :InputRobotInterface, "org/allbinary/input/automation/robot/InputRobotInterface" unless const_defined?(:InputRobotInterface, false); end; end; end; end; end

end; end; end; end

