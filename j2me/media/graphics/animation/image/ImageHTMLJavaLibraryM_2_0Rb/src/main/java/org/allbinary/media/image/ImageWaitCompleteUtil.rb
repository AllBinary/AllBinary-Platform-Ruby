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

# require "javax/microedition/lcdui/Image"
require "org/allbinary/media/image/ImageCompleteUtil"

class ImageWaitCompleteUtil < ImageCompleteUtil
    attr_accessor :logUtil, :timeDelayHelper, :allTimeDelayHelper

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @timeDelayHelper = TimeDelayHelper.new(18000)
        @allTimeDelayHelper = TimeDelayHelper.new(120000)
    end
    

    def initialize()
        super()
        initialize_fields
    end
    

    # throws Exception
    def waitForImage(image, name)
        @timeDelayHelper.setStartTimeTNT()
        self.waitForATime(image, name, @timeDelayHelper)
    end
    

    # throws Exception
    def handleTimeout(name)
        if @timeDelayHelper.isTimeTNT()
            raise StandardError.new("isReady: Timeout Waiting or GameHtmlHasLoadedResourcesProcessor does not have this Image: " + name)
        end
    end
    

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
    

    # throws Exception
    def waitForAll()
        @allTimeDelayHelper.setStartTimeTNT()
        hashtable = GameFeatureImageCacheFactory.getInstance().getHashtableP()
        objectArray = HashtableUtil.getInstance().getKeysAsArray(hashtable)
        size = objectArray.length
        PreLogUtil.put("Image Total: " + (size).to_s, self, "waitForAll")
        (0...size).each do |index|
            self.waitForATime(hashtable.get(objectArray[index]), objectArray[index], @allTimeDelayHelper)
        end
    end
end

require "org/allbinary/image/GameFeatureImageCacheFactory"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/communication/log/PreLogUtil"
require "org/allbinary/time/TimeDelayHelper"
require "org/allbinary/util/ABHashtable"
require "org/allbinary/util/HashtableUtil"
require "org/microemu/device/playn/PlaynImage"
require "playn/core/CoreImage"

