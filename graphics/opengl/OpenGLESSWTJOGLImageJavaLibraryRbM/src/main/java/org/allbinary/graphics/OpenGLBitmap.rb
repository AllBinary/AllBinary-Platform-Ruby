# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.graphics

# require "javax/microedition/lcdui/Image"
require "org/allbinary/platform/graphics/PlatformBitmapBase"

class OpenGLBitmap < PlatformBitmapBase
    attr_accessor :image

    def initialize_fields
        @image = nil
    end
    

    def initialize(bitmap)
        super()
        initialize_fields
        @image = bitmap
    end
    

    def getImage()
        return @image
    end
    

    def getDepth()
        if @image.isMutable()
            mutableImage = @image
            return mutableImage.getDepth()
        else
            immutableImage = @image
            return immutableImage.getDepth()
        end
    end
    

    def getPixels(pixels, offset, stride, x, y, width, height)
        if @image.isMutable()
            mutableImage = @image
            mutableImage.getRGB(pixels, offset, stride, x, y, width, height)
        else
            immutableImage = @image
            immutableImage.getRGB(pixels, offset, stride, x, y, width, height)
        end
    end
    

    def setPixels(pixels, offset, stride, x, y, width, height)
        @image.setRGB2(pixels, offset, height, x, y, width, height)
    end
    

    def getWidth()
        return @image.getWidth()
    end
    

    def getHeight()
        return @image.getHeight()
    end
    

    def recycle()
        DisposalUtil.getInstance().disposeImage(@image)
    end
end

require "org/allbinary/DisposalUtil"
require "org/microemu/device/swt/SwtImmutableImage"
require "org/microemu/device/swt/SwtMutableImage"

