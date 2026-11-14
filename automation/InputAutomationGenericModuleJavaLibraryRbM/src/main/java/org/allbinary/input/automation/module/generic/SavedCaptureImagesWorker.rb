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
# package org.allbinary.input.automation.module.generic

require "java/lang/Object"
# require "java/awt/image/BufferedImage"
# require "java/io/File"
# require "javax/imageio/ImageIO"
require "org/allbinary/input/media/image/capture/CaptureWorkerInterface"
require "org/allbinary/logic/util/event/handler/BasicEventHandler"

class SavedCaptureImagesWorker < BasicEventHandler
    include CaptureWorkerInterface
    attr_accessor :logUtil, :commonStrings, :running, :screenScavangerRobot, :savedCaptureGenericProfileDataWorkerType

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @running = false
        @screenScavangerRobot = nil
        @savedCaptureGenericProfileDataWorkerType = nil
    end
    

    def initialize(savedCaptureGenericProfileDataWorkerType)
        super()
        initialize_fields
        @savedCaptureGenericProfileDataWorkerType = savedCaptureGenericProfileDataWorkerType
        @screenScavangerRobot = ScreenScavangerRobot.new()
        SavedCaptureImagesWorker.index = ProcessingFrameIndexFactory.next_()
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
    

    def run()
        begin
            @logUtil.putF(@commonStrings.START, self, @commonStrings.RUN)
            self.setRunning(true)
            timeHelper = TimeDelayHelper.new(1000)
            while self.isRunning()
                timeHelper.setStartTimeTNT()
                frame = @@index
                filePathStringBuffer = StringMaker.new()
                filePathStringBuffer.append(@savedCaptureGenericProfileDataWorkerType.getPath())
                filePathStringBuffer.append(LongUtil.fillIn(frame.to_s))
                filePathStringBuffer.append(MediaDataFactory.getInstance().JPG.getExtension())
                filePath = filePathStringBuffer.to_s
                @logUtil.putF("Loading Image File Path: " + filePath, self, @commonStrings.RUN)
                file = File.new(filePath)
                if file.isFile()
                    bufferedImage = ImageIO.read(file)
                    SavedCaptureImagesWorker.index += 1
                    CapturedBufferedImagesCacheSingleton.getInstance().add(BufferedImageFrameCacheable.new(bufferedImage, frame))
                    capturedImageEvent = CapturedImageWorkerResultsEvent.new(self, frame, bufferedImage)
                    self.fireEvent(capturedImageEvent)
                else
                    @logUtil.putF("Could Not Load File: " + filePath, self, @commonStrings.RUN)
                end
                @logUtil.putF(CommonLabels.getInstance().ELAPSED + timeHelper.getElapsedTNT(), self, @commonStrings.RUN)
                self.setRunning(false)
            end
            @logUtil.putF(@commonStrings.END_, self, @commonStrings.RUN)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.RUN, e)
        end
    end

    def self.index()
        SavedCaptureImagesWorker.java_static_fields unless @java_static_fields_started
        return defined?(@@index) ? @@index : nil
    end

    def self.index=(value)
        SavedCaptureImagesWorker.java_static_fields unless @java_static_fields_started
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
        if name == "SavedCaptureImagesWorker"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :SavedCaptureGenericProfileDataWorkerType, "org/allbinary/input/automation/module/generic/configuration/profile/SavedCaptureGenericProfileDataWorkerType"
autoload :CapturedBufferedImagesCacheSingleton, "org/allbinary/input/media/image/capture/CapturedBufferedImagesCacheSingleton"
autoload :CapturedImageWorkerResultsEvent, "org/allbinary/input/media/image/capture/CapturedImageWorkerResultsEvent"
autoload :ProcessingFrameIndexFactory, "org/allbinary/input/media/image/capture/ProcessingFrameIndexFactory"
autoload :ScreenScavangerRobot, "org/allbinary/input/media/image/capture/ScreenScavangerRobot"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :LongUtil, "org/allbinary/logic/java/number/LongUtil"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :MediaDataFactory, "org/allbinary/logic/visual/media/MediaDataFactory"
autoload :BufferedImageFrameCacheable, "org/allbinary/media/image/cache/BufferedImageFrameCacheable"
autoload :CommonLabels, "org/allbinary/string/CommonLabels"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :TimeDelayHelper, "org/allbinary/time/TimeDelayHelper"
require "java/lang/Thread"

begin
    SavedCaptureImagesWorker.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

