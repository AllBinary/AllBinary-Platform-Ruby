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
require "java/lang/JavaOverload"
require "java/lang/JavaClass"
# require "java/awt/Rectangle"
# require "java/awt/event/InputEvent"
# require "java/awt/event/KeyEvent"
require "org/allbinary/media/image/comparison/motion/MotionRectanglesResultsListener"

module ::Org; module Allbinary; module Media; module Image; module Comparison; module Motion

class TestInputForMotionRectanglesResultsWorker
    include MotionRectanglesResultsListener
    attr_accessor :logUtil, :commonStrings, :index, :running, :motionRectanglesVector

    def jfields_org_allbinary_media_image_comparison_motion_TestInputForMotionRectanglesResultsWorker
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @index = 0 unless instance_variable_defined?(:@index)
        @running = false unless instance_variable_defined?(:@running)
        @motionRectanglesVector = nil unless instance_variable_defined?(:@motionRectanglesVector)
    end
    

    def initialize()
        jfields_org_allbinary_media_image_comparison_motion_TestInputForMotionRectanglesResultsWorker
        @motionRectanglesVector = ::Org::Allbinary::Util::BasicArrayListD.new()
    end
    

    def getMotionRectanglesVector()
        return @motionRectanglesVector
    end
    java_overload :getMotionRectanglesVector, 0
    

    def onMotionRectanglesImageComparisonResultsEvent(motionRectanglesImageComparisonResultsEvent)
        self.getMotionRectanglesVector().add(motionRectanglesImageComparisonResultsEvent.getMotionRectangles())
        self.run()
    end
    java_overload :onMotionRectanglesImageComparisonResultsEvent, 1
    

    def onEvent(allBinaryEventObject)
        self.onMotionRectanglesImageComparisonResultsEvent(allBinaryEventObject)
    end
    java_overload :onEvent, 1
    

    def isRunning()
        java_monitor.synchronize do
        return @running
        end
    end
    java_overload :isRunning, 0
    

    def setRunning(running)
        java_monitor.synchronize do
        @running = running
        end
    end
    java_overload :setRunning, 1
    

    def run()
        begin
            @logUtil.putF(@commonStrings.START, self, @commonStrings.RUN)
            self.setRunning(true)
            timeHelper = ::Org::Allbinary::TimePackage::TimeDelayHelper.new(1000)
            timeHelper.setStartTimeTNT()
            motionRectangles = self.getMotionRectanglesVector().get(0)
            motionRectangleVector = motionRectangles.getVector()
            if motionRectangleVector.size() > 0
                rectangle = motionRectangleVector.get(0)
                robotHashtable = ::Org::Allbinary::Input::Automation::Robot::InputRobotFactory.getInstance().get()
                inputTypeNameArray = robotHashtable.keySet().toArray()
                size = inputTypeNameArray.length
                (0...size).each do |index|
                    inputTypeNameString = inputTypeNameArray[index]
                    inputRobotInterface = robotHashtable.get(inputTypeNameString)
                    inputRobotInterface.mouseMoveToTarget(rectangle)
                    if inputRobotInterface.getName().compareTo(::Org::Allbinary::Input::Automation::Robot::TempInputRobotNames::DX_NAME) == 0
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
            @logUtil.putF(::Org::Allbinary::StringPackage::CommonLabels.getInstance().ELAPSED + timeHelper.getElapsedTNT(), self, @commonStrings.RUN)
            @logUtil.putF(@commonStrings.END_, self, @commonStrings.RUN)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.RUN, e)
        end
    end
    java_overload :run, 0
end

module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Input; module Automation; module Robot; autoload :InputRobotFactory, "org/allbinary/input/automation/robot/InputRobotFactory" unless const_defined?(:InputRobotFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Input; module Automation; module Robot; autoload :InputRobotInterface, "org/allbinary/input/automation/robot/InputRobotInterface" unless const_defined?(:InputRobotInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Input; module Automation; module Robot; autoload :TempInputRobotNames, "org/allbinary/input/automation/robot/TempInputRobotNames" unless const_defined?(:TempInputRobotNames, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Event; autoload :AllBinaryEventObject, "org/allbinary/logic/util/event/AllBinaryEventObject" unless const_defined?(:AllBinaryEventObject, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonLabels, "org/allbinary/string/CommonLabels" unless const_defined?(:CommonLabels, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module TimePackage; autoload :TimeDelayHelper, "org/allbinary/time/TimeDelayHelper" unless const_defined?(:TimeDelayHelper, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :ABHashtable, "org/allbinary/util/ABHashtable" unless const_defined?(:ABHashtable, false); end; end; end
autoload :MotionRectangles, "org/allbinary/media/image/comparison/motion/MotionRectangles" unless const_defined?(:MotionRectangles, false)
autoload :MotionRectanglesResultsEvent, "org/allbinary/media/image/comparison/motion/MotionRectanglesResultsEvent" unless const_defined?(:MotionRectanglesResultsEvent, false)
require "java/lang/Thread"

end; end; end; end; end; end

