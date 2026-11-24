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


module ::Org; module Allbinary; module Input; module Automation; module Actions; module Script; module Condition; module Processors; module Input

class KeyboardInputAutomationProcessor
    

    def initialize()
    end
    

    # throws Exception
    def self.process(keyActionScriptInputInterface)
        logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        logUtil.putF((::Org::Allbinary::StringPackage::CommonLabels.getInstance().START).to_s + keyActionScriptInputInterface.to_s, "KeyInputAutomationProcessor", commonStrings.PROCESS)
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
                timeHelper = ::Org::Allbinary::TimePackage::TimeDelayHelper.new(keyActionScriptInputInterface.getDelayBetweenKeys())
                toLong = 0
                while !timeHelper.isTimeTNT() || toLong > 6000
                    toLong += 1
                    sleep((50) / 1000.0)
                end
            end
        end
    end
end

module ::Org; module Allbinary; module Input; module Automation; module Robot; autoload :InputRobotInterface, "org/allbinary/input/automation/robot/InputRobotInterface" unless const_defined?(:InputRobotInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonLabels, "org/allbinary/string/CommonLabels" unless const_defined?(:CommonLabels, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module TimePackage; autoload :TimeDelayHelper, "org/allbinary/time/TimeDelayHelper" unless const_defined?(:TimeDelayHelper, false); end; end; end
autoload :KeyboardActionScriptInputInterface, "org/allbinary/input/automation/actions/script/condition/processors/input/KeyboardActionScriptInputInterface" unless const_defined?(:KeyboardActionScriptInputInterface, false)
require "java/lang/Thread"

end; end; end; end; end; end; end; end; end

