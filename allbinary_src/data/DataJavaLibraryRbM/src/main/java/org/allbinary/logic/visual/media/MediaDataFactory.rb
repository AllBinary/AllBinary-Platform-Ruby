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


class MediaDataFactory
    attr_accessor :AVI, :BMP, :CEL, :FITS, :FLI, :GBR, :GIF, :GIH, :JPG, :PIX, :PNG, :PNM, :PSD, :PSP, :PS, :SGI, :SWF, :TGA, :TIFF, :WMF

    def initialize_fields
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
        initialize_fields
    end
    

    def self.getInstance()
        return MediaDataFactory.instance
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/visual/media/MediaData"

class MediaDataFactory
    @@instance = MediaDataFactory.new()
end

