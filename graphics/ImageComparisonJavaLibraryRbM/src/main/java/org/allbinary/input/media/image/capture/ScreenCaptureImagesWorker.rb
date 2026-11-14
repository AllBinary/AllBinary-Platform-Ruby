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
        ScreenCaptureImagesWorker.java_static_fields unless @java_static_fields_started
        return defined?(@@index) ? @@index : nil
    end

    def self.index=(value)
        ScreenCaptureImagesWorker.java_static_fields unless @java_static_fields_started
        @@index = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@index = nil
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "ScreenCaptureImagesWorker"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :BufferedImageFrameCacheable, "org/allbinary/media/image/cache/BufferedImageFrameCacheable"
autoload :CommonLabels, "org/allbinary/string/CommonLabels"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :TimeDelayHelper, "org/allbinary/time/TimeDelayHelper"
autoload :CapturedBufferedImagesCacheSingleton, "org/allbinary/input/media/image/capture/CapturedBufferedImagesCacheSingleton"
autoload :CapturedImageWorkerResultsEvent, "org/allbinary/input/media/image/capture/CapturedImageWorkerResultsEvent"
autoload :ProcessingFrameIndexFactory, "org/allbinary/input/media/image/capture/ProcessingFrameIndexFactory"
autoload :ScreenScavangerRobot, "org/allbinary/input/media/image/capture/ScreenScavangerRobot"
require "java/lang/Thread"

begin
    ScreenCaptureImagesWorker.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

