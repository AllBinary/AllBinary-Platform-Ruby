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

class OpenGLESImageDraw
    

    def self.getInstance()
        return OpenGLESImageDraw.instance
    end
    

    def drawRegion(gl, viewHeight, x_src, y_src, width, height, x, y, z)
    end
    

    def draw(gl, x, y, z)
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

class OpenGLESImageDraw
    @@instance = OpenGLESImageDraw.new()
end

