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
# package org.allbinary.input.media.image.capture

require "java/lang/Object"
# require "java/awt/image/BufferedImage"
require "org/allbinary/logic/util/event/handler/BasicEventHandler"
require "org/allbinary/input/media/image/capture/CaptureWorkerInterface"

class ScreenCaptureImagesWorker < BasicEventHandler
    include CaptureWorkerInterface
    attr_accessor :logUtil, :commonStrings, :running, :screenScavangerRobot

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @running = false
        @screenScavangerRobot = nil
    end
    

    def initialize()
        super()
        initialize_fields
        @screenScavangerRobot = ScreenScavangerRobot.new()
        ScreenCaptureImagesWorker.index = ProcessingFrameIndexFactory.next_()
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
    

    # throws Exception
    def setThread(thread)
    end
    

    def run()
        begin
            @logUtil.putF(@commonStrings.START, self, @commonStrings.RUN)
            self.setRunning(true)
            timeHelper = TimeDelayHelper.new(1000)
            while isRunning()
                timeHelper.setStartTimeTNT()
                bufferedImage = @screenScavangerRobot.getScreenAsBufferedImages()[0]
                frame = @@index
                ScreenCaptureImagesWorker.index += 1
                CapturedBufferedImagesCacheSingleton.getInstance().add(BufferedImageFrameCacheable.new(bufferedImage, frame))
                capturedImageEvent = CapturedImageWorkerResultsEvent.new(self, frame, bufferedImage)
                fireEvent(capturedImageEvent)
                @logUtil.putF(CommonLabels.getInstance().ELAPSED + timeHelper.getElapsedTNT(), self, @commonStrings.RUN)
                self.setRunning(false)
            end
            @logUtil.putF(@commonStrings.END_, self, @commonStrings.RUN)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.RUN, e)
        end
    end

    def self.index()
        return defined?(@@index) ? @@index : nil
    end

    def self.index=(value)
        @@index = value
    end
end

require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/media/image/cache/BufferedImageFrameCacheable"
require "org/allbinary/string/CommonLabels"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/time/TimeDelayHelper"
require "org/allbinary/input/media/image/capture/CapturedBufferedImagesCacheSingleton"
require "org/allbinary/input/media/image/capture/CapturedImageWorkerResultsEvent"
require "org/allbinary/input/media/image/capture/ProcessingFrameIndexFactory"
require "org/allbinary/input/media/image/capture/ScreenScavangerRobot"
require "java/lang/Thread"

class ScreenCaptureImagesWorker
    @@index = nil
end

