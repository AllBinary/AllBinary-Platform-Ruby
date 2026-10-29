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
require "org/allbinary/animation/image/ModifierBaseProcessor"

class SetColorProcessor < ModifierBaseProcessor
    

    def self.getInstance()
        return SetColorProcessor.instanceC
    end
    

    def updateColor(imageModifierUtil, originalImage, imageToShow, index, basicColor)
        imageModifierUtil.setColor(originalImage, imageToShow, index, basicColor)
    end

    def self.instanceC()
        return defined?(@@instanceC) ? @@instanceC : nil
    end

    def self.instanceC=(value)
        @@instanceC = value
    end
end

require "org/allbinary/graphics/color/BasicColor"
require "org/allbinary/media/image/ImageModifierUtil"

class SetColorProcessor
    @@instanceC = SetColorProcessor.new()
end

