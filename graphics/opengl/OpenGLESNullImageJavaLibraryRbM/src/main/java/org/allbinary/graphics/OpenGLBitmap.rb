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
    end
    java_overload :getPixels, 7
    

    def setPixels(pixels, offset, stride, x, y, width, height)
    end
    java_overload :setPixels, 7
    

    def recycle()
    end
    java_overload :recycle, 0
end

end; end; end

