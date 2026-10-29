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

# require "javax/microedition/khronos/opengles/GL"
# require "javax/microedition/khronos/opengles/GL10"
# require "javax/microedition/khronos/opengles/GL11"
# require "javax/microedition/khronos/opengles/GL11Ext"
# require "javax/microedition/lcdui/Image"
require "org/allbinary/image/opengles/OpenGLESImage"

#Many devices don't support this even though it is supposed to
class OpenGLESGL11ExtImage < OpenGLESImage
    attr_accessor :logUtil, :a, :rectangle

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @a = 0
        @rectangle = nil
    end
    

    def initialize(image, bitmapFactory, textureFactory)
        super(image, bitmapFactory, textureFactory)
        initialize_fields
        self.onDisplayChangeEvent(nil)
        @rectangle = [0, self.getHeight(), self.getWidth(), -self.getHeight()]
    end
    

    def onDisplayChangeEvent(displayChangeEvent)
        begin
            @logUtil.putF(@commonStrings.START, self, "onResize")
            @a = DisplayInfoSingleton.getInstance().getLastHeight() - self.getHeight()
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "onResize", e)
        end
    end
    

    def set(gl)
        self.onDisplayChangeEvent(nil)
        gl11 = gl
        if self.class.superclass.instance_method(:initTexture).bind(self).call(gl11)
            @textureFactory.load(gl11, GL10.GL_TEXTURE_2D, 0, self, 0, true)
            gl11.glTexParameteriv(GL10.GL_TEXTURE_2D, GL11Ext::GL_TEXTURE_CROP_RECT_OES, @rectangle, 0)
            gl11.glDisable(GL10.GL_TEXTURE_2D)
            OpenGLLogUtil.getInstance().logError(gl11, self)
        end
    end
    

    def draw(gl, x, y, z)
        gl.glEnable(GL10.GL_TEXTURE_2D)
        gl.glBindTexture(GL10.GL_TEXTURE_2D, @openGLESImageProperties.textureID)
        (gl).glDrawTexfOES(x, @a - y, z, self.getWidth(), self.getHeight())
        gl.glDisable(GL10.GL_TEXTURE_2D)
    end
end

require "org/allbinary/graphics/displayable/DisplayInfoSingleton"
require "org/allbinary/graphics/displayable/event/DisplayChangeEvent"
require "org/allbinary/graphics/opengles/OpenGLLogUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/platform/graphics/PlatformBitmapBaseFactory"
require "org/allbinary/platform/opengles/PlatformTextureBaseFactory"

