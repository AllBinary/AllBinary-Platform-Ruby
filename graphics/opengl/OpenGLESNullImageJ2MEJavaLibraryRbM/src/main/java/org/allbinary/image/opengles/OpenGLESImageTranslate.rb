# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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

class OpenGLESImageTranslate
    

    def self.getInstance()
        return OpenGLESImageTranslate.instance
    end
    

    def translate(gl, openGLESImage, x, y)
    end
    

    def translate2(gl, openGLESImage)
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/image/opengles/OpenGLESImage"

class OpenGLESImageTranslate
    @@instance = OpenGLESImageTranslate.new()
end

