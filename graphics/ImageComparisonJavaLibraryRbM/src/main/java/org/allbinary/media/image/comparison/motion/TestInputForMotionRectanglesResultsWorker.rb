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
# package org.allbinary.media.image.comparison.motion

require "java/lang/Object"
# require "java/awt/Rectangle"
# require "java/awt/event/InputEvent"
# require "java/awt/event/KeyEvent"
require "org/allbinary/media/image/comparison/motion/MotionRectanglesResultsListener"

class TestInputForMotionRectanglesResultsWorker
    include MotionRectanglesResultsListener
    attr_accessor :logUtil, :commonStrings, :index, :running, :motionRectanglesVector

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @index = 0
        @running = false
        @motionRectanglesVector = nil
    end
    

    def initialize()
        initialize_fields
        @motionRectanglesVector = BasicArrayListD.new()
    end
    

    def getMotionRectanglesVector()
        return @motionRectanglesVector
    end
    

    def onMotionRectanglesImageComparisonResultsEvent(motionRectanglesImageComparisonResultsEvent)
        self.getMotionRectanglesVector().add(motionRectanglesImageComparisonResultsEvent.getMotionRectangles())
        self.run()
    end
    

    def onEvent(allBinaryEventObject)
        self.onMotionRectanglesImageComparisonResultsEvent(allBinaryEventObject)
    end
    

    def isRunning()
        java_monitor.synchronize do
        return @running
        end
    end
    

    def setRunning(running)
        java_monitor.synchronize do
        @running = running
        end
    end
    

    def run()
        begin
            @logUtil.putF(@commonStrings.START, self, @commonStrings.RUN)
            self.setRunning(true)
            timeHelper = TimeDelayHelper.new(1000)
            timeHelper.setStartTimeTNT()
            motionRectangles = self.getMotionRectanglesVector().get(0)
            motionRectangleVector = motionRectangles.getVector()
            if motionRectangleVector.size() > 0
                rectangle = motionRectangleVector.get(0)
                robotHashtable = InputRobotFactory.getInstance().get()
                inputTypeNameArray = robotHashtable.keySet().toArray()
                size = inputTypeNameArray.length
                (0...size).each do |index|
                    inputTypeNameString = inputTypeNameArray[index]
                    inputRobotInterface = robotHashtable.get(inputTypeNameString)
                    inputRobotInterface.mouseMoveToTarget(rectangle)
                    if inputRobotInterface.getName().compareTo(TempInputRobotNames::DX_NAME) == 0
                        inputRobotInterface.mousePress(InputEvent::BUTTON1_MASK)
                        sleep((300) / 1000.0)
                        inputRobotInterface.mouseRelease(InputEvent::BUTTON1_MASK)
                        inputRobotInterface.mousePress(InputEvent::BUTTON2_MASK)
                        sleep((300) / 1000.0)
                        inputRobotInterface.mouseRelease(InputEvent::BUTTON2_MASK)
                        inputRobotInterface.mousePress(InputEvent::BUTTON3_MASK)
                        sleep((300) / 1000.0)
                        inputRobotInterface.mouseRelease(InputEvent::BUTTON3_MASK)
                        inputRobotInterface.keyPress(KeyEvent::VK_1)
                        sleep((300) / 1000.0)
                        inputRobotInterface.keyRelease(KeyEvent::VK_1)
                        inputRobotInterface.keyPress(KeyEvent::VK_2)
                        sleep((300) / 1000.0)
                        inputRobotInterface.keyRelease(KeyEvent::VK_2)
                        inputRobotInterface.keyPress(KeyEvent::VK_3)
                        sleep((300) / 1000.0)
                        inputRobotInterface.keyRelease(KeyEvent::VK_3)
                        inputRobotInterface.keyPress(KeyEvent::VK_4)
                        sleep((300) / 1000.0)
                        inputRobotInterface.keyRelease(KeyEvent::VK_4)
                        inputRobotInterface.keyPress(KeyEvent::VK_F1)
                        sleep((300) / 1000.0)
                        inputRobotInterface.keyRelease(KeyEvent::VK_F1)
                    end
                end
            end
            @index += 1
            self.getMotionRectanglesVector().remove(motionRectangles)
            @logUtil.putF(CommonLabels.getInstance().ELAPSED + timeHelper.getElapsedTNT(), self, @commonStrings.RUN)
            @logUtil.putF(@commonStrings.END_, self, @commonStrings.RUN)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.RUN, e)
        end
    end
end

require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/input/automation/robot/InputRobotFactory"
require "org/allbinary/input/automation/robot/InputRobotInterface"
require "org/allbinary/input/automation/robot/TempInputRobotNames"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/util/event/AllBinaryEventObject"
require "org/allbinary/string/CommonLabels"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/time/TimeDelayHelper"
require "org/allbinary/util/ABHashtable"
require "org/allbinary/media/image/comparison/motion/MotionRectangles"
require "org/allbinary/media/image/comparison/motion/MotionRectanglesResultsEvent"
require "java/lang/Thread"

