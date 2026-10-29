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

# require "java/io/IOException"
# require "java/io/InputStream"

class OpenGLImageUtilBase
    

    def paint(alphaBitmap, originalBitmap, index)
        raise RuntimeError.new()
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def paint(colorBitmap, originalBitmap, alpha, basicColor)
        raise RuntimeError.new()
    end
    

    # throws IOException
    def createImage(name)
        raise RuntimeError.new()
    end
    

    # throws Exception
    def createImageFromInputStream(inputStream)
        raise RuntimeError.new()
    end
end

require "org/allbinary/graphics/OpenGLBitmap"
require "org/allbinary/graphics/color/BasicColor"

