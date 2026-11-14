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

require "org/allbinary/osgi/OSGIServiceVisitorInterface"

class InputAutomationRobotOSGIServiceVisitor
    include OSGIServiceVisitorInterface
    attr_accessor :logUtil, :commonStrings

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
    end
    

    def initialize()
        initialize_fields
    end
    

    def visit(anyType)
        return self.visit(anyType)
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def visit(osgiServiceInterface)
        begin
            @logUtil.putF(@commonStrings.START, self, "visit")
            inputAutomationRobotServiceInterface = osgiServiceInterface
            inputRobotInterfaceArray = inputAutomationRobotServiceInterface.getInputRobotInterfaceArray()
            (0...inputRobotInterfaceArray.length).each do |index|
                @logUtil.putF("Adding: " + inputRobotInterfaceArray[index].getName(), self, "visit")
                InputRobotFactory.getInstance().add(inputRobotInterfaceArray[index])
            end
            return true
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "visit", e)
            return false
        end
    end
end

autoload :InputAutomationRobotServiceInterface, "bundle/input/automation/robot/InputAutomationRobotServiceInterface"
autoload :InputRobotFactory, "org/allbinary/input/automation/robot/InputRobotFactory"
autoload :InputRobotInterface, "org/allbinary/input/automation/robot/InputRobotInterface"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :OSGIServiceInterface, "org/allbinary/osgi/OSGIServiceInterface"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"

