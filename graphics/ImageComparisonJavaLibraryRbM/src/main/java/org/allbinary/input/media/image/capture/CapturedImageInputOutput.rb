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

require "java/lang/JavaOverload"
# require "java/awt/image/BufferedImage"
require "org/allbinary/media/image/io/ImageIOInterface"

module ::Org; module Allbinary; module Input; module Media; module Image; module Capture

class CapturedImageInputOutput
    include ::Org::Allbinary::Media::Image::Io::ImageIOInterface
    attr_accessor :logUtil

    def jfields_org_allbinary_input_media_image_capture_CapturedImageInputOutput
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
    end

    def initialize
        jfields_org_allbinary_input_media_image_capture_CapturedImageInputOutput
    end
    

    # throws Exception
    def save_j1(frame)
        commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        capturedBufferedImageCacheable = ((CapturedBufferedImagesCacheSingleton.getInstance()).get(frame))
        @logUtil.putF(("Saving: " + capturedBufferedImageCacheable.to_s), self, commonStrings.SAVE)
        self.save(capturedBufferedImageCacheable.getBufferedImage(), frame)
    end
    

    def save_j2(bufferedImage, frame)
        commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        imageUtil = ::Org::Allbinary::Media::Image::ImageUtil.getInstance()
        filePathStringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        filePathStringBuffer.append(::Org::Allbinary::Input::Automation::ImageOutputData::SAVE_PATH)
        filePathStringBuffer.append(::Org::Allbinary::Logic::Java::Number::LongUtil.fillIn(frame.to_s))
        filePathStringBuffer.append(::Org::Allbinary::Logic::Visual::Media::MediaDataFactory.getInstance().JPG.getExtension())
        filePath = filePathStringBuffer.to_s
        @logUtil.putF(("Image File Path: " + filePath + imageUtil.toString(bufferedImage)), self, commonStrings.SAVE)
        imagePersistanceUtil = ::Org::Allbinary::Media::Image::ImagePersistanceUtil.getInstance()
        imagePersistanceUtil.saveWithImageIO(filePath, bufferedImage)
    end

    def save(*java_overload_args)
        return save_j1(*java_overload_args) if java_overload_args.length == 1
        return save_j2(*java_overload_args) if java_overload_args.length == 2
        raise ArgumentError, "No method save takes #{java_overload_args.length} arguments"
    end
end

module ::Org; module Allbinary; module Input; module Automation; autoload :ImageOutputData, "org/allbinary/input/automation/ImageOutputData" unless const_defined?(:ImageOutputData, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Java; module Number; autoload :LongUtil, "org/allbinary/logic/java/number/LongUtil" unless const_defined?(:LongUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Cache; autoload :AutomaticCacheInterface, "org/allbinary/logic/util/cache/AutomaticCacheInterface" unless const_defined?(:AutomaticCacheInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Media; autoload :MediaDataFactory, "org/allbinary/logic/visual/media/MediaDataFactory" unless const_defined?(:MediaDataFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Media; module Image; autoload :ImagePersistanceUtil, "org/allbinary/media/image/ImagePersistanceUtil" unless const_defined?(:ImagePersistanceUtil, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Image; autoload :ImageUtil, "org/allbinary/media/image/ImageUtil" unless const_defined?(:ImageUtil, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Image; module Cache; autoload :BufferedImageFrameCacheable, "org/allbinary/media/image/cache/BufferedImageFrameCacheable" unless const_defined?(:BufferedImageFrameCacheable, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
autoload :CapturedBufferedImagesCacheSingleton, "org/allbinary/input/media/image/capture/CapturedBufferedImagesCacheSingleton" unless const_defined?(:CapturedBufferedImagesCacheSingleton, false)

end; end; end; end; end; end

