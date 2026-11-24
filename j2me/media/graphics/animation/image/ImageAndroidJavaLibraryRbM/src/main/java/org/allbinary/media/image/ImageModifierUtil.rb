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
    attr_accessor :paint

    def jfields_org_allbinary_media_image_ImageModifierUtil
        @paint = ::Android::Graphics::Paint.new(::Android::Graphics::Paint::ANTI_ALIAS_FLAG)
    end

    def initialize
        jfields_org_allbinary_media_image_ImageModifierUtil
    end
    

    def self.getInstanceOrCreate()
        return ImageModifierUtil.new()
    end
    

    def setColor(unusedOriginalImage, image, imageIndex, basicColor)
        @paint.setColorFilter(::Android::Graphics::PorterDuffColorFilter.new(basicColor.to_i, ::Android::Graphics::PorterDuff::Mode.SRC_IN))
    end
    

    def changeColor(unusedOriginalImage, image, imageIndex, basicColor)
        @paint.setColorFilter(::Android::Graphics::PorterDuffColorFilter.new(basicColor.to_i, ::Android::Graphics::PorterDuff::Mode.SRC_IN))
    end
    

    def setAlpha(originalImage, image, imageIndex, alphaInt)
        if alphaInt != @paint.getAlpha()
            @paint.setAlpha(alphaInt)
        end
    end
    

    def getImageArray(originalImageArray)
        return originalImageArray
    end
    

    def handleImage(imageArray, index, image)
    end
    

    def reset()
    end
end

module ::Android; module Graphics; autoload :Paint, "android/graphics/Paint" unless const_defined?(:Paint, false); end; end
module ::Android; module Graphics; autoload :PorterDuff, "android/graphics/PorterDuff" unless const_defined?(:PorterDuff, false); end; end
module ::Android; module Graphics; autoload :PorterDuffColorFilter, "android/graphics/PorterDuffColorFilter" unless const_defined?(:PorterDuffColorFilter, false); end; end
module ::Javax; module Microedition; module Lcdui; autoload :Image, "javax/microedition/lcdui/Image" unless const_defined?(:Image, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end

end; end; end; end

