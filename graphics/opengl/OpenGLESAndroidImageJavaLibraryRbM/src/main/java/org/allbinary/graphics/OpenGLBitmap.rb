# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.graphics

require "org/allbinary/platform/graphics/PlatformBitmapBase"

class OpenGLBitmap < PlatformBitmapBase
    attr_accessor :bitmap

    def initialize_fields
        @bitmap = nil
    end
    

    def initialize(bitmap)
        super()
        initialize_fields
        @bitmap = bitmap
    end
    

    def getPixels(pixels, offset, stride, x, y, width, height)
        @bitmap.getPixels(pixels, offset, stride, x, y, width, height)
    end
    

    def setPixels(pixels, offset, stride, x, y, width, height)
        @bitmap.setPixels(pixels, offset, stride, x, y, width, height)
    end
    

    def getWidth()
        return @bitmap.getWidth()
    end
    

    def getHeight()
        return @bitmap.getHeight()
    end
    

    def recycle()
        @bitmap.recycle()
    end
end

require "android/graphics/Bitmap"

