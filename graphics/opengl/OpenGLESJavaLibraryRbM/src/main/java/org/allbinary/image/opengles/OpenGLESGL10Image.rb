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
# require "java/nio/ByteBuffer"
# require "java/nio/ByteOrder"
# require "java/nio/FloatBuffer"
require "org/allbinary/image/opengles/OpenGLESImage"

module ::Org; module Allbinary; module Image; module Opengles

class OpenGLESGL10Image < OpenGLESImage
    attr_accessor :textureVertexFloatBuffer, :realOpenGLESImageDraw, :openGLESImageDraw

    def jfields_org_allbinary_image_opengles_OpenGLESGL10Image
        @textureVertexFloatBuffer = ByteBuffer.allocateDirect(4 * 4 * 2).order(ByteOrder.nativeOrder()).asFloatBuffer()
        @realOpenGLESImageDraw = Class.new(OpenGLESImageDraw.is_a?(Class) ? OpenGLESImageDraw : Object) do
        include(OpenGLESImageDraw) unless OpenGLESImageDraw.is_a?(Class)
        @glUtil = ::Org::Allbinary::Opengles::GLUtil.getInstance()
        @displayInfoSingleton = ::Org::Allbinary::Graphics::Displayable::DisplayInfoSingleton.getInstance()
        @textureVertexFloatBuffer = @textureVertexFloatBuffer
        @regionTextureRectangleFloatArray = (Array.new(8, 0.0)).tap { |java_array| java_array.instance_variable_set(:@java_component, :F) }
        @regionTextureVertexFloatBuffer = ByteBuffer.allocateDirect(4 * 4 * 2).order(ByteOrder.nativeOrder()).asFloatBuffer()
        @regionRectangleFloatArray = [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]
        @regionRectangleVertexFloatBuffer = ByteBuffer.allocateDirect(4 * 4 * 3).order(ByteOrder.nativeOrder()).asFloatBuffer()
        @openGLESImageProperties = @openGLESImageProperties
        

        def drawRegion(gl, viewHeight, x_src, y_src, width, height, x, y, z)
            imageWidth = self.getWidth()
            imageHeight = self.getHeight()
            @regionRectangleFloatArray[7] = (viewHeight).to_f
            @regionRectangleFloatArray[1] = @regionRectangleFloatArray[7] - height
            @regionRectangleFloatArray[3] = width
            @regionRectangleFloatArray[4] = @regionRectangleFloatArray[1]
            @regionRectangleFloatArray[9] = @regionRectangleFloatArray[3]
            @regionRectangleFloatArray[10] = @regionRectangleFloatArray[7]
            @regionTextureRectangleFloatArray[0] = x_src / imageWidth
            @regionTextureRectangleFloatArray[1] = (y_src + height) / imageHeight
            @regionTextureRectangleFloatArray[2] = (x_src + width) / imageWidth
            @regionTextureRectangleFloatArray[3] = @regionTextureRectangleFloatArray[1]
            @regionTextureRectangleFloatArray[4] = @regionTextureRectangleFloatArray[0]
            @regionTextureRectangleFloatArray[5] = y_src / imageHeight
            @regionTextureRectangleFloatArray[6] = @regionTextureRectangleFloatArray[2]
            @regionTextureRectangleFloatArray[7] = @regionTextureRectangleFloatArray[5]
            u_center = (@regionTextureRectangleFloatArray[0] + @regionTextureRectangleFloatArray[2]) / 2.0
            v_center = (@regionTextureRectangleFloatArray[5] + @regionTextureRectangleFloatArray[1]) / 2.0
            @glUtil.rotateUVs(@regionTextureRectangleFloatArray, (-@openGLESImageProperties.angle).to_f, u_center, v_center)
            gl.glPushMatrix()
            imageProcessor = @imageProcessor
            @openGLESImageTranslate.translate(gl, self, (x).to_f, (-y).to_f)
            imageProcessor.scale(gl, @openGLESImageProperties.scaleX, @openGLESImageProperties.scaleY)
            imageProcessor.colorMask(gl, @openGLESImageProperties.redf, @openGLESImageProperties.greenf, @openGLESImageProperties.bluef, @openGLESImageProperties.alphaf)
            @openGLESImageTranslate.translate2(gl, self)
            @regionRectangleVertexFloatBuffer.put(@regionRectangleFloatArray)
            @glUtil.position(@regionRectangleVertexFloatBuffer, 0)
            gl.glVertexPointer(3, ::Javax::Microedition::Khronos::Opengles::GL10::GL_FLOAT, 0, @regionRectangleVertexFloatBuffer)
            gl.glEnableClientState(::Javax::Microedition::Khronos::Opengles::GL10::GL_VERTEX_ARRAY)
            gl.glEnable(::Javax::Microedition::Khronos::Opengles::GL10::GL_TEXTURE_2D)
            gl.glBindTexture(::Javax::Microedition::Khronos::Opengles::GL10::GL_TEXTURE_2D, @openGLESImageProperties.textureID)
            gl.glEnableClientState(::Javax::Microedition::Khronos::Opengles::GL10::GL_TEXTURE_COORD_ARRAY)
            @regionTextureVertexFloatBuffer.put(@regionTextureRectangleFloatArray)
            @glUtil.position(@regionTextureVertexFloatBuffer, 0)
            gl.glTexCoordPointer(2, ::Javax::Microedition::Khronos::Opengles::GL10::GL_FLOAT, 0, @regionTextureVertexFloatBuffer)
            gl.glDrawArrays(::Javax::Microedition::Khronos::Opengles::GL10::GL_TRIANGLE_STRIP, 0, 4)
            gl.glDisableClientState(::Javax::Microedition::Khronos::Opengles::GL10::GL_VERTEX_ARRAY)
            gl.glDisableClientState(::Javax::Microedition::Khronos::Opengles::GL10::GL_TEXTURE_COORD_ARRAY)
            gl.glDisable(::Javax::Microedition::Khronos::Opengles::GL10::GL_TEXTURE_2D)
            gl.glPopMatrix()
        end
        java_overload :drawRegion, 9
        

        def draw(gl, x, y, z)
            width = self.getWidth()
            height = self.getHeight()
            @regionRectangleFloatArray[7] = (@displayInfoSingleton.getLastHeight()).to_f
            @regionRectangleFloatArray[1] = @regionRectangleFloatArray[7] - height
            @regionRectangleFloatArray[3] = (width).to_f
            @regionRectangleFloatArray[4] = @regionRectangleFloatArray[1]
            @regionRectangleFloatArray[9] = @regionRectangleFloatArray[3]
            @regionRectangleFloatArray[10] = @regionRectangleFloatArray[7]
            @regionTextureRectangleFloatArray[0] = 0.0
            @regionTextureRectangleFloatArray[1] = 1.0
            @regionTextureRectangleFloatArray[2] = 1.0
            @regionTextureRectangleFloatArray[3] = 1.0
            @regionTextureRectangleFloatArray[4] = 0.0
            @regionTextureRectangleFloatArray[5] = 0.0
            @regionTextureRectangleFloatArray[6] = 1.0
            @regionTextureRectangleFloatArray[7] = 0.0
            gl.glPushMatrix()
            @openGLESImageTranslate.translate(gl, self, (x).to_f, (-y).to_f)
            imageProcessor = @imageProcessor
            imageProcessor.scale(gl, @openGLESImageProperties.scaleX, @openGLESImageProperties.scaleY)
            imageProcessor.colorMask(gl, @openGLESImageProperties.redf, @openGLESImageProperties.greenf, @openGLESImageProperties.bluef, @openGLESImageProperties.alphaf)
            @openGLESImageTranslate.translate2(gl, self)
            @regionRectangleVertexFloatBuffer.put(@regionRectangleFloatArray)
            @glUtil.position(@regionRectangleVertexFloatBuffer, 0)
            gl.glVertexPointer(3, ::Javax::Microedition::Khronos::Opengles::GL10::GL_FLOAT, 0, @regionRectangleVertexFloatBuffer)
            gl.glEnableClientState(::Javax::Microedition::Khronos::Opengles::GL10::GL_VERTEX_ARRAY)
            gl.glEnable(::Javax::Microedition::Khronos::Opengles::GL10::GL_TEXTURE_2D)
            gl.glBindTexture(::Javax::Microedition::Khronos::Opengles::GL10::GL_TEXTURE_2D, @openGLESImageProperties.textureID)
            gl.glEnableClientState(::Javax::Microedition::Khronos::Opengles::GL10::GL_TEXTURE_COORD_ARRAY)
            @glUtil.rotateUVs(@regionTextureRectangleFloatArray, (-@openGLESImageProperties.angle).to_f, 0.5, 0.5)
            @glUtil.position(@textureVertexFloatBuffer, 0)
            @textureVertexFloatBuffer.put(@regionTextureRectangleFloatArray)
            @glUtil.position(@textureVertexFloatBuffer, 0)
            gl.glTexCoordPointer(2, ::Javax::Microedition::Khronos::Opengles::GL10::GL_FLOAT, 0, @textureVertexFloatBuffer)
            gl.glDrawArrays(::Javax::Microedition::Khronos::Opengles::GL10::GL_TRIANGLE_STRIP, 0, 4)
            gl.glDisableClientState(::Javax::Microedition::Khronos::Opengles::GL10::GL_VERTEX_ARRAY)
            gl.glDisableClientState(::Javax::Microedition::Khronos::Opengles::GL10::GL_TEXTURE_COORD_ARRAY)
            gl.glDisable(::Javax::Microedition::Khronos::Opengles::GL10::GL_TEXTURE_2D)
            gl.glPopMatrix()
        end
        java_overload :draw, 4
    end.new()
        @openGLESImageDraw = OpenGLESImageDraw.getInstance()
    end
    

    def initialize(image, bitmapFactory, textureFactory)
        super(image, bitmapFactory, textureFactory)
        jfields_org_allbinary_image_opengles_OpenGLESGL10Image
        self.initVertices()
    end
    

    def initVertices()
        @textureVertexFloatBuffer.put(0.0)
        @textureVertexFloatBuffer.put(1.0)
        @textureVertexFloatBuffer.put(1.0)
        @textureVertexFloatBuffer.put(1.0)
        @textureVertexFloatBuffer.put(0.0)
        @textureVertexFloatBuffer.put(0.0)
        @textureVertexFloatBuffer.put(1.0)
        @textureVertexFloatBuffer.put(0.0)
        @textureVertexFloatBuffer.rewind()
    end
    java_overload :initVertices, 0
    

    def set(gl)
        gl10 = gl
        if OpenGLESGL10Image.superclass.java_super_method(:initTexture, 1).bind(self).call(gl10)
            @textureFactory.load(gl10, ::Javax::Microedition::Khronos::Opengles::GL10::GL_TEXTURE_2D, 0, self, 0, true)
            gl10.glDisable(::Javax::Microedition::Khronos::Opengles::GL10::GL_TEXTURE_2D)
            @openGLESImageDraw = @realOpenGLESImageDraw
            ::Org::Allbinary::Graphics::Opengles::OpenGLLogUtil.getInstance().logError(gl10, self)
        end
    end
    java_overload :set, 1
    

    def drawRegion(gl, viewHeight, x_src, y_src, width, height, x, y, z)
        @openGLESImageDraw.drawRegion(gl, viewHeight, x_src, y_src, width, height, x, y, z)
    end
    java_overload :drawRegion, 9
    

    def draw(gl, x, y, z)
        @openGLESImageDraw.draw(gl, x, y, z)
    end
    java_overload :draw, 4
