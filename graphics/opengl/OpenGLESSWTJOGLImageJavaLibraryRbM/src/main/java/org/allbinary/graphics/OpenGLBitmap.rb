# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.graphics

require "java/lang/JavaOverload"
require "org/allbinary/platform/graphics/PlatformBitmapBase"

module ::Org; module Allbinary; module Graphics

class OpenGLBitmap < ::Org::Allbinary::Platform::Graphics::PlatformBitmapBase
    attr_accessor :image

    def jfields_org_allbinary_graphics_OpenGLBitmap
        @image = nil unless instance_variable_defined?(:@image)
    end
    

    def initialize(bitmap)
        super()
        jfields_org_allbinary_graphics_OpenGLBitmap
        @image = bitmap
    end
    

    def getImage()
        return @image
    end
    java_overload :getImage, 0
    

    def getDepth()
        if @image.isMutable()
            mutableImage = @image
            return mutableImage.getDepth()
        else
            immutableImage = @image
            return immutableImage.getDepth()
        end
    end
    java_overload :getDepth, 0
    

    def getPixels(pixels, offset, stride, x, y, width, height)
        if @image.isMutable()
            mutableImage = @image
            mutableImage.getRGB(pixels, offset, stride, x, y, width, height)
        else
            immutableImage = @image
            immutableImage.getRGB(pixels, offset, stride, x, y, width, height)
        end
    end
    java_overload :getPixels, 7
    

    def setPixels(pixels, offset, stride, x, y, width, height)
        @image.setRGB2(pixels, offset, height, x, y, width, height)
    end
    java_overload :setPixels, 7
    

    def getWidth()
        return @image.getWidth()
    end
    java_overload :getWidth, 0
    

    def getHeight()
        return @image.getHeight()
    end
    java_overload :getHeight, 0
    

    def recycle()
        ::Org::Allbinary::DisposalUtil.getInstance().disposeImage(@image)
    end
    java_overload :recycle, 0
end

module ::Javax; module Microedition; module Lcdui; autoload :Image, "javax/microedition/lcdui/Image" unless const_defined?(:Image, false); end; end; end
module ::Org; module Allbinary; autoload :DisposalUtil, "org/allbinary/DisposalUtil" unless const_defined?(:DisposalUtil, false); end; end
module ::Org; module Microemu; module Device; module Swt; autoload :SwtImmutableImage, "org/microemu/device/swt/SwtImmutableImage" unless const_defined?(:SwtImmutableImage, false); end; end; end; end
module ::Org; module Microemu; module Device; module Swt; autoload :SwtMutableImage, "org/microemu/device/swt/SwtMutableImage" unless const_defined?(:SwtMutableImage, false); end; end; end; end

end; end; end

