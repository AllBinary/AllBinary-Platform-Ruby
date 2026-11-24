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
require "java/lang/JavaOverload"
# require "java/awt/image/BufferedImage"
require "org/allbinary/logic/util/event/handler/BasicEventHandler"
require "org/allbinary/input/media/image/capture/CaptureWorkerInterface"

module ::Org; module Allbinary; module Input; module Media; module Image; module Capture

class ScreenCaptureImagesWorker < ::Org::Allbinary::Logic::Util::Event::Handler::BasicEventHandler
    include CaptureWorkerInterface
    attr_accessor :logUtil, :commonStrings, :running, :screenScavangerRobot

    def jfields_org_allbinary_input_media_image_capture_ScreenCaptureImagesWorker
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @running = false unless instance_variable_defined?(:@running)
        @screenScavangerRobot = nil unless instance_variable_defined?(:@screenScavangerRobot)
    end
    

    def initialize()
        super()
        jfields_org_allbinary_input_media_image_capture_ScreenCaptureImagesWorker
        @screenScavangerRobot = ScreenScavangerRobot.new()
        ScreenCaptureImagesWorker.index = ProcessingFrameIndexFactory.next_()
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
    

    # throws Exception
    def setThread(thread)
    end
    java_overload :setThread, 1
    

    def run()
        begin
            @logUtil.putF(@commonStrings.START, self, @commonStrings.RUN)
            self.setRunning(true)
            timeHelper = ::Org::Allbinary::TimePackage::TimeDelayHelper.new(1000)
            while isRunning()
                timeHelper.setStartTimeTNT()
                bufferedImage = @screenScavangerRobot.getScreenAsBufferedImages()[0]
                frame = @@index
                ScreenCaptureImagesWorker.index += 1
                CapturedBufferedImagesCacheSingleton.getInstance().add(::Org::Allbinary::Media::Image::Cache::BufferedImageFrameCacheable.new(bufferedImage, frame))
                capturedImageEvent = CapturedImageWorkerResultsEvent.new(self, frame, bufferedImage)
                fireEvent(capturedImageEvent)
                @logUtil.putF(::Org::Allbinary::StringPackage::CommonLabels.getInstance().ELAPSED + timeHelper.getElapsedTNT(), self, @commonStrings.RUN)
                self.setRunning(false)
            end
            @logUtil.putF(@commonStrings.END_, self, @commonStrings.RUN)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.RUN, e)
        end
    end
    java_overload :run, 0

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

module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Media; module Image; module Cache; autoload :BufferedImageFrameCacheable, "org/allbinary/media/image/cache/BufferedImageFrameCacheable" unless const_defined?(:BufferedImageFrameCacheable, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonLabels, "org/allbinary/string/CommonLabels" unless const_defined?(:CommonLabels, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module TimePackage; autoload :TimeDelayHelper, "org/allbinary/time/TimeDelayHelper" unless const_defined?(:TimeDelayHelper, false); end; end; end
autoload :CapturedBufferedImagesCacheSingleton, "org/allbinary/input/media/image/capture/CapturedBufferedImagesCacheSingleton" unless const_defined?(:CapturedBufferedImagesCacheSingleton, false)
autoload :CapturedImageWorkerResultsEvent, "org/allbinary/input/media/image/capture/CapturedImageWorkerResultsEvent" unless const_defined?(:CapturedImageWorkerResultsEvent, false)
autoload :ProcessingFrameIndexFactory, "org/allbinary/input/media/image/capture/ProcessingFrameIndexFactory" unless const_defined?(:ProcessingFrameIndexFactory, false)
autoload :ScreenScavangerRobot, "org/allbinary/input/media/image/capture/ScreenScavangerRobot" unless const_defined?(:ScreenScavangerRobot, false)
require "java/lang/Thread"

begin
    ScreenCaptureImagesWorker.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end

