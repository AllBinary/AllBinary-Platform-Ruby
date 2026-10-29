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
        return defined?(@@index) ? @@index : nil
    end

    def self.index=(value)
        @@index = value
    end
end

require "org/allbinary/input/automation/module/generic/configuration/profile/SavedCaptureGenericProfileDataWorkerType"
require "org/allbinary/input/media/image/capture/CapturedBufferedImagesCacheSingleton"
require "org/allbinary/input/media/image/capture/CapturedImageWorkerResultsEvent"
require "org/allbinary/input/media/image/capture/ProcessingFrameIndexFactory"
require "org/allbinary/input/media/image/capture/ScreenScavangerRobot"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/java/number/LongUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/visual/media/MediaDataFactory"
require "org/allbinary/media/image/cache/BufferedImageFrameCacheable"
require "org/allbinary/string/CommonLabels"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/time/TimeDelayHelper"
require "java/lang/Thread"

class SavedCaptureImagesWorker
    @@index = nil
end

