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

#This is not actually VBO impl
class OpenGLESGL11VBOImage < OpenGLESImage
    attr_accessor :glUtil, :textureVertexFloatBuffer, :regionRectangleFloatArray, :regionRectangleVertexFloatBuffer, :regionTextureRectangleFloatArray, :regionTextureVertexFloatBuffer

    def initialize_fields
        @glUtil = GLUtil.getInstance()
        @textureVertexFloatBuffer = ByteBuffer.allocateDirect(4 * 4 * 2).order(ByteOrder.nativeOrder()).asFloatBuffer()
        @regionRectangleFloatArray = [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]
        @regionRectangleVertexFloatBuffer = ByteBuffer.allocateDirect(4 * 4 * 3).order(ByteOrder.nativeOrder()).asFloatBuffer()
        @regionTextureRectangleFloatArray = Array.new(8, 0.0)
        @regionTextureVertexFloatBuffer = ByteBuffer.allocateDirect(4 * 4 * 2).order(ByteOrder.nativeOrder()).asFloatBuffer()
    end
    

    def initialize(image, bitmapFactory, textureFactory)
        super(image, bitmapFactory, textureFactory)
        initialize_fields
        self.initVertices()
        @regionRectangleVertexFloatBuffer.put(FloatBuffer.wrap(@regionRectangleFloatArray))
        @regionTextureVertexFloatBuffer.put(FloatBuffer.wrap(@regionTextureRectangleFloatArray))
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
            OpenGLLogUtil.getInstance().logError(gl10, self)
        end
    end
    

    def drawRegion(gl, viewHeight, x_src, y_src, width, height, x, y, z)
        @regionRectangleFloatArray[0] = (x).to_f
        @regionRectangleFloatArray[7] = (viewHeight - y).to_f
        @regionRectangleFloatArray[1] = @regionRectangleFloatArray[7] - height
        @regionRectangleFloatArray[3] = (x).to_f + width
        @regionRectangleFloatArray[4] = @regionRectangleFloatArray[1]
        @regionRectangleFloatArray[6] = (x).to_f
        @regionRectangleFloatArray[9] = @regionRectangleFloatArray[3]
        @regionRectangleFloatArray[10] = @regionRectangleFloatArray[7]
        @regionTextureRectangleFloatArray[0] = x_src / self.getWidth()
        @regionTextureRectangleFloatArray[1] = ((y_src + height)) / self.getHeight()
        @regionTextureRectangleFloatArray[2] = ((x_src + width)) / self.getWidth()
        @regionTextureRectangleFloatArray[3] = @regionTextureRectangleFloatArray[1]
        @regionTextureRectangleFloatArray[4] = @regionTextureRectangleFloatArray[0]
        @regionTextureRectangleFloatArray[5] = y_src / self.getHeight()
        @regionTextureRectangleFloatArray[6] = @regionTextureRectangleFloatArray[2]
        @regionTextureRectangleFloatArray[7] = @regionTextureRectangleFloatArray[5]
        @glUtil.position(@regionRectangleVertexFloatBuffer, 0)
        gl.glVertexPointer(3, GL10.GL_FLOAT, 0, @regionRectangleVertexFloatBuffer)
        gl.glEnableClientState(GL10.GL_VERTEX_ARRAY)
        gl.glEnable(GL10.GL_TEXTURE_2D)
        gl.glBindTexture(GL10.GL_TEXTURE_2D, @openGLESImageProperties.textureID)
        gl.glEnableClientState(GL10.GL_TEXTURE_COORD_ARRAY)
        @glUtil.position(@regionTextureVertexFloatBuffer, 0)
        gl.glTexCoordPointer(2, GL10.GL_FLOAT, 0, @regionTextureVertexFloatBuffer)
        gl.glDrawArrays(GL10.GL_TRIANGLE_STRIP, 0, 4)
        gl.glDisableClientState(GL10.GL_VERTEX_ARRAY)
        gl.glDisableClientState(GL10.GL_TEXTURE_COORD_ARRAY)
        gl.glDisable(GL10.GL_TEXTURE_2D)
    end
    

    def draw(gl, x, y, z)
        @regionRectangleFloatArray[0] = (x).to_f
        @regionRectangleFloatArray[7] = DisplayInfoSingleton.getInstance().getLastHeight() - y
        @regionRectangleFloatArray[1] = @regionRectangleFloatArray[7] - self.getHeight()
        @regionRectangleFloatArray[3] = x + self.getWidth()
        @regionRectangleFloatArray[4] = @regionRectangleFloatArray[1]
        @regionRectangleFloatArray[6] = (x).to_f
        @regionRectangleFloatArray[9] = @regionRectangleFloatArray[3]
        @regionRectangleFloatArray[10] = @regionRectangleFloatArray[7]
        @glUtil.position(@regionRectangleVertexFloatBuffer, 0)
        gl.glVertexPointer(3, GL10.GL_FLOAT, 0, @regionRectangleVertexFloatBuffer)
        gl.glEnableClientState(GL10.GL_VERTEX_ARRAY)
        gl.glEnable(GL10.GL_TEXTURE_2D)
        gl.glBindTexture(GL10.GL_TEXTURE_2D, @openGLESImageProperties.textureID)
        gl.glEnableClientState(GL10.GL_TEXTURE_COORD_ARRAY)
        @glUtil.position(@textureVertexFloatBuffer, 0)
        gl.glTexCoordPointer(2, GL10.GL_FLOAT, 0, @textureVertexFloatBuffer)
        gl.glDrawArrays(GL10.GL_TRIANGLE_STRIP, 0, 4)
        gl.glDisableClientState(GL10.GL_VERTEX_ARRAY)
        gl.glDisableClientState(GL10.GL_TEXTURE_COORD_ARRAY)
        gl.glDisable(GL10.GL_TEXTURE_2D)
    end
end

require "org/allbinary/graphics/opengles/OpenGLLogUtil"
require "org/allbinary/graphics/displayable/DisplayInfoSingleton"
require "org/allbinary/opengles/GLUtil"
require "org/allbinary/platform/graphics/PlatformBitmapBaseFactory"
require "org/allbinary/platform/opengles/PlatformTextureBaseFactory"

