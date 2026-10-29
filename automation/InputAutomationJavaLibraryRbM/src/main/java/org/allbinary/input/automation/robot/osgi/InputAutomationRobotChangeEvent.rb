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


class InputAutomationRobotChangeEvent
    attr_accessor :inputAutomationRobotInterfaceWrapper

    def initialize_fields
        @inputAutomationRobotInterfaceWrapper = nil
    end
    

    def initialize(inputAutomationRobotInterfaceWrapper)
        initialize_fields
        self.setInputAutomationRobotInterfaceWrapper(inputAutomationRobotInterfaceWrapper)
    end
    

    def getInputAutomationRobotInterfaceWrapper()
        return @inputAutomationRobotInterfaceWrapper
    end
    

    def setInputAutomationRobotInterfaceWrapper(inputAutomationRobotInterfaceWrapper)
        @inputAutomationRobotInterfaceWrapper = inputAutomationRobotInterfaceWrapper
    end
end

require "org/allbinary/input/automation/robot/osgi/InputAutomationRobotInterfaceWrapper"

