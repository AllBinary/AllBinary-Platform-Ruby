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


class InputAutomationRobotUtil
    

    def initialize()
    end
    

    # throws Exception
    def self.getChangeEvent(inputRobotInterface)
        inputAutomationRobotInterfaceWrapper = InputAutomationRobotInterfaceWrapper.new(inputRobotInterface)
        inputAutomationRobotChangeEvent = InputAutomationRobotChangeEvent.new(inputAutomationRobotInterfaceWrapper)
        return inputAutomationRobotChangeEvent
    end
end

require "org/allbinary/input/automation/robot/InputRobotInterface"
require "org/allbinary/input/automation/robot/osgi/InputAutomationRobotChangeEvent"
require "org/allbinary/input/automation/robot/osgi/InputAutomationRobotInterfaceWrapper"

