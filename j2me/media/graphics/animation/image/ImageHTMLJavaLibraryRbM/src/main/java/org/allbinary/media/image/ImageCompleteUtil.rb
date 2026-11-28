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
# package org.allbinary.media.image


module ::Org; module Allbinary; module Media; module Image

class ImageCompleteUtil
    attr_accessor :timeDelayHelper, :allTimeDelayHelper

    def jfields_org_allbinary_media_image_ImageCompleteUtil
        @timeDelayHelper = ::Org::Allbinary::TimePackage::TimeDelayHelper.new(18000)
        @allTimeDelayHelper = ::Org::Allbinary::TimePackage::TimeDelayHelper.new(120000)
    end

    def initialize
        jfields_org_allbinary_media_image_ImageCompleteUtil
    end
    

    def self.getInstance()
        return @@instance
    end
    

    # throws Exception
    def waitForImage(image, name)
        @timeDelayHelper.setStartTime()
        self.waitForATime(image, name, @timeDelayHelper)
    end
    

    # throws Exception
    def isReady(image, name, timeDelayHelper)
        playnImage = image
        if !playnImage.getImage().isReady() && playnImage.getImage().width() + playnImage.getImage().height() == 0
            if timeDelayHelper.isTime()
                raise StandardError.new("isReady: Timeout Waiting or GameHtmlHasLoadedResourcesProcessor does not have this Image: " + name)
            end
            return false
        end
        return true
    end
    

    # throws Exception
    def waitForATime(image, name, timeDelayHelper)
        playnImage = image
        while !playnImage.getImage().isReady() && playnImage.getImage().width() + playnImage.getImage().height() == 0
            if timeDelayHelper.isTime()
                raise StandardError.new("waitFor: Timeout Waiting or GameHtmlHasLoadedResourcesProcessor does not have this Image: " + name)
            end
        end
    end
    

    # throws Exception
    def waitForAll()
        @allTimeDelayHelper.setStartTime()
        hashtable = ::Org::Allbinary::Image::GameFeatureImageCacheFactory.getInstance().getHashtable()
        objectArray = ::Org::Allbinary::Util::HashtableUtil.getInstance().getKeysAsArray(hashtable)
        size = objectArray.length
        ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put("Total: " + (size).to_s, self, "waitForAll")
        (0...size).each do |index|
            self.waitForATime(hashtable.get(objectArray[index]), objectArray[index], @allTimeDelayHelper)
        end
    end

    def self.instance()
        ImageCompleteUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        ImageCompleteUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = ImageCompleteUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "ImageCompleteUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Javax; module Microedition; module Lcdui; autoload :Image, "javax/microedition/lcdui/Image" unless const_defined?(:Image, false); end; end; end
module ::Org; module Allbinary; module Image; autoload :GameFeatureImageCacheFactory, "org/allbinary/image/GameFeatureImageCacheFactory" unless const_defined?(:GameFeatureImageCacheFactory, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :PreLogUtil, "org/allbinary/logic/communication/log/PreLogUtil" unless const_defined?(:PreLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module TimePackage; autoload :TimeDelayHelper, "org/allbinary/time/TimeDelayHelper" unless const_defined?(:TimeDelayHelper, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :HashtableUtil, "org/allbinary/util/HashtableUtil" unless const_defined?(:HashtableUtil, false); end; end; end
module ::Org; module Microemu; module Device; module Playn; autoload :PlaynImage, "org/microemu/device/playn/PlaynImage" unless const_defined?(:PlaynImage, false); end; end; end; end

begin
    ImageCompleteUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

