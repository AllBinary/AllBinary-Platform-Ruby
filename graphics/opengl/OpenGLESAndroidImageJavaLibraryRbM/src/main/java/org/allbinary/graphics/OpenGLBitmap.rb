# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.graphics

require "java/lang/JavaOverload"
require "org/allbinary/platform/graphics/PlatformBitmapBase"

module ::Org; module Allbinary; module Graphics

class OpenGLBitmap < ::Org::Allbinary::Platform::Graphics::PlatformBitmapBase
    attr_accessor :bitmap

    def jfields_org_allbinary_graphics_OpenGLBitmap
        @bitmap = nil unless instance_variable_defined?(:@bitmap)
    end
    

    def initialize(bitmap)
        super()
        jfields_org_allbinary_graphics_OpenGLBitmap
        @bitmap = bitmap
    end
    

    def getPixels(pixels, offset, stride, x, y, width, height)
        @bitmap.getPixels(pixels, offset, stride, x, y, width, height)
    end
    java_overload :getPixels, 7
    

    def setPixels(pixels, offset, stride, x, y, width, height)
        @bitmap.setPixels(pixels, offset, stride, x, y, width, height)
    end
    java_overload :setPixels, 7
    

    def getWidth()
        return @bitmap.getWidth()
    end
    java_overload :getWidth, 0
    

    def getHeight()
        return @bitmap.getHeight()
    end
    java_overload :getHeight, 0
    

    def recycle()
        @bitmap.recycle()
    end
    java_overload :recycle, 0
end

module ::Android; module Graphics; autoload :Bitmap, "android/graphics/Bitmap" unless const_defined?(:Bitmap, false); end; end

end; end; end

