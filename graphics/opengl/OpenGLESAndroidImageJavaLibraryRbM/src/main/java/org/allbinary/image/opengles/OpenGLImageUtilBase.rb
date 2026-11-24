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

module ::Org; module Allbinary; module Image; module Opengles

class OpenGLImageUtilBase
    

    def paint_j3(alphaBitmap, originalBitmap, index)
        raise RuntimeError.new()
    end
    

    def paint_j4(colorBitmap, originalBitmap, alpha, basicColor)
        raise RuntimeError.new()
    end

    def paint(*java_overload_args)
        return paint_j3(*java_overload_args) if java_overload_args.length == 3
        return paint_j4(*java_overload_args) if java_overload_args.length == 4
        raise ArgumentError, "No method paint takes #{java_overload_args.length} arguments"
    end
    

    # throws IOException
    def createImage(name)
        raise RuntimeError.new()
    end
    

    # throws IOException
    def createImageFromInputStream(inputStream)
        raise RuntimeError.new()
    end
end

module ::Java; module Io; autoload :InputStream, "java/io/InputStream" unless const_defined?(:InputStream, false); end; end
module ::Org; module Allbinary; module Graphics; autoload :OpenGLBitmap, "org/allbinary/graphics/OpenGLBitmap" unless const_defined?(:OpenGLBitmap, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end

end; end; end; end

