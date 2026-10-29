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
    attr_accessor :ISREADY, :COMPLETE

    def initialize_fields
        @ISREADY = "isReady"
        @COMPLETE = "Image loading complete for: "
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return ImageCompleteUtil.instance
    end
    

    # throws Exception
    def waitForImage(image, name)
    end
    

    # throws Exception
    def isReady(image, name, timeDelayHelper)
        playnImage = image
        playnCoreImage = playnImage.getImage()
        if !playnCoreImage.isReady() || playnCoreImage.width() + playnCoreImage.height() <= 0
            self.handleTimeout(name)
            return false
        end
        if !image.isReady()
            image.init(image.getImage())
            if !image.isReady()
                PreLogUtil.put("Waiting for Not Ready Image: " + image.getName(), self, @ISREADY)
            end
        end
        commonStrings = CommonStrings.getInstance()
        PreLogUtil.put(@COMPLETE + image.getName(), self, commonStrings.SUCCESS)
        return true
    end
    

    # throws Exception
    def handleTimeout(name)
    end
    

    # throws Exception
    def waitForAll()
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/communication/log/PreLogUtil"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/time/TimeDelayHelper"
require "org/microemu/device/playn/PlaynImage"
require "playn/core/CoreImage"

class ImageCompleteUtil
    @@instance = ImageCompleteUtil.new()
end

