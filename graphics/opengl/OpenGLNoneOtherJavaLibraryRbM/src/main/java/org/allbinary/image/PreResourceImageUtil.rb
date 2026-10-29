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
# package org.allbinary.image

# require "javax/microedition/khronos/opengles/GL"
# require "javax/microedition/lcdui/Graphics"
# require "javax/microedition/lcdui/Image"

class PreResourceImageUtil
    

    def self.getInstance()
        return PreResourceImageUtil.instance
    end
    

    def encapsulate(image)
        return image
    end
    

    def updateGL(gl, image)
    end
    

    def update(graphics, image)
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

class PreResourceImageUtil
    @@instance = PreResourceImageUtil.new()
end

