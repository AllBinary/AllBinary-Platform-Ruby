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
require "org/allbinary/logic/util/event/handler/BasicEventHandler"
require "org/allbinary/media/image/comparison/ImageComparisonResultsListener"

class MotionRectanglesWorker < BasicEventHandler
    include ImageComparisonResultsListener
    attr_accessor :logUtil, :commonStrings, :imageComparisonInfoVector, :motionRectangleConstraintsInterface, :index, :running

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @imageComparisonInfoVector = BasicArrayListD.new()
        @motionRectangleConstraintsInterface = nil
        @index = 0
        @running = false
    end
    

    def initialize(motionRectangleConstraintsInterface)
        super()
        initialize_fields
        @motionRectangleConstraintsInterface = motionRectangleConstraintsInterface
    end
    

    def onImageComparisonResultsEvent(imageComparisonResultsEvent)
        @imageComparisonInfoVector.add(imageComparisonResultsEvent)
        self.run()
    end
    

    def onEvent(allBinaryEventObject)
        self.onImageComparisonResultsEvent(allBinaryEventObject)
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
            imageComparisonResultsEvent = @imageComparisonInfoVector.get(0)
            imageComparisonInfo = imageComparisonResultsEvent.getImageComparisonResult()
            @logUtil.putF(imageComparisonInfo.to_s, self, @commonStrings.RUN)
            allMotionRectangles = AllMotionRectangles.new(imageComparisonInfo)
            AllMotionRectanglesResultsCacheSingleton.getInstance().add(MotionRectanglesResultsFrameCacheable.new(allMotionRectangles, imageComparisonInfo.getFrameTwo()))
            consolidatedMotionRectangles = ConsolidateMotionRectangles.new(allMotionRectangles)
            ConsolidatedMotionRectanglesResultsCacheSingleton.getInstance().add(MotionRectanglesResultsFrameCacheable.new(consolidatedMotionRectangles, imageComparisonInfo.getFrameTwo()))
            constrainedMotionRectangles = ConstrainedMotionRectangles.new(@motionRectangleConstraintsInterface, consolidatedMotionRectangles)
            constrainedMotionRectangles.applyMotionRectangleConstraints(consolidatedMotionRectangles)
            ConstrainedMotionRectanglesResultsCacheSingleton.getInstance().add(MotionRectanglesResultsFrameCacheable.new(constrainedMotionRectangles, imageComparisonInfo.getFrameTwo()))
            self.fireEvent(MotionRectanglesResultsEvent.new(self, imageComparisonInfo.getFrameTwo(), constrainedMotionRectangles))
            @imageComparisonInfoVector.remove(imageComparisonResultsEvent)
            @index += 1
            @logUtil.putF(CommonLabels.getInstance().ELAPSED + timeHelper.getElapsedTNT(), self, @commonStrings.RUN)
            self.setRunning(false)
            @logUtil.putF(@commonStrings.END_, self, @commonStrings.RUN)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.RUN, e)
        end
    end
end

autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD"
autoload :StdUtil, "org/allbinary/logic/StdUtil"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :AllBinaryEventObject, "org/allbinary/logic/util/event/AllBinaryEventObject"
autoload :ImageComparisonResult, "org/allbinary/media/image/comparison/ImageComparisonResult"
autoload :ImageComparisonResultsEvent, "org/allbinary/media/image/comparison/ImageComparisonResultsEvent"
autoload :CommonLabels, "org/allbinary/string/CommonLabels"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :TimeDelayHelper, "org/allbinary/time/TimeDelayHelper"
autoload :AllMotionRectangles, "org/allbinary/media/image/comparison/motion/AllMotionRectangles"
autoload :AllMotionRectanglesResultsCacheSingleton, "org/allbinary/media/image/comparison/motion/AllMotionRectanglesResultsCacheSingleton"
autoload :ConsolidateMotionRectangles, "org/allbinary/media/image/comparison/motion/ConsolidateMotionRectangles"
autoload :ConsolidatedMotionRectanglesResultsCacheSingleton, "org/allbinary/media/image/comparison/motion/ConsolidatedMotionRectanglesResultsCacheSingleton"
autoload :ConstrainedMotionRectangles, "org/allbinary/media/image/comparison/motion/ConstrainedMotionRectangles"
autoload :ConstrainedMotionRectanglesResultsCacheSingleton, "org/allbinary/media/image/comparison/motion/ConstrainedMotionRectanglesResultsCacheSingleton"
autoload :MotionRectangleConstraintsInterface, "org/allbinary/media/image/comparison/motion/MotionRectangleConstraintsInterface"
autoload :MotionRectangles, "org/allbinary/media/image/comparison/motion/MotionRectangles"
autoload :MotionRectanglesResultsEvent, "org/allbinary/media/image/comparison/motion/MotionRectanglesResultsEvent"
autoload :MotionRectanglesResultsFrameCacheable, "org/allbinary/media/image/comparison/motion/MotionRectanglesResultsFrameCacheable"

