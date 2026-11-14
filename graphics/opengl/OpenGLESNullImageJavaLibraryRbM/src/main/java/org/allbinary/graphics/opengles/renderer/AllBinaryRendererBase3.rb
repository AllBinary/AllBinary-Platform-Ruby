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
# package org.allbinary.graphics.opengles.renderer


class AllBinaryRendererBase3
    attr_accessor :list

    def initialize_fields
        @list = BasicArrayListD.new()
    end

    def initialize
        initialize_fields
    end
    

    # throws Exception
    def update(gl)
        while @list.size() > 0
            openGLESImage = @list.removeAt(0)
            if openGLESImage != nil
                openGLESImage.set(gl)
            end
        end
    end
    

    def add(image)
        @list.add(image)
    end
end

autoload :GL10, "javax/microedition/khronos/opengles/GL10"
autoload :Image, "javax/microedition/lcdui/Image"
autoload :OpenGLESImage, "org/allbinary/image/opengles/OpenGLESImage"
autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD"

