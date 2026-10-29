# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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

# require "javax/microedition/khronos/opengles/GL10"

class OpenGLESImageProcessor
    

    def self.getInstance()
        return OpenGLESImageProcessor.instance
    end
    

    def translate(gl, translateX, translateY)
        gl.glTranslatef(translateX, translateY, 0)
    end
    

    def rotate(gl, angle)
        gl.glRotatef(-angle, 0, 0, 1)
    end
    

    def scale(gl, scaleX, scaleY)
        gl.glScalef(scaleX, scaleY, 1)
    end
    

    def colorMask(gl, red, green, blue, alpha)
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

class OpenGLESImageProcessor
    @@instance = OpenGLESImageProcessor.new()
end

