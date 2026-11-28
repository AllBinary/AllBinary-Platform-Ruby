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
require "java/lang/JavaOverload"
# require "java/awt/image/BufferedImage"
# require "java/io/File"
# require "javax/imageio/ImageIO"
require "org/allbinary/input/media/image/capture/CaptureWorkerInterface"
require "org/allbinary/logic/util/event/handler/BasicEventHandler"

module ::Org; module Allbinary; module Input; module Automation; module ModulePackage; module Generic

class SavedCaptureImagesWorker < ::Org::Allbinary::Logic::Util::Event::Handler::BasicEventHandler
    include ::Org::Allbinary::Input::Media::Image::Capture::CaptureWorkerInterface
    attr_accessor :logUtil, :commonStrings, :running, :screenScavangerRobot, :savedCaptureGenericProfileDataWorkerType

    def jfields_org_allbinary_input_automation_module_generic_SavedCaptureImagesWorker
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @running = false unless instance_variable_defined?(:@running)
        @screenScavangerRobot = nil unless instance_variable_defined?(:@screenScavangerRobot)
        @savedCaptureGenericProfileDataWorkerType = nil unless instance_variable_defined?(:@savedCaptureGenericProfileDataWorkerType)
    end
    

    def initialize(savedCaptureGenericProfileDataWorkerType)
        super()
        jfields_org_allbinary_input_automation_module_generic_SavedCaptureImagesWorker
        @savedCaptureGenericProfileDataWorkerType = savedCaptureGenericProfileDataWorkerType
        @screenScavangerRobot = ::Org::Allbinary::Input::Media::Image::Capture::ScreenScavangerRobot.new()
        @@index = ::Org::Allbinary::Input::Media::Image::Capture::ProcessingFrameIndexFactory.next_()
    end
    

    # throws Exception
    def setThread(thread)
    end
    java_overload :setThread, 1
    

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
            while self.isRunning()
                timeHelper.setStartTimeTNT()
                frame = @@index
                filePathStringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
                filePathStringBuffer.append(@savedCaptureGenericProfileDataWorkerType.getPath())
                filePathStringBuffer.append(::Org::Allbinary::Logic::Java::Number::LongUtil.fillIn(frame.to_s))
                filePathStringBuffer.append(::Org::Allbinary::Logic::Visual::Media::MediaDataFactory.getInstance().JPG.getExtension())
                filePath = filePathStringBuffer.to_s
                @logUtil.putF("Loading Image File Path: " + filePath, self, @commonStrings.RUN)
                file = File.new(filePath)
                if file.isFile()
                    bufferedImage = ImageIO.read(file)
                    @@index += 1
                    ::Org::Allbinary::Input::Media::Image::Capture::CapturedBufferedImagesCacheSingleton.getInstance().add(::Org::Allbinary::Media::Image::Cache::BufferedImageFrameCacheable.new(bufferedImage, frame))
                    capturedImageEvent = ::Org::Allbinary::Input::Media::Image::Capture::CapturedImageWorkerResultsEvent.new(self, frame, bufferedImage)
                    self.fireEvent(capturedImageEvent)
                else
                    @logUtil.putF("Could Not Load File: " + filePath, self, @commonStrings.RUN)
                end
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

module ::Org; module Allbinary; module Input; module Automation; module ModulePackage; module Generic; module Configuration; module Profile; autoload :SavedCaptureGenericProfileDataWorkerType, "org/allbinary/input/automation/module/generic/configuration/profile/SavedCaptureGenericProfileDataWorkerType" unless const_defined?(:SavedCaptureGenericProfileDataWorkerType, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Input; module Media; module Image; module Capture; autoload :CapturedBufferedImagesCacheSingleton, "org/allbinary/input/media/image/capture/CapturedBufferedImagesCacheSingleton" unless const_defined?(:CapturedBufferedImagesCacheSingleton, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Input; module Media; module Image; module Capture; autoload :CapturedImageWorkerResultsEvent, "org/allbinary/input/media/image/capture/CapturedImageWorkerResultsEvent" unless const_defined?(:CapturedImageWorkerResultsEvent, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Input; module Media; module Image; module Capture; autoload :ProcessingFrameIndexFactory, "org/allbinary/input/media/image/capture/ProcessingFrameIndexFactory" unless const_defined?(:ProcessingFrameIndexFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Input; module Media; module Image; module Capture; autoload :ScreenScavangerRobot, "org/allbinary/input/media/image/capture/ScreenScavangerRobot" unless const_defined?(:ScreenScavangerRobot, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Java; module Number; autoload :LongUtil, "org/allbinary/logic/java/number/LongUtil" unless const_defined?(:LongUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Media; autoload :MediaDataFactory, "org/allbinary/logic/visual/media/MediaDataFactory" unless const_defined?(:MediaDataFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Media; module Image; module Cache; autoload :BufferedImageFrameCacheable, "org/allbinary/media/image/cache/BufferedImageFrameCacheable" unless const_defined?(:BufferedImageFrameCacheable, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonLabels, "org/allbinary/string/CommonLabels" unless const_defined?(:CommonLabels, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module TimePackage; autoload :TimeDelayHelper, "org/allbinary/time/TimeDelayHelper" unless const_defined?(:TimeDelayHelper, false); end; end; end
require "java/lang/Thread"

begin
    SavedCaptureImagesWorker.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end

