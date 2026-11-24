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
require "java/lang/JavaOverload"
require "org/allbinary/thread/RunnableInterface"

module ::Org; module Allbinary; module Input; module Automation; module ModulePackage

class AbstractInputAutomationWorker
    include ::Org::Allbinary::ThreadPackage::RunnableInterface
    attr_accessor :logUtil, :commonStrings, :index, :running, :inputAutomationActionInterface, :captureWorkerInterface, :imageComparisonWorker, :motionRectanglesWorker, :captureThread

    def jfields_org_allbinary_input_automation_module_AbstractInputAutomationWorker
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @index = 0 unless instance_variable_defined?(:@index)
        @running = false unless instance_variable_defined?(:@running)
        @inputAutomationActionInterface = nil unless instance_variable_defined?(:@inputAutomationActionInterface)
        @captureWorkerInterface = nil unless instance_variable_defined?(:@captureWorkerInterface)
        @imageComparisonWorker = nil unless instance_variable_defined?(:@imageComparisonWorker)
        @motionRectanglesWorker = nil unless instance_variable_defined?(:@motionRectanglesWorker)
        @captureThread = nil unless instance_variable_defined?(:@captureThread)
    end
    

    def initialize(inputAutomationActionInterface)
        jfields_org_allbinary_input_automation_module_AbstractInputAutomationWorker
    end
    

    # throws Exception
    def setThread(thread)
    end
    java_overload :setThread, 1
    

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
    

    def isAnyDataWorkerRunning()
        java_monitor.synchronize do
        if @captureThread != nil && (@captureThread.isAlive() || self.getCaptureWorker().isRunning() || self.getMotionRectanglesWorker().isRunning() || self.getImageComparisonWorker().isRunning())
            return true
        end
        return false
        end
    end
    java_overload :isAnyDataWorkerRunning, 0
    

    # throws Exception
    def startDataWorkers()
        java_monitor.synchronize do
        if !isAnyDataWorkerRunning()
            @captureThread = ::Java::Lang::JavaThread.new(self.getCaptureWorker())
            @logUtil.putF("Starting CaptureWorkers - Need more images - Thread State: " + @captureThread.getState().to_s, self, "startCaptureWorkers")
            @captureThread.start()
        end
        end
    end
    java_overload :startDataWorkers, 0
    

    # throws Exception
    def waitForDataWorkers()
        java_monitor.synchronize do
        while isAnyDataWorkerRunning()
            @logUtil.putF("Waiting", self, @commonStrings.RUN)
            sleep((250) / 1000.0)
        end
        end
    end
    java_overload :waitForDataWorkers, 0
    

    # throws Exception
    def stopDataWorkers()
        self.getCaptureWorker().setRunning(false)
    end
    java_overload :stopDataWorkers, 0
    

    # throws Exception
    def process()
        raise RuntimeError.new()
    end
    java_overload :process, 0
    

    def run()
        begin
            @logUtil.putF(@commonStrings.START, self, @commonStrings.RUN)
            self.setRunning(true)
            timeHelper = ::Org::Allbinary::TimePackage::TimeDelayHelper.new(1000)
            while self.isRunning()
                timeHelper.setStartTimeTNT()
                self.process()
                @index += 1
                @logUtil.putF((::Org::Allbinary::StringPackage::CommonLabels.getInstance().ELAPSED + timeHelper.getElapsedTNT()).to_s + " Index: " + (@index).to_s, self, @commonStrings.RUN)
            end
            self.stopDataWorkers()
            self.waitForDataWorkers()
            @logUtil.putF(@commonStrings.END_, self, @commonStrings.RUN)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.RUN, e)
        end
    end
    java_overload :run, 0
    

    def getInputAutomationActionInterface()
        return @inputAutomationActionInterface
    end
    java_overload :getInputAutomationActionInterface, 0
    

    def setInputAutomationActionInterface(inputAutomationActionInterface)
        @inputAutomationActionInterface = inputAutomationActionInterface
    end
    java_overload :setInputAutomationActionInterface, 1
    

    def getCaptureWorker()
        return @captureWorkerInterface
    end
    java_overload :getCaptureWorker, 0
    

    def setCaptureWorker(captureWorkerInterface)
        @captureWorkerInterface = captureWorkerInterface
    end
    java_overload :setCaptureWorker, 1
    

    def getImageComparisonWorker()
        return @imageComparisonWorker
    end
    java_overload :getImageComparisonWorker, 0
    

    def setImageComparisonWorker(imageComparisonWorker)
        @imageComparisonWorker = imageComparisonWorker
    end
    java_overload :setImageComparisonWorker, 1
    

    def getMotionRectanglesWorker()
        return @motionRectanglesWorker
    end
    java_overload :getMotionRectanglesWorker, 0
    

    def setMotionRectanglesWorker(motionRectanglesWorker)
        @motionRectanglesWorker = motionRectanglesWorker
    end
    java_overload :setMotionRectanglesWorker, 1
end

module ::Org; module Allbinary; module Input; module Media; module Image; module Capture; autoload :CaptureWorkerInterface, "org/allbinary/input/media/image/capture/CaptureWorkerInterface" unless const_defined?(:CaptureWorkerInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Media; module Image; module Comparison; autoload :ImageComparisonWorker, "org/allbinary/media/image/comparison/ImageComparisonWorker" unless const_defined?(:ImageComparisonWorker, false); end; end; end; end; end
module ::Org; module Allbinary; module Media; module Image; module Comparison; module Motion; autoload :MotionRectanglesWorker, "org/allbinary/media/image/comparison/motion/MotionRectanglesWorker" unless const_defined?(:MotionRectanglesWorker, false); end; end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonLabels, "org/allbinary/string/CommonLabels" unless const_defined?(:CommonLabels, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module TimePackage; autoload :TimeDelayHelper, "org/allbinary/time/TimeDelayHelper" unless const_defined?(:TimeDelayHelper, false); end; end; end
autoload :InputAutomationActionInterface, "org/allbinary/input/automation/module/InputAutomationActionInterface" unless const_defined?(:InputAutomationActionInterface, false)
require "java/lang/Thread"

end; end; end; end; end

