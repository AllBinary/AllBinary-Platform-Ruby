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

require "java/lang/JavaOverload"
# require "java/awt/image/BufferedImage"
require "org/allbinary/media/image/io/ImageIOInterface"

module ::Org; module Allbinary; module Media; module Image; module Comparison

class ComparisonImageInputOutput
    include ::Org::Allbinary::Media::Image::Io::ImageIOInterface
    attr_accessor :logUtil

    def jfields_org_allbinary_media_image_comparison_ComparisonImageInputOutput
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
    end
    

    def initialize()
        jfields_org_allbinary_media_image_comparison_ComparisonImageInputOutput
    end
    

    # throws Exception
    def save_j1(frame)
        commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        if frame > 0
            imageComparisonResultFrameCacheable = (ImageComparisonResultCacheSingleton.getInstance()).get(frame)
            if imageComparisonResultFrameCacheable != nil
                imageComparisonResult = imageComparisonResultFrameCacheable.getImageComparisonResult()
                self.save(imageComparisonResult, imageComparisonResultFrameCacheable.getFrame())
            else
                @logUtil.putF("Comparison Results Not Available for Output: " + (frame).to_s, self, commonStrings.SAVE)
            end
        else
            @logUtil.putF("No Comparison Results: for first frame: " + (frame).to_s, self, commonStrings.SAVE)
        end
    end
    

    # throws Exception
    def save_j2(imageComparisonResult, frame)
        commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        filePathStringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        filePathStringBuffer.append(::Org::Allbinary::Input::Automation::ImageOutputData::SAVE_PATH)
        filePathStringBuffer.append(::Org::Allbinary::Logic::Java::Number::LongUtil.fillIn(frame.to_s))
        filePathStringBuffer.append(ComparisonImageInputOutput::ROOT_NAME)
        filePathStringBuffer1 = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        filePathStringBuffer1.append(filePathStringBuffer.to_s)
        filePathStringBuffer1.append("_1")
        filePathStringBuffer1.append(::Org::Allbinary::Logic::Visual::Media::MediaDataFactory.getInstance().JPG.getExtension())
        filePath1 = filePathStringBuffer1.to_s
        filePathStringBuffer2 = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        filePathStringBuffer2.append(filePathStringBuffer.to_s)
        filePathStringBuffer2.append("_2")
        filePathStringBuffer2.append(::Org::Allbinary::Logic::Visual::Media::MediaDataFactory.getInstance().JPG.getExtension())
        filePath2 = filePathStringBuffer2.to_s
        bufferedImageCacheables = ChangedPixelsUtil.generateBufferedImageChacheables(imageComparisonResult)
        @logUtil.putF("Comparison Image File Path 1: " + filePath1, self, commonStrings.SAVE)
        @logUtil.putF("Comparison Image File Path 2: " + filePath2, self, commonStrings.SAVE)
        bufferedImageArray = Array.new(2, nil)
        bufferedImageArray[0] = bufferedImageCacheables[0].getBufferedImage()
        bufferedImageArray[1] = bufferedImageCacheables[1].getBufferedImage()
        imagePersistanceUtil = ::Org::Allbinary::Media::Image::ImagePersistanceUtil.getInstance()
        imagePersistanceUtil.saveWithImageIO(filePath1, bufferedImageArray[0])
        imagePersistanceUtil.saveWithImageIO(filePath2, bufferedImageArray[1])
    end

    def save(*java_overload_args)
        return save_j1(*java_overload_args) if java_overload_args.length == 1
        return save_j2(*java_overload_args) if java_overload_args.length == 2
        raise ArgumentError, "No method save takes #{java_overload_args.length} arguments"
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:ROOT_NAME, "_Changed_")
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "ComparisonImageInputOutput"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:ROOT_NAME].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Input; module Automation; autoload :ImageOutputData, "org/allbinary/input/automation/ImageOutputData" unless const_defined?(:ImageOutputData, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Java; module Number; autoload :LongUtil, "org/allbinary/logic/java/number/LongUtil" unless const_defined?(:LongUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Cache; autoload :AutomaticCacheInterface, "org/allbinary/logic/util/cache/AutomaticCacheInterface" unless const_defined?(:AutomaticCacheInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Media; autoload :MediaDataFactory, "org/allbinary/logic/visual/media/MediaDataFactory" unless const_defined?(:MediaDataFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Media; module Image; autoload :ImagePersistanceUtil, "org/allbinary/media/image/ImagePersistanceUtil" unless const_defined?(:ImagePersistanceUtil, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Image; module Cache; autoload :BufferedImageCacheable, "org/allbinary/media/image/cache/BufferedImageCacheable" unless const_defined?(:BufferedImageCacheable, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
autoload :ChangedPixelsUtil, "org/allbinary/media/image/comparison/ChangedPixelsUtil" unless const_defined?(:ChangedPixelsUtil, false)
autoload :ImageComparisonResult, "org/allbinary/media/image/comparison/ImageComparisonResult" unless const_defined?(:ImageComparisonResult, false)
autoload :ImageComparisonResultCacheSingleton, "org/allbinary/media/image/comparison/ImageComparisonResultCacheSingleton" unless const_defined?(:ImageComparisonResultCacheSingleton, false)
autoload :ImageComparisonResultFrameCacheable, "org/allbinary/media/image/comparison/ImageComparisonResultFrameCacheable" unless const_defined?(:ImageComparisonResultFrameCacheable, false)

begin
    ComparisonImageInputOutput.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

