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
# package org.allbinary.animation.image

# require "javax/microedition/lcdui/Image"

class ScaleBaseProcessor
    

    def self.getInstance()
        return ScaleBaseProcessor.instance
    end
    

    def update(originalImage, originalImageArray, imageToShowArray, index, scaleX, scaleY, maxScaleX, maxScaleY)
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

class ScaleBaseProcessor
    @@instance = ScaleBaseProcessor.new()
end

