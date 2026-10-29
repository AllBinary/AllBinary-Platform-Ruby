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
# package org.allbinary.image

# require "java/io/InputStream"
# require "javax/microedition/lcdui/Image"

#ImageCacheBaseJavaLibrary - J2ME
class ImageFactory
    

    def self.getInstance()
        return ImageFactory.instance
    end
    

    # throws Exception
    def createImageUrl(url)
        return Image.createImage(url)
    end
    

    # throws Exception
    def createImage(caller, width, height)
        return Image.createImage(width, height)
    end
    

    # throws Exception
    def createImageFromInputStream(key, inputStream)
        image = Image.createImage(inputStream)
        return image
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def createImageFromInputStream(inputStream)
        return Image.createImage(inputStream)
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

class ImageFactory
    @@instance = ImageFactory.new()
end

