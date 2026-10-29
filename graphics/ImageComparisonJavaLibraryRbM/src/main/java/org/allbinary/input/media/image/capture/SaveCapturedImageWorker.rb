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
require "org/allbinary/input/media/image/capture/CapturedImageWorkerResultsListener"

class SaveCapturedImageWorker < BasicEventHandler
    include CapturedImageWorkerResultsListener
    attr_accessor :logUtil, :commonStrings, :running, :capturedImageWorkerResultsEventVector

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @running = false
        @capturedImageWorkerResultsEventVector = BasicArrayListD.new()
    end
    

    def initialize()
        super()
        initialize_fields
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
    

    def onCaptureEvent(capturedImageEvent)
        @capturedImageWorkerResultsEventVector.add(capturedImageEvent)
        self.run()
    end
    

    def onEvent(allBinaryEventObject)
        self.onCaptureEvent(allBinaryEventObject)
    end
    

    def run()
        begin
            @logUtil.putF(@commonStrings.START, self, @commonStrings.RUN)
            self.setRunning(true)
            timeHelper = TimeDelayHelper.new(1000)
            timeHelper.setStartTimeTNT()
            capturedImageWorkerResultsEvent = (@capturedImageWorkerResultsEventVector.get(0))
            screenBufferedImage = capturedImageWorkerResultsEvent.getBufferedImage()
            CapturedImageInputOutput.new().save(screenBufferedImage, capturedImageWorkerResultsEvent.getFrame())
            @capturedImageWorkerResultsEventVector.remove(capturedImageWorkerResultsEvent)
            @logUtil.putF(CommonLabels.getInstance().ELAPSED + timeHelper.getElapsedTNT(), self, @commonStrings.RUN)
            self.setRunning(false)
            @logUtil.putF(@commonStrings.END_, self, @commonStrings.RUN)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.RUN, e)
        end
    end
end

require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/util/event/AllBinaryEventObject"
require "org/allbinary/string/CommonLabels"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/time/TimeDelayHelper"
require "org/allbinary/input/media/image/capture/CapturedImageInputOutput"
require "org/allbinary/input/media/image/capture/CapturedImageWorkerResultsEvent"

