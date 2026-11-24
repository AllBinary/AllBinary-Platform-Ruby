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
require "java/lang/JavaOverload"
require "org/allbinary/input/media/image/capture/CapturedImageWorkerResultsListener"
require "org/allbinary/logic/util/event/handler/BasicEventHandler"

module ::Org; module Allbinary; module Media; module Image; module Comparison

class ImageComparisonWorker < ::Org::Allbinary::Logic::Util::Event::Handler::BasicEventHandler
    include ::Org::Allbinary::Input::Media::Image::Capture::CapturedImageWorkerResultsListener
    attr_accessor :logUtil, :commonStrings, :bufferedImageVector, :imageComparatorConstraintsInterface, :imageComparator, :running, :index2

    def jfields_org_allbinary_media_image_comparison_ImageComparisonWorker
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @bufferedImageVector = ::Org::Allbinary::Util::BasicArrayListD.new()
        @imageComparatorConstraintsInterface = nil unless instance_variable_defined?(:@imageComparatorConstraintsInterface)
        @imageComparator = nil unless instance_variable_defined?(:@imageComparator)
        @running = false unless instance_variable_defined?(:@running)
        @index2 = 0 unless instance_variable_defined?(:@index2)
    end
    

    def initialize(imageComparatorConstraintsInterface)
        super()
        jfields_org_allbinary_media_image_comparison_ImageComparisonWorker
        @imageComparatorConstraintsInterface = imageComparatorConstraintsInterface
        @imageComparator = ImageComparator.new(imageComparatorConstraintsInterface)
    end
    

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
    

    def onCaptureEvent(capturedImageWorkerResultsEvent)
        java_monitor.synchronize do
        @bufferedImageVector.add(capturedImageWorkerResultsEvent)
        if @bufferedImageVector.size() > 1
            self.run()
        end
        end
    end
    java_overload :onCaptureEvent, 1
    

    def onEvent(allBinaryEventObject)
        java_monitor.synchronize do
        self.onCaptureEvent(allBinaryEventObject)
        end
    end
    java_overload :onEvent, 1
    

    def run()
        begin
            @logUtil.putF(@commonStrings.START, self, @commonStrings.RUN)
            self.setRunning(true)
            timeHelper = ::Org::Allbinary::TimePackage::TimeDelayHelper.new(1000)
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
                    @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append("Image Comparison Result: ").append(imageComparisonResult.to_s).append(" for frame: ").appendlong(frame).to_s, self, @commonStrings.RUN)
                else
                    @logUtil.putF("An Image Was Not Valid: Image Worker Event Processing terminated", self, @commonStrings.RUN)
                end
            end
            @bufferedImageVector.remove(0)
            @index2 += 1
            message = ::Org::Allbinary::Logic::StringPackage::StringMaker.new().append("Frame: ").appendint(@index2).append(::Org::Allbinary::StringPackage::CommonLabels.getInstance().ELAPSED).appendlong(((timeHelper.getElapsedTNT()).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })).to_s
            @logUtil.putF(message, self, @commonStrings.RUN)
            self.setRunning(false)
            @logUtil.putF(@commonStrings.END_, self, @commonStrings.RUN)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.RUN, e)
        end
    end
    java_overload :run, 0
end

module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Input; module Media; module Image; module Capture; autoload :CapturedImageWorkerResultsEvent, "org/allbinary/input/media/image/capture/CapturedImageWorkerResultsEvent" unless const_defined?(:CapturedImageWorkerResultsEvent, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Event; autoload :AllBinaryEventObject, "org/allbinary/logic/util/event/AllBinaryEventObject" unless const_defined?(:AllBinaryEventObject, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonLabels, "org/allbinary/string/CommonLabels" unless const_defined?(:CommonLabels, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module TimePackage; autoload :TimeDelayHelper, "org/allbinary/time/TimeDelayHelper" unless const_defined?(:TimeDelayHelper, false); end; end; end
autoload :ImageComparator, "org/allbinary/media/image/comparison/ImageComparator" unless const_defined?(:ImageComparator, false)
autoload :ImageComparatorConstraintsInterface, "org/allbinary/media/image/comparison/ImageComparatorConstraintsInterface" unless const_defined?(:ImageComparatorConstraintsInterface, false)
autoload :ImageComparisonResult, "org/allbinary/media/image/comparison/ImageComparisonResult" unless const_defined?(:ImageComparisonResult, false)
autoload :ImageComparisonResultCacheSingleton, "org/allbinary/media/image/comparison/ImageComparisonResultCacheSingleton" unless const_defined?(:ImageComparisonResultCacheSingleton, false)
autoload :ImageComparisonResultFrameCacheable, "org/allbinary/media/image/comparison/ImageComparisonResultFrameCacheable" unless const_defined?(:ImageComparisonResultFrameCacheable, false)
autoload :ImageComparisonResultsEvent, "org/allbinary/media/image/comparison/ImageComparisonResultsEvent" unless const_defined?(:ImageComparisonResultsEvent, false)

end; end; end; end; end

