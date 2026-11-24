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

class MouseInputAutomationProcessor
    

    def initialize()
    end
    

    # throws Exception
    def self.process(mouseActionScriptInputInterface)
        logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append("Start - Processing Mouse Input at: ").append(mouseActionScriptInputInterface.getPoint().to_s).append(" clicks: ").appendint(((mouseActionScriptInputInterface.getButtonClicks()).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })).to_s, "MouseInputAutomationProcessor", commonStrings.PROCESS)
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

module ::Org; module Allbinary; module Input; module Automation; module Robot; autoload :InputRobotInterface, "org/allbinary/input/automation/robot/InputRobotInterface" unless const_defined?(:InputRobotInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
autoload :MouseActionScriptInputInterface, "org/allbinary/input/automation/actions/script/condition/processors/input/MouseActionScriptInputInterface" unless const_defined?(:MouseActionScriptInputInterface, false)
require "java/lang/Thread"

end; end; end; end; end; end; end; end; end

