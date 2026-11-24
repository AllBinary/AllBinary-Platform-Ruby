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
require "java/lang/JavaOverload"
require "org/allbinary/media/image/comparison/motion/MotionRectanglesResultsListener"

module ::Org; module Allbinary; module Media; module Image; module Comparison; module Motion

class SaveMotionRectanglesResultsWorker
    include MotionRectanglesResultsListener
    attr_accessor :logUtil, :commonStrings, :running, :motionRectanglesVector

    def jfields_org_allbinary_media_image_comparison_motion_SaveMotionRectanglesResultsWorker
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @running = false unless instance_variable_defined?(:@running)
        @motionRectanglesVector = nil unless instance_variable_defined?(:@motionRectanglesVector)
    end
    

    def initialize()
        jfields_org_allbinary_media_image_comparison_motion_SaveMotionRectanglesResultsWorker
        @motionRectanglesVector = ::Org::Allbinary::Util::BasicArrayListD.new()
    end
    

    def getMotionRectanglesVector()
        return @motionRectanglesVector
    end
    java_overload :getMotionRectanglesVector, 0
    

    def onMotionRectanglesImageComparisonResultsEvent(motionRectanglesResultsEvent)
        self.getMotionRectanglesVector().add(motionRectanglesResultsEvent)
        self.run()
    end
    java_overload :onMotionRectanglesImageComparisonResultsEvent, 1
    

    def onEvent(allBinaryEventObject)
        self.onMotionRectanglesImageComparisonResultsEvent(allBinaryEventObject)
    end
    java_overload :onEvent, 1
    

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
    

    def run()
        begin
            @logUtil.putF(@commonStrings.START, self, @commonStrings.RUN)
            self.setRunning(true)
            timeHelper = ::Org::Allbinary::TimePackage::TimeDelayHelper.new(1000)
            timeHelper.setStartTimeTNT()
            motionRectanglesResultsEvent = self.getMotionRectanglesVector().get(0)
            motionRectangles = motionRectanglesResultsEvent.getMotionRectangles()
            MotionRectanglesImageInputOutput.new().save(motionRectangles, motionRectanglesResultsEvent.getFrame())
            self.getMotionRectanglesVector().remove(motionRectangles)
            @logUtil.putF(::Org::Allbinary::StringPackage::CommonLabels.getInstance().ELAPSED + timeHelper.getElapsedTNT(), self, @commonStrings.RUN)
            @logUtil.putF(@commonStrings.END_, self, @commonStrings.RUN)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.RUN, e)
        end
    end
    java_overload :run, 0
end

module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Event; autoload :AllBinaryEventObject, "org/allbinary/logic/util/event/AllBinaryEventObject" unless const_defined?(:AllBinaryEventObject, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonLabels, "org/allbinary/string/CommonLabels" unless const_defined?(:CommonLabels, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module TimePackage; autoload :TimeDelayHelper, "org/allbinary/time/TimeDelayHelper" unless const_defined?(:TimeDelayHelper, false); end; end; end
autoload :MotionRectangles, "org/allbinary/media/image/comparison/motion/MotionRectangles" unless const_defined?(:MotionRectangles, false)
autoload :MotionRectanglesImageInputOutput, "org/allbinary/media/image/comparison/motion/MotionRectanglesImageInputOutput" unless const_defined?(:MotionRectanglesImageInputOutput, false)
autoload :MotionRectanglesResultsEvent, "org/allbinary/media/image/comparison/motion/MotionRectanglesResultsEvent" unless const_defined?(:MotionRectanglesResultsEvent, false)

end; end; end; end; end; end

