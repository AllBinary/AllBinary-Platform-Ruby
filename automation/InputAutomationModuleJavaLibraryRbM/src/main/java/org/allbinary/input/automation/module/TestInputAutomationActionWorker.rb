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

# require "java/util/Set"
require "org/allbinary/input/automation/module/AbstractInputAutomationWorker"

class TestInputAutomationActionWorker < AbstractInputAutomationWorker
    attr_accessor :logUtil, :sleep

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @sleep = nil
    end
    

    def initialize(sleep, inputAutomationActionInterface, imageComparatorConstraintsInterface, motionRectangleConstraintsInterface)
        super(inputAutomationActionInterface)
        initialize_fields
        @logUtil.putF("BasicTestAttackWorder", self, @commonStrings.CONSTRUCTOR)
        @sleep = sleep
    end
    

    # throws Exception
    def processBetweenWorkers()
        sleep((2000) / 1000.0)
    end
    

    # throws Exception
    def process()
        @logUtil.putF(@commonStrings.START, self, @commonStrings.PROCESS)
        hashtable = InputRobotFactory.getInstance().get()
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
end

require "org/allbinary/input/automation/robot/InputRobotFactory"
require "org/allbinary/input/automation/robot/InputRobotInterface"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/media/image/comparison/ImageComparatorConstraintsInterface"
require "org/allbinary/media/image/comparison/motion/MotionRectangleConstraintsInterface"
require "org/allbinary/util/ABHashtable"
require "org/allbinary/input/automation/module/InputAutomationActionInterface"
require "java/lang/Thread"

