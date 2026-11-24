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
# package org.allbinary.image.opengles

require "java/lang/JavaOverload"
require "org/allbinary/image/opengles/OpenGLESImage"

module ::Org; module Allbinary; module Image; module Opengles

#Many devices don't support this even though it is supposed to
class OpenGLESGL11ExtImage < OpenGLESImage
    attr_accessor :logUtil, :a, :rectangle

    def jfields_org_allbinary_image_opengles_OpenGLESGL11ExtImage
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @a = 0 unless instance_variable_defined?(:@a)
        @rectangle = nil unless instance_variable_defined?(:@rectangle)
    end
    

    def initialize(image, bitmapFactory, textureFactory)
        super(image, bitmapFactory, textureFactory)
        jfields_org_allbinary_image_opengles_OpenGLESGL11ExtImage
        self.onDisplayChangeEvent(::Org::Allbinary::Graphics::Displayable::DisplayInfoSingleton.getInstance().displayChangeEvent)
        @rectangle = [0, self.getHeight(), self.getWidth(), -self.getHeight()]
    end
    

    def onDisplayChangeEvent(displayChangeEvent)
        begin
            @logUtil.putF(@commonStrings.START, self, "onResize")
            @a = ::Org::Allbinary::Graphics::Displayable::DisplayInfoSingleton.getInstance().getLastHeight() - self.getHeight()
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "onResize", e)
        end
    end
    java_overload :onDisplayChangeEvent, 1
    

    def set(gl)
        self.onDisplayChangeEvent(::Org::Allbinary::Graphics::Displayable::DisplayInfoSingleton.getInstance().displayChangeEvent)
        gl11 = gl
        if OpenGLESGL11ExtImage.superclass.java_super_method(:initTexture, 1).bind(self).call(gl11)
            @textureFactory.load(gl11, ::Javax::Microedition::Khronos::Opengles::GL10::GL_TEXTURE_2D, 0, self, 0, true)
            gl11.glTexParameteriv(::Javax::Microedition::Khronos::Opengles::GL10::GL_TEXTURE_2D, ::Javax::Microedition::Khronos::Opengles::GL11Ext::GL_TEXTURE_CROP_RECT_OES, @rectangle, 0)
            gl11.glDisable(::Javax::Microedition::Khronos::Opengles::GL10::GL_TEXTURE_2D)
            ::Org::Allbinary::Graphics::Opengles::OpenGLLogUtil.getInstance().logError(gl11, self)
        end
    end
    java_overload :set, 1
    

    def draw(gl, x, y, z)
        gl.glEnable(::Javax::Microedition::Khronos::Opengles::GL10::GL_TEXTURE_2D)
        gl.glBindTexture(::Javax::Microedition::Khronos::Opengles::GL10::GL_TEXTURE_2D, @openGLESImageProperties.textureID)
        gl11Ext = gl
        gl11Ext.glDrawTexfOES((x).to_f, ((@a - y)).to_f, (z).to_f, (self.getWidth()).to_f, (self.getHeight()).to_f)
        gl.glDisable(::Javax::Microedition::Khronos::Opengles::GL10::GL_TEXTURE_2D)
    end
    java_overload :draw, 4
end

module ::Javax; module Microedition; module Khronos; module Opengles; autoload :GL, "javax/microedition/khronos/opengles/GL" unless const_defined?(:GL, false); end; end; end; end
module ::Javax; module Microedition; module Khronos; module Opengles; autoload :GL10, "javax/microedition/khronos/opengles/GL10" unless const_defined?(:GL10, false); end; end; end; end
module ::Javax; module Microedition; module Khronos; module Opengles; autoload :GL11, "javax/microedition/khronos/opengles/GL11" unless const_defined?(:GL11, false); end; end; end; end
module ::Javax; module Microedition; module Khronos; module Opengles; autoload :GL11Ext, "javax/microedition/khronos/opengles/GL11Ext" unless const_defined?(:GL11Ext, false); end; end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Image, "javax/microedition/lcdui/Image" unless const_defined?(:Image, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Displayable; autoload :DisplayInfoSingleton, "org/allbinary/graphics/displayable/DisplayInfoSingleton" unless const_defined?(:DisplayInfoSingleton, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Displayable; module Event; autoload :DisplayChangeEvent, "org/allbinary/graphics/displayable/event/DisplayChangeEvent" unless const_defined?(:DisplayChangeEvent, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Opengles; autoload :OpenGLLogUtil, "org/allbinary/graphics/opengles/OpenGLLogUtil" unless const_defined?(:OpenGLLogUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Platform; module Graphics; autoload :PlatformBitmapBaseFactory, "org/allbinary/platform/graphics/PlatformBitmapBaseFactory" unless const_defined?(:PlatformBitmapBaseFactory, false); end; end; end; end
module ::Org; module Allbinary; module Platform; module Opengles; autoload :PlatformTextureBaseFactory, "org/allbinary/platform/opengles/PlatformTextureBaseFactory" unless const_defined?(:PlatformTextureBaseFactory, false); end; end; end; end

end; end; end; end

