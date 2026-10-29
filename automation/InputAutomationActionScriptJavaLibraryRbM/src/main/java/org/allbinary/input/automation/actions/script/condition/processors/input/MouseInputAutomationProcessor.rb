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
# package org.allbinary.input.automation.actions.script.condition.processors.input


class MouseInputAutomationProcessor
    

    def initialize()
    end
    

    # throws Exception
    def self.process(mouseActionScriptInputInterface)
        logUtil = LogUtil.getInstance()
        commonStrings = CommonStrings.getInstance()
        logUtil.putF(StringMaker.new().append("Start - Processing Mouse Input at: ").append(mouseActionScriptInputInterface.getPoint().to_s).append(" clicks: ").appendint((mouseActionScriptInputInterface.getButtonClicks()).to_i).to_s, "MouseInputAutomationProcessor", commonStrings.PROCESS)
        inputRobotInterface = mouseActionScriptInputInterface.getInputRobotInterface()
        if mouseActionScriptInputInterface.getPoint().x != -1 && mouseActionScriptInputInterface.getPoint().y != -1
            inputRobotInterface.mouseMove(mouseActionScriptInputInterface.getPoint())
        end
        sleep((mouseActionScriptInputInterface.getTime()) / 1000.0)
        if mouseActionScriptInputInterface.getButtonClicks() != 0
            inputRobotInterface.mousePress(mouseActionScriptInputInterface.getButtonClicks())
            sleep((mouseActionScriptInputInterface.getTime()) / 1000.0)
            inputRobotInterface.mouseRelease(mouseActionScriptInputInterface.getButtonClicks())
        end
        sleep((mouseActionScriptInputInterface.getTime()) / 1000.0)
    end
end

require "org/allbinary/input/automation/robot/InputRobotInterface"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/input/automation/actions/script/condition/processors/input/MouseActionScriptInputInterface"
require "java/lang/Thread"

