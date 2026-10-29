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


class InputAutomationRobotInterfaceWrapper
    attr_accessor :inputRobotInterface

    def initialize_fields
        @inputRobotInterface = nil
    end
    

    def initialize(inputRobotInterface)
        initialize_fields
        self.setInputRobotInterface(inputRobotInterface)
    end
    

    def getInputRobotInterface()
        return @inputRobotInterface
    end
    

    def setInputRobotInterface(inputRobotInterface)
        @inputRobotInterface = inputRobotInterface
    end
end

require "org/allbinary/input/automation/robot/InputRobotInterface"

