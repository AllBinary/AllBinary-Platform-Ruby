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
require "org/allbinary/media/image/comparison/motion/MotionRectanglesResultsListener"

class SaveMotionRectanglesResultsWorker
    include MotionRectanglesResultsListener
    attr_accessor :logUtil, :commonStrings, :running, :motionRectanglesVector

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
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
    

    def onMotionRectanglesImageComparisonResultsEvent(motionRectanglesResultsEvent)
        self.getMotionRectanglesVector().add(motionRectanglesResultsEvent)
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
            motionRectanglesResultsEvent = self.getMotionRectanglesVector().get(0)
            motionRectangles = motionRectanglesResultsEvent.getMotionRectangles()
            MotionRectanglesImageInputOutput.new().save(motionRectangles, motionRectanglesResultsEvent.getFrame())
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
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/util/event/AllBinaryEventObject"
require "org/allbinary/string/CommonLabels"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/time/TimeDelayHelper"
require "org/allbinary/media/image/comparison/motion/MotionRectangles"
require "org/allbinary/media/image/comparison/motion/MotionRectanglesImageInputOutput"
require "org/allbinary/media/image/comparison/motion/MotionRectanglesResultsEvent"

