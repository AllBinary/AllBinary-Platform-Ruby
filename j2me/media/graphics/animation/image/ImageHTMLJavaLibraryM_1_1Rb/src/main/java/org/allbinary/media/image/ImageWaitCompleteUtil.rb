# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
# package org.allbinary.media.image

require "java/lang/JavaOverload"
require "org/allbinary/media/image/ImageCompleteUtil"

module ::Org; module Allbinary; module Media; module Image

class ImageWaitCompleteUtil < ImageCompleteUtil
    attr_accessor :logUtil, :timeDelayHelper, :allTimeDelayHelper

    def jfields_org_allbinary_media_image_ImageWaitCompleteUtil
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @timeDelayHelper = ::Org::Allbinary::TimePackage::TimeDelayHelper.new(18000)
        @allTimeDelayHelper = ::Org::Allbinary::TimePackage::TimeDelayHelper.new(120000)
    end
    

    def initialize()
        super()
        jfields_org_allbinary_media_image_ImageWaitCompleteUtil
    end
    

    # throws Exception
    def waitForImage(image, name)
        @timeDelayHelper.setStartTimeTNT()
        self.waitForATime(image, name, @timeDelayHelper)
    end
    java_overload :waitForImage, 2
    

    # throws Exception
    def handleTimeout(name)
        if @timeDelayHelper.isTimeTNT()
            raise StandardError.new("isReady: Timeout Waiting or GameHtmlHasLoadedResourcesProcessor does not have this Image: " + name)
        end
    end
    java_overload :handleTimeout, 1
    

    # throws Exception
    def waitForATime(image, name, timeDelayHelper)
        playnImage = image
        playnCoreImage = playnImage.getImage()
        while !playnCoreImage.isReady() || playnCoreImage.width() + playnCoreImage.height() <= 0
            if timeDelayHelper.isTimeTNT()
                raise StandardError.new("waitFor: Timeout Waiting or GameHtmlHasLoadedResourcesProcessor does not have this Image: " + name)
            end
        end
        if !image.isReady()
            image.init(image.getImage())
        end
    end
    java_overload :waitForATime, 3
    

    # throws Exception
    def waitForAll()
        @allTimeDelayHelper.setStartTimeTNT()
        hashtable = ::Org::Allbinary::Image::GameFeatureImageCacheFactory.getInstance().getHashtableP()
        objectArray = ::Org::Allbinary::Util::HashtableUtil.getInstance().getKeysAsArray(hashtable)
        size = objectArray.length
        ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put("Image Total: " + (size).to_s, self, "waitForAll")
        (0...size).each do |index|
            self.waitForATime(hashtable.get(objectArray[index]), objectArray[index], @allTimeDelayHelper)
        end
    end
    java_overload :waitForAll, 0
end

module ::Javax; module Microedition; module Lcdui; autoload :Image, "javax/microedition/lcdui/Image" unless const_defined?(:Image, false); end; end; end
module ::Org; module Allbinary; module Image; autoload :GameFeatureImageCacheFactory, "org/allbinary/image/GameFeatureImageCacheFactory" unless const_defined?(:GameFeatureImageCacheFactory, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :PreLogUtil, "org/allbinary/logic/communication/log/PreLogUtil" unless const_defined?(:PreLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module TimePackage; autoload :TimeDelayHelper, "org/allbinary/time/TimeDelayHelper" unless const_defined?(:TimeDelayHelper, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :ABHashtable, "org/allbinary/util/ABHashtable" unless const_defined?(:ABHashtable, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :HashtableUtil, "org/allbinary/util/HashtableUtil" unless const_defined?(:HashtableUtil, false); end; end; end
module ::Org; module Microemu; module Device; module Playn; autoload :PlaynImage, "org/microemu/device/playn/PlaynImage" unless const_defined?(:PlaynImage, false); end; end; end; end
module ::Playn; module Core; autoload :Image, "playn/core/Image" unless const_defined?(:Image, false); end; end
module ::Playn; module Core; autoload :Image, "playn/core/Image" unless const_defined?(:Image, false); end; end

end; end; end; end