end

module ::Javax; module Microedition; module Khronos; module Opengles; autoload :GL, "javax/microedition/khronos/opengles/GL" unless const_defined?(:GL, false); end; end; end; end
module ::Javax; module Microedition; module Khronos; module Opengles; autoload :GL10, "javax/microedition/khronos/opengles/GL10" unless const_defined?(:GL10, false); end; end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Image, "javax/microedition/lcdui/Image" unless const_defined?(:Image, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Displayable; autoload :DisplayInfoSingleton, "org/allbinary/graphics/displayable/DisplayInfoSingleton" unless const_defined?(:DisplayInfoSingleton, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Opengles; autoload :OpenGLLogUtil, "org/allbinary/graphics/opengles/OpenGLLogUtil" unless const_defined?(:OpenGLLogUtil, false); end; end; end; end
module ::Org; module Allbinary; module Opengles; autoload :GLUtil, "org/allbinary/opengles/GLUtil" unless const_defined?(:GLUtil, false); end; end; end
module ::Org; module Allbinary; module Platform; module Graphics; autoload :PlatformBitmapBaseFactory, "org/allbinary/platform/graphics/PlatformBitmapBaseFactory" unless const_defined?(:PlatformBitmapBaseFactory, false); end; end; end; end
module ::Org; module Allbinary; module Platform; module Opengles; autoload :PlatformTextureBaseFactory, "org/allbinary/platform/opengles/PlatformTextureBaseFactory" unless const_defined?(:PlatformTextureBaseFactory, false); end; end; end; end
autoload :OpenGLESImageDraw, "org/allbinary/image/opengles/OpenGLESImageDraw" unless const_defined?(:OpenGLESImageDraw, false)
autoload :OpenGLESImageProcessor, "org/allbinary/image/opengles/OpenGLESImageProcessor" unless const_defined?(:OpenGLESImageProcessor, false)
autoload :OpenGLESImageProperties, "org/allbinary/image/opengles/OpenGLESImageProperties" unless const_defined?(:OpenGLESImageProperties, false)

end; end; end; end

