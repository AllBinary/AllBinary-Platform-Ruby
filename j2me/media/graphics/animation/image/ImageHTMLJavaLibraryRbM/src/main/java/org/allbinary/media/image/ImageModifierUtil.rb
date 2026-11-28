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


module ::Org; module Allbinary; module Media; module Image

class ImageModifierUtil
    

    def self.getInstanceOrCreate()
        return @@instance
    end
    

    def setColor(unusedOriginalImage, image, imageIndex, basicColor)
    end
    

    def changeColor(unusedOriginalImage, image, imageIndex, basicColor)
    end
    

    def setAlpha(originalImage, image, imageIndex, alphaInt)
    end
    

    def getImageArray(originalImageArray)
        return originalImageArray
    end
    

    def handleImage(imageArray, index, image)
    end
    

    def reset()
    end

    def self.instance()
        ImageModifierUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        ImageModifierUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = ImageModifierUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "ImageModifierUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Javax; module Microedition; module Lcdui; autoload :Image, "javax/microedition/lcdui/Image" unless const_defined?(:Image, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end
module ::Org; module Microemu; module Device; module Playn; autoload :PlaynMutableImage, "org/microemu/device/playn/PlaynMutableImage" unless const_defined?(:PlaynMutableImage, false); end; end; end; end
module ::Playn; module Core; autoload :CanvasImage, "playn/core/CanvasImage" unless const_defined?(:CanvasImage, false); end; end
module ::Playn; module Core; autoload :CanvasSurface, "playn/core/CanvasSurface" unless const_defined?(:CanvasSurface, false); end; end

begin
    ImageModifierUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

