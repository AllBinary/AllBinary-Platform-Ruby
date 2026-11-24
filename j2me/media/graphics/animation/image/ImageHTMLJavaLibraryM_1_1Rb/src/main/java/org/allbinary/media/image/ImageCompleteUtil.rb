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

require "java/lang/JavaClass"

module ::Org; module Allbinary; module Media; module Image

class ImageCompleteUtil
    attr_accessor :ISREADY, :COMPLETE

    def jfields_org_allbinary_media_image_ImageCompleteUtil
        @ISREADY = "isReady"
        @COMPLETE = "Image loading complete for: "
    end

    def initialize
        jfields_org_allbinary_media_image_ImageCompleteUtil
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
                ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put("Waiting for Not Ready Image: " + image.getName(), self, @ISREADY)
            end
        end
        commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put(@COMPLETE + image.getName(), self, commonStrings.SUCCESS)
        return true
    end
    

    # throws Exception
    def handleTimeout(name)
    end
    

    # throws Exception
    def waitForAll()
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
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :PreLogUtil, "org/allbinary/logic/communication/log/PreLogUtil" unless const_defined?(:PreLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module TimePackage; autoload :TimeDelayHelper, "org/allbinary/time/TimeDelayHelper" unless const_defined?(:TimeDelayHelper, false); end; end; end
module ::Org; module Microemu; module Device; module Playn; autoload :PlaynImage, "org/microemu/device/playn/PlaynImage" unless const_defined?(:PlaynImage, false); end; end; end; end
module ::Playn; module Core; autoload :Image, "playn/core/Image" unless const_defined?(:Image, false); end; end
module ::Playn; module Core; autoload :Image, "playn/core/Image" unless const_defined?(:Image, false); end; end

begin
    ImageCompleteUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

