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

require "java/lang/Object"
require "org/allbinary/thread/RunnableInterface"

class AbstractInputAutomationWorker
    include RunnableInterface
    attr_accessor :logUtil, :commonStrings, :index, :running, :inputAutomationActionInterface, :captureWorkerInterface, :imageComparisonWorker, :motionRectanglesWorker, :captureThread

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @index = 0
        @running = false
        @inputAutomationActionInterface = nil
        @captureWorkerInterface = nil
        @imageComparisonWorker = nil
        @motionRectanglesWorker = nil
        @captureThread = nil
    end
    

    def initialize(inputAutomationActionInterface)
        initialize_fields
    end
    

    # throws Exception
    def setThread(thread)
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
    

    def isAnyDataWorkerRunning()
        java_monitor.synchronize do
        if @captureThread != nil && (@captureThread.isAlive() || self.getCaptureWorker().isRunning() || self.getMotionRectanglesWorker().isRunning() || self.getImageComparisonWorker().isRunning())
            return true
        end
        return false
        end
    end
    

    # throws Exception
    def startDataWorkers()
        java_monitor.synchronize do
        if !isAnyDataWorkerRunning()
            @captureThread = JavaThread.new(self.getCaptureWorker())
            @logUtil.putF("Starting CaptureWorkers - Need more images - Thread State: " + @captureThread.getState().to_s, self, "startCaptureWorkers")
            @captureThread.start()
        end
        end
    end
    

    # throws Exception
    def waitForDataWorkers()
        java_monitor.synchronize do
        while isAnyDataWorkerRunning()
            @logUtil.putF("Waiting", self, @commonStrings.RUN)
            sleep((250) / 1000.0)
        end
        end
    end
    

    # throws Exception
    def stopDataWorkers()
        self.getCaptureWorker().setRunning(false)
    end
    

    # throws Exception
    def process()
        raise RuntimeError.new()
    end
    

    def run()
        begin
            @logUtil.putF(@commonStrings.START, self, @commonStrings.RUN)
            self.setRunning(true)
            timeHelper = TimeDelayHelper.new(1000)
            while self.isRunning()
                timeHelper.setStartTimeTNT()
                self.process()
                @index += 1
                @logUtil.putF((CommonLabels.getInstance().ELAPSED + timeHelper.getElapsedTNT()).to_s + " Index: " + (@index).to_s, self, @commonStrings.RUN)
            end
            self.stopDataWorkers()
            self.waitForDataWorkers()
            @logUtil.putF(@commonStrings.END_, self, @commonStrings.RUN)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.RUN, e)
        end
    end
    

    def getInputAutomationActionInterface()
        return @inputAutomationActionInterface
    end
    

    def setInputAutomationActionInterface(inputAutomationActionInterface)
        @inputAutomationActionInterface = inputAutomationActionInterface
    end
    

    def getCaptureWorker()
        return @captureWorkerInterface
    end
    

    def setCaptureWorker(captureWorkerInterface)
        @captureWorkerInterface = captureWorkerInterface
    end
    

    def getImageComparisonWorker()
        return @imageComparisonWorker
    end
    

    def setImageComparisonWorker(imageComparisonWorker)
        @imageComparisonWorker = imageComparisonWorker
    end
    

    def getMotionRectanglesWorker()
        return @motionRectanglesWorker
    end
    

    def setMotionRectanglesWorker(motionRectanglesWorker)
        @motionRectanglesWorker = motionRectanglesWorker
    end
end

require "org/allbinary/input/media/image/capture/CaptureWorkerInterface"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/media/image/comparison/ImageComparisonWorker"
require "org/allbinary/media/image/comparison/motion/MotionRectanglesWorker"
require "org/allbinary/string/CommonLabels"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/time/TimeDelayHelper"
require "org/allbinary/input/automation/module/InputAutomationActionInterface"
require "java/lang/Thread"

