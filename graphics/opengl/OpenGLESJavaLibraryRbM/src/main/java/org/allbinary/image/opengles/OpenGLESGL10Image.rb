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

# require "java/nio/ByteBuffer"
# require "java/nio/ByteOrder"
# require "java/nio/FloatBuffer"
# require "javax/microedition/khronos/opengles/GL"
# require "javax/microedition/khronos/opengles/GL10"
# require "javax/microedition/lcdui/Image"
require "org/allbinary/image/opengles/OpenGLESImage"

class OpenGLESGL10Image < OpenGLESImage
    attr_accessor :textureVertexFloatBuffer, :realOpenGLESImageDraw, :openGLESImageDraw

    def initialize_fields
        @textureVertexFloatBuffer = ByteBuffer.allocateDirect(4 * 4 * 2).order(ByteOrder.nativeOrder()).asFloatBuffer()
        @realOpenGLESImageDraw = Class.new(OpenGLESImageDraw.is_a?(Class) ? OpenGLESImageDraw : Object) do
        include(OpenGLESImageDraw) unless OpenGLESImageDraw.is_a?(Class)
        @glUtil = GLUtil.getInstance()
        @displayInfoSingleton = DisplayInfoSingleton.getInstance()
        @textureVertexFloatBuffer = @textureVertexFloatBuffer
        @regionTextureRectangleFloatArray = Array.new(8, 0.0)
        @regionTextureVertexFloatBuffer = ByteBuffer.allocateDirect(4 * 4 * 2).order(ByteOrder.nativeOrder()).asFloatBuffer()
        @regionRectangleFloatArray = [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]
        @regionRectangleVertexFloatBuffer = ByteBuffer.allocateDirect(4 * 4 * 3).order(ByteOrder.nativeOrder()).asFloatBuffer()
        @openGLESImageProperties = @openGLESImageProperties
        

        def drawRegion(gl, viewHeight, x_src, y_src, width, height, x, y, z)
            imageWidth = self.getWidth()
            imageHeight = self.getHeight()
            @regionRectangleFloatArray[7] = viewHeight
            @regionRectangleFloatArray[1] = @regionRectangleFloatArray[7] - height
            @regionRectangleFloatArray[3] = width
            @regionRectangleFloatArray[4] = @regionRectangleFloatArray[1]
            @regionRectangleFloatArray[9] = @regionRectangleFloatArray[3]
            @regionRectangleFloatArray[10] = @regionRectangleFloatArray[7]
            @regionTextureRectangleFloatArray[0] = x_src / imageWidth
            @regionTextureRectangleFloatArray[1] = ((y_src + height)) / imageHeight
            @regionTextureRectangleFloatArray[2] = ((x_src + width)) / imageWidth
            @regionTextureRectangleFloatArray[3] = @regionTextureRectangleFloatArray[1]
            @regionTextureRectangleFloatArray[4] = @regionTextureRectangleFloatArray[0]
            @regionTextureRectangleFloatArray[5] = y_src / imageHeight
            @regionTextureRectangleFloatArray[6] = @regionTextureRectangleFloatArray[2]
            @regionTextureRectangleFloatArray[7] = @regionTextureRectangleFloatArray[5]
            u_center = (@regionTextureRectangleFloatArray[0] + @regionTextureRectangleFloatArray[2]) / 2.0
            v_center = (@regionTextureRectangleFloatArray[5] + @regionTextureRectangleFloatArray[1]) / 2.0
            @glUtil.rotateUVs(@regionTextureRectangleFloatArray, -@openGLESImageProperties.angle, u_center, v_center)
            gl.glPushMatrix()
            imageProcessor = @imageProcessor
            @openGLESImageTranslate.translate(gl, self, x, -y)
            imageProcessor.scale(gl, @openGLESImageProperties.scaleX, @openGLESImageProperties.scaleY)
            imageProcessor.colorMask(gl, @openGLESImageProperties.redf, @openGLESImageProperties.greenf, @openGLESImageProperties.bluef, @openGLESImageProperties.alphaf)
            @openGLESImageTranslate.translate2(gl, self)
            @regionRectangleVertexFloatBuffer.put(@regionRectangleFloatArray)
            @glUtil.position(@regionRectangleVertexFloatBuffer, 0)
            gl.glVertexPointer(3, GL10.GL_FLOAT, 0, @regionRectangleVertexFloatBuffer)
            gl.glEnableClientState(GL10.GL_VERTEX_ARRAY)
            gl.glEnable(GL10.GL_TEXTURE_2D)
            gl.glBindTexture(GL10.GL_TEXTURE_2D, @openGLESImageProperties.textureID)
            gl.glEnableClientState(GL10.GL_TEXTURE_COORD_ARRAY)
            @regionTextureVertexFloatBuffer.put(@regionTextureRectangleFloatArray)
            @glUtil.position(@regionTextureVertexFloatBuffer, 0)
            gl.glTexCoordPointer(2, GL10.GL_FLOAT, 0, @regionTextureVertexFloatBuffer)
            gl.glDrawArrays(GL10.GL_TRIANGLE_STRIP, 0, 4)
            gl.glDisableClientState(GL10.GL_VERTEX_ARRAY)
            gl.glDisableClientState(GL10.GL_TEXTURE_COORD_ARRAY)
            gl.glDisable(GL10.GL_TEXTURE_2D)
            gl.glPopMatrix()
        end
        

        def draw(gl, x, y, z)
            width = self.getWidth()
            height = self.getHeight()
            @regionRectangleFloatArray[7] = @displayInfoSingleton.getLastHeight()
            @regionRectangleFloatArray[1] = @regionRectangleFloatArray[7] - height
            @regionRectangleFloatArray[3] = width
            @regionRectangleFloatArray[4] = @regionRectangleFloatArray[1]
            @regionRectangleFloatArray[9] = @regionRectangleFloatArray[3]
            @regionRectangleFloatArray[10] = @regionRectangleFloatArray[7]
            @regionTextureRectangleFloatArray[0] = 0
            @regionTextureRectangleFloatArray[1] = 1
            @regionTextureRectangleFloatArray[2] = 1
            @regionTextureRectangleFloatArray[3] = 1
            @regionTextureRectangleFloatArray[4] = 0
            @regionTextureRectangleFloatArray[5] = 0
            @regionTextureRectangleFloatArray[6] = 1
            @regionTextureRectangleFloatArray[7] = 0
            gl.glPushMatrix()
            @openGLESImageTranslate.translate(gl, self, x, -y)
            imageProcessor = @imageProcessor
            imageProcessor.scale(gl, @openGLESImageProperties.scaleX, @openGLESImageProperties.scaleY)
            imageProcessor.colorMask(gl, @openGLESImageProperties.redf, @openGLESImageProperties.greenf, @openGLESImageProperties.bluef, @openGLESImageProperties.alphaf)
            @openGLESImageTranslate.translate2(gl, self)
            @regionRectangleVertexFloatBuffer.put(@regionRectangleFloatArray)
            @glUtil.position(@regionRectangleVertexFloatBuffer, 0)
            gl.glVertexPointer(3, GL10.GL_FLOAT, 0, @regionRectangleVertexFloatBuffer)
            gl.glEnableClientState(GL10.GL_VERTEX_ARRAY)
            gl.glEnable(GL10.GL_TEXTURE_2D)
            gl.glBindTexture(GL10.GL_TEXTURE_2D, @openGLESImageProperties.textureID)
            gl.glEnableClientState(GL10.GL_TEXTURE_COORD_ARRAY)
            @glUtil.rotateUVs(@regionTextureRectangleFloatArray, -@openGLESImageProperties.angle, 0.5, 0.5)
            @glUtil.position(@textureVertexFloatBuffer, 0)
            @textureVertexFloatBuffer.put(@regionTextureRectangleFloatArray)
            @glUtil.position(@textureVertexFloatBuffer, 0)
            gl.glTexCoordPointer(2, GL10.GL_FLOAT, 0, @textureVertexFloatBuffer)
            gl.glDrawArrays(GL10.GL_TRIANGLE_STRIP, 0, 4)
            gl.glDisableClientState(GL10.GL_VERTEX_ARRAY)
            gl.glDisableClientState(GL10.GL_TEXTURE_COORD_ARRAY)
            gl.glDisable(GL10.GL_TEXTURE_2D)
            gl.glPopMatrix()
        end
    end.new()
        @openGLESImageDraw = OpenGLESImageDraw.getInstance()
    end
    

    def initialize(image, bitmapFactory, textureFactory)
        super(image, bitmapFactory, textureFactory)
        initialize_fields
        self.initVertices()
    end
    

    def initVertices()
        @textureVertexFloatBuffer.put(0)
        @textureVertexFloatBuffer.put(1)
        @textureVertexFloatBuffer.put(1)
        @textureVertexFloatBuffer.put(1)
        @textureVertexFloatBuffer.put(0)
        @textureVertexFloatBuffer.put(0)
        @textureVertexFloatBuffer.put(1)
        @textureVertexFloatBuffer.put(0)
        @textureVertexFloatBuffer.rewind()
    end
    

    def set(gl)
        gl10 = gl
        if self.class.superclass.instance_method(:initTexture).bind(self).call(gl10)
            @textureFactory.load(gl10, GL10.GL_TEXTURE_2D, 0, self, 0, true)
            gl10.glDisable(GL10.GL_TEXTURE_2D)
            @openGLESImageDraw = @realOpenGLESImageDraw
            OpenGLLogUtil.getInstance().logError(gl10, self)
        end
    end
    

    def drawRegion(gl, viewHeight, x_src, y_src, width, height, x, y, z)
        @openGLESImageDraw.drawRegion(gl, viewHeight, x_src, y_src, width, height, x, y, z)
    end
    

    def draw(gl, x, y, z)
        @openGLESImageDraw.draw(gl, x, y, z)
    end
end

require "org/allbinary/graphics/displayable/DisplayInfoSingleton"
require "org/allbinary/graphics/opengles/OpenGLLogUtil"
require "org/allbinary/opengles/GLUtil"
require "org/allbinary/platform/graphics/PlatformBitmapBaseFactory"
require "org/allbinary/platform/opengles/PlatformTextureBaseFactory"
require "org/allbinary/image/opengles/OpenGLESImageDraw"
require "org/allbinary/image/opengles/OpenGLESImageProcessor"
require "org/allbinary/image/opengles/OpenGLESImageProperties"

