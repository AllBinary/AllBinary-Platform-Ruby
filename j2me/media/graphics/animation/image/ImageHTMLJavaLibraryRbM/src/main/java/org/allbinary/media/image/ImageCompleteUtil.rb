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

# require "javax/microedition/lcdui/Image"

class ImageCompleteUtil
    attr_accessor :timeDelayHelper, :allTimeDelayHelper

    def initialize_fields
        @timeDelayHelper = TimeDelayHelper.new(18000)
        @allTimeDelayHelper = TimeDelayHelper.new(120000)
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return ImageCompleteUtil.instance
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
        hashtable = GameFeatureImageCacheFactory.getInstance().getHashtable()
        objectArray = HashtableUtil.getInstance().getKeysAsArray(hashtable)
        size = objectArray.length
        PreLogUtil.put("Total: " + (size).to_s, self, "waitForAll")
        (0...size).each do |index|
            self.waitForATime(hashtable.get(objectArray[index]), objectArray[index], @allTimeDelayHelper)
        end
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/image/GameFeatureImageCacheFactory"
require "org/allbinary/logic/communication/log/PreLogUtil"
require "org/allbinary/time/TimeDelayHelper"
require "org/allbinary/util/HashtableUtil"
require "org/microemu/device/playn/PlaynImage"

class ImageCompleteUtil
    @@instance = ImageCompleteUtil.new()
end

