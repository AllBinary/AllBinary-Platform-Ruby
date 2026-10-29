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


class KeyboardInputAutomationProcessor
    

    def initialize()
    end
    

    # throws Exception
    def self.process(keyActionScriptInputInterface)
        logUtil = LogUtil.getInstance()
        commonStrings = CommonStrings.getInstance()
        logUtil.putF((CommonLabels.getInstance().START).to_s + keyActionScriptInputInterface.to_s, "KeyInputAutomationProcessor", commonStrings.PROCESS)
        inputRobotInterface = keyActionScriptInputInterface.getInputRobotInterface()
        integer = keyActionScriptInputInterface.getKeyArray()
        if keyActionScriptInputInterface.getDelayBetweenKeys() == 0
            (0...keyActionScriptInputInterface.getKeyArray().length).each do |index|
                if keyActionScriptInputInterface.isPress()
                    inputRobotInterface.keyPress(integer[index])
                end
            end
            sleep((keyActionScriptInputInterface.getTime()) / 1000.0)
            (keyActionScriptInputInterface.getKeyArray().length - 1).step(0, -(1)) do |index|
                if keyActionScriptInputInterface.isRelease()
                    inputRobotInterface.keyRelease(integer[index])
                end
            end
        else
            (0...keyActionScriptInputInterface.getKeyArray().length).each do |index|
                if keyActionScriptInputInterface.isPress()
                    inputRobotInterface.keyPress(integer[index])
                end
                sleep((keyActionScriptInputInterface.getTime()) / 1000.0)
                if keyActionScriptInputInterface.isRelease()
                    inputRobotInterface.keyRelease(integer[index])
                end
                timeHelper = TimeDelayHelper.new(keyActionScriptInputInterface.getDelayBetweenKeys())
                toLong = 0
                while !timeHelper.isTimeTNT() || toLong > 6000
                    toLong += 1
                    sleep((50) / 1000.0)
                end
            end
        end
    end
end

require "org/allbinary/input/automation/robot/InputRobotInterface"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/string/CommonLabels"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/time/TimeDelayHelper"
require "org/allbinary/input/automation/actions/script/condition/processors/input/KeyboardActionScriptInputInterface"
require "java/lang/Thread"

