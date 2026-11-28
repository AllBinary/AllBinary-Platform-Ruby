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
# package org.allbinary.logic.visual.media


module ::Org; module Allbinary; module Logic; module Visual; module Media

class MediaDataFactory
    attr_accessor :AVI, :BMP, :CEL, :FITS, :FLI, :GBR, :GIF, :GIH, :JPG, :PIX, :PNG, :PNM, :PSD, :PSP, :PS, :SGI, :SWF, :TGA, :TIFF, :WMF

    def jfields_org_allbinary_logic_visual_media_MediaDataFactory
        @AVI = MediaData.new("avi")
        @BMP = MediaData.new("bmp")
        @CEL = MediaData.new("cel")
        @FITS = MediaData.new("fits")
        @FLI = MediaData.new("fli")
        @GBR = MediaData.new("gbr")
        @GIF = MediaData.new("gif")
        @GIH = MediaData.new("gih")
        @JPG = MediaData.new("jpg")
        @PIX = MediaData.new("pix")
        @PNG = MediaData.new("png")
        @PNM = MediaData.new("pnm")
        @PSD = MediaData.new("psd")
        @PSP = MediaData.new("psp")
        @PS = MediaData.new("ps")
        @SGI = MediaData.new("SGI")
        @SWF = MediaData.new("swf")
        @TGA = MediaData.new("tga")
        @TIFF = MediaData.new("tiff")
        @WMF = MediaData.new("wmf")
    end

    def initialize
        jfields_org_allbinary_logic_visual_media_MediaDataFactory
    end
    

    def self.getInstance()
        return @@instance
    end

    def self.instance()
        MediaDataFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        MediaDataFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = MediaDataFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "MediaDataFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :MediaData, "org/allbinary/logic/visual/media/MediaData" unless const_defined?(:MediaData, false)

begin
    MediaDataFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

