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

require "java/lang/JavaOverload"
require "org/allbinary/image/opengles/OpenGLESImageTranslate"

module ::Org; module Allbinary; module Image; module Opengles

class OpenGLESDeviceImageTranslate < OpenGLESImageTranslate
    attr_accessor :translateX, :translateY, :translateX2, :translateY2

    def jfields_org_allbinary_image_opengles_OpenGLESDeviceImageTranslate
        @translateX = 0.0
        @translateY = 0.0
        @translateX2 = 0.0
        @translateY2 = 0.0
    end

    def initialize
        super()
        jfields_org_allbinary_image_opengles_OpenGLESDeviceImageTranslate
    end
    

    def translate(gl, openGLESImage, x, y)
        openGLESImage.imageProcessor.translate(gl, @translateX + (openGLESImage.openGLESImageProperties.scaleX * x), @translateY + (openGLESImage.openGLESImageProperties.scaleY * y))
    end
    java_overload :translate, 4
    

    def translate2(gl, openGLESImage)
        openGLESImage.imageProcessor.translate(gl, @translateX2, @translateY2)
    end
    java_overload :translate2, 2
end

module ::Javax; module Microedition; module Khronos; module Opengles; autoload :GL10, "javax/microedition/khronos/opengles/GL10" unless const_defined?(:GL10, false); end; end; end; end
autoload :OpenGLESImage, "org/allbinary/image/opengles/OpenGLESImage" unless const_defined?(:OpenGLESImage, false)

end; end; end; end

