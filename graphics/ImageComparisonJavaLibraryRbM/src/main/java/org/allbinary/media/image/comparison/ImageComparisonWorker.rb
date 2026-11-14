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
# package org.allbinary.media.image.comparison

require "java/lang/Object"
require "org/allbinary/input/media/image/capture/CapturedImageWorkerResultsListener"
require "org/allbinary/logic/util/event/handler/BasicEventHandler"

class ImageComparisonWorker < BasicEventHandler
    include CapturedImageWorkerResultsListener
    attr_accessor :logUtil, :commonStrings, :bufferedImageVector, :imageComparatorConstraintsInterface, :imageComparator, :running, :index2

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @bufferedImageVector = BasicArrayListD.new()
        @imageComparatorConstraintsInterface = nil
        @imageComparator = nil
        @running = false
        @index2 = 0
    end
    

    def initialize(imageComparatorConstraintsInterface)
        super()
        initialize_fields
        @imageComparatorConstraintsInterface = imageComparatorConstraintsInterface
        @imageComparator = ImageComparator.new(imageComparatorConstraintsInterface)
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
    

    def onCaptureEvent(capturedImageWorkerResultsEvent)
        java_monitor.synchronize do
        @bufferedImageVector.add(capturedImageWorkerResultsEvent)
        if @bufferedImageVector.size() > 1
            self.run()
        end
        end
    end
    

    def onEvent(allBinaryEventObject)
        java_monitor.synchronize do
        self.onCaptureEvent(allBinaryEventObject)
        end
    end
    

    def run()
        begin
            @logUtil.putF(@commonStrings.START, self, @commonStrings.RUN)
            self.setRunning(true)
            timeHelper = TimeDelayHelper.new(1000)
            timeHelper.setStartTimeTNT()
            if @imageComparatorConstraintsInterface.isFrameAllowed(@index2)
                capturedImageWorkerResultsEvent = Array.new(2, nil)
                capturedImageWorkerResultsEvent[0] = @bufferedImageVector.get(0)
                capturedImageWorkerResultsEvent[1] = @bufferedImageVector.get(1)
                if @imageComparatorConstraintsInterface.isImageValid(capturedImageWorkerResultsEvent[0].getBufferedImage()) && @imageComparatorConstraintsInterface.isImageValid(capturedImageWorkerResultsEvent[1].getBufferedImage())
                    imageComparisonResult = @imageComparator.compare(capturedImageWorkerResultsEvent[0].getBufferedImage(), capturedImageWorkerResultsEvent[1].getBufferedImage(), capturedImageWorkerResultsEvent[0].getFrame(), capturedImageWorkerResultsEvent[1].getFrame(), 0)
                    frame = capturedImageWorkerResultsEvent[1].getFrame()
                    imageComparisonResultFrameCacheable = ImageComparisonResultFrameCacheable.new(imageComparisonResult, frame)
                    ImageComparisonResultCacheSingleton.getInstance().add(imageComparisonResultFrameCacheable)
                    self.fireEvent(ImageComparisonResultsEvent.new(self, imageComparisonResult))
                    @logUtil.putF(StringMaker.new().append("Image Comparison Result: ").append(imageComparisonResult.to_s).append(" for frame: ").appendlong(frame).to_s, self, @commonStrings.RUN)
                else
                    @logUtil.putF("An Image Was Not Valid: Image Worker Event Processing terminated", self, @commonStrings.RUN)
                end
            end
            @bufferedImageVector.remove(0)
            @index2 += 1
            message = StringMaker.new().append("Frame: ").appendint(@index2).append(CommonLabels.getInstance().ELAPSED).appendlong((timeHelper.getElapsedTNT()).to_i).to_s
            @logUtil.putF(message, self, @commonStrings.RUN)
            self.setRunning(false)
            @logUtil.putF(@commonStrings.END_, self, @commonStrings.RUN)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.RUN, e)
        end
    end
end

autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD"
autoload :CapturedImageWorkerResultsEvent, "org/allbinary/input/media/image/capture/CapturedImageWorkerResultsEvent"
autoload :StdUtil, "org/allbinary/logic/StdUtil"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :AllBinaryEventObject, "org/allbinary/logic/util/event/AllBinaryEventObject"
autoload :CommonLabels, "org/allbinary/string/CommonLabels"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :TimeDelayHelper, "org/allbinary/time/TimeDelayHelper"
autoload :ImageComparator, "org/allbinary/media/image/comparison/ImageComparator"
autoload :ImageComparatorConstraintsInterface, "org/allbinary/media/image/comparison/ImageComparatorConstraintsInterface"
autoload :ImageComparisonResult, "org/allbinary/media/image/comparison/ImageComparisonResult"
autoload :ImageComparisonResultCacheSingleton, "org/allbinary/media/image/comparison/ImageComparisonResultCacheSingleton"
autoload :ImageComparisonResultFrameCacheable, "org/allbinary/media/image/comparison/ImageComparisonResultFrameCacheable"
autoload :ImageComparisonResultsEvent, "org/allbinary/media/image/comparison/ImageComparisonResultsEvent"

