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
require "org/allbinary/image/opengles/OpenGLESImageTranslate"

class OpenGLESDeviceImageTranslate < OpenGLESImageTranslate
    attr_accessor :translateX, :translateY, :translateX2, :translateY2

    def initialize_fields
        @translateX = 0.0
        @translateY = 0.0
        @translateX2 = 0.0
        @translateY2 = 0.0
    end

    def initialize
        super()
        initialize_fields
    end
    

    def translate(gl, openGLESImage, x, y)
        openGLESImage.imageProcessor.translate(gl, @translateX + (openGLESImage.openGLESImageProperties.scaleX * x), @translateY + (openGLESImage.openGLESImageProperties.scaleY * y))
    end
    

    def translate2(gl, openGLESImage)
        openGLESImage.imageProcessor.translate(gl, @translateX2, @translateY2)
    end
end

require "org/allbinary/image/opengles/OpenGLESImage"

