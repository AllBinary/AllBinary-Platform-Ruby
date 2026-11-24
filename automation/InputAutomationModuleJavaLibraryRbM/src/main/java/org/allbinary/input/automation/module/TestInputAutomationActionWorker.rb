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
# package org.allbinary.input.automation.module

require "java/lang/JavaOverload"
# require "java/util/Set"
require "org/allbinary/input/automation/module/AbstractInputAutomationWorker"

module ::Org; module Allbinary; module Input; module Automation; module ModulePackage

class TestInputAutomationActionWorker < AbstractInputAutomationWorker
    attr_accessor :logUtil, :sleep

    def jfields_org_allbinary_input_automation_module_TestInputAutomationActionWorker
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @sleep = nil unless instance_variable_defined?(:@sleep)
    end
    

    def initialize(sleep, inputAutomationActionInterface, imageComparatorConstraintsInterface, motionRectangleConstraintsInterface)
        super(inputAutomationActionInterface)
        jfields_org_allbinary_input_automation_module_TestInputAutomationActionWorker
        @logUtil.putF("BasicTestAttackWorder", self, @commonStrings.CONSTRUCTOR)
        @sleep = sleep
    end
    

    # throws Exception
    def processBetweenWorkers()
        sleep((2000) / 1000.0)
    end
    java_overload :processBetweenWorkers, 0
    

    # throws Exception
    def process()
        @logUtil.putF(@commonStrings.START, self, @commonStrings.PROCESS)
        hashtable = ::Org::Allbinary::Input::Automation::Robot::InputRobotFactory.getInstance().get()
        set = hashtable.keySet()
        inputTypeNameArray = set.toArray()
        size = inputTypeNameArray.length
        (0...size).each do |index|
            inputTypeNameString = inputTypeNameArray[index]
            robot = hashtable.get(inputTypeNameString)
            if @sleep > 0
                sleep((@sleep) / 1000.0)
            end
        end
    end
    java_overload :process, 0
end

module ::Org; module Allbinary; module Input; module Automation; module Robot; autoload :InputRobotFactory, "org/allbinary/input/automation/robot/InputRobotFactory" unless const_defined?(:InputRobotFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Input; module Automation; module Robot; autoload :InputRobotInterface, "org/allbinary/input/automation/robot/InputRobotInterface" unless const_defined?(:InputRobotInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Media; module Image; module Comparison; autoload :ImageComparatorConstraintsInterface, "org/allbinary/media/image/comparison/ImageComparatorConstraintsInterface" unless const_defined?(:ImageComparatorConstraintsInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Media; module Image; module Comparison; module Motion; autoload :MotionRectangleConstraintsInterface, "org/allbinary/media/image/comparison/motion/MotionRectangleConstraintsInterface" unless const_defined?(:MotionRectangleConstraintsInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Util; autoload :ABHashtable, "org/allbinary/util/ABHashtable" unless const_defined?(:ABHashtable, false); end; end; end
autoload :InputAutomationActionInterface, "org/allbinary/input/automation/module/InputAutomationActionInterface" unless const_defined?(:InputAutomationActionInterface, false)
require "java/lang/Thread"

end; end; end; end; end

