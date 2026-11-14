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
# package org.allbinary.media.image.search

require "java/lang/Object"
# require "java/awt/image/BufferedImage"
require "org/allbinary/logic/util/event/handler/BasicEventHandler"
require "org/allbinary/media/image/comparison/ImageComparisonResultsListener"

class ImageComparisonSearchWorker < BasicEventHandler
    include ImageComparisonResultsListener
    attr_accessor :logUtil, :commonStrings, :imageComparisonInfoVector, :index, :running, :imageSearchConstraintsInterface

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @imageComparisonInfoVector = nil
        @index = 0
        @running = false
        @imageSearchConstraintsInterface = nil
    end
    

    def initialize(imageSearchConstraintsInterface)
        super()
        initialize_fields
        @imageComparisonInfoVector = BasicArrayListD.new()
        @imageSearchConstraintsInterface = imageSearchConstraintsInterface
    end
    

    def onImageComparisonResultsEvent(imageComparisonResultsEvent)
        @imageComparisonInfoVector.add(imageComparisonResultsEvent.getImageComparisonResult())
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
            imageComparisonInfo = @imageComparisonInfoVector.get(0)
            @logUtil.putF(imageComparisonInfo.to_s, self, @commonStrings.RUN)
            latestBufferedImage = imageComparisonInfo.getBufferedImages()[1]
            @imageComparisonInfoVector.remove(imageComparisonInfo)
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
autoload :ImageComparisonSearchConstraintsInterface, "org/allbinary/media/image/search/ImageComparisonSearchConstraintsInterface"

