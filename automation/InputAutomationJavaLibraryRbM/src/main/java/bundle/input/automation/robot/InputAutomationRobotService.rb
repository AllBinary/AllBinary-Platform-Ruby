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

require "bundle/input/automation/robot/InputAutomationRobotServiceInterface"

class InputAutomationRobotService
    include InputAutomationRobotServiceInterface
    attr_accessor :inputRobotInterfaceArray

    def initialize_fields
        @inputRobotInterfaceArray = nil
    end
    

    def initialize(inputRobotInterfaceArray)
        initialize_fields
        self.setInputRobotInterfaceArray(inputRobotInterfaceArray)
    end
    

    def getInputRobotInterfaceArray()
        return @inputRobotInterfaceArray
    end
    

    def setInputRobotInterfaceArray(inputRobotInterfaceArray)
        @inputRobotInterfaceArray = inputRobotInterfaceArray
    end
end

require "org/allbinary/input/automation/robot/InputRobotInterface"

