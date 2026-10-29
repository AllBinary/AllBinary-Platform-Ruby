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

class AlphaProcessor < ModifierBaseProcessor
    

    def self.getInstance()
        return AlphaProcessor.instanceC
    end
    

    def updateAlpha(imageModifierUtil, originalImage, imageToShow, index, alpha)
        imageModifierUtil.setAlpha(originalImage, imageToShow, index, alpha)
    end

    def self.instanceC()
        return defined?(@@instanceC) ? @@instanceC : nil
    end

    def self.instanceC=(value)
        @@instanceC = value
    end
end

require "org/allbinary/media/image/ImageModifierUtil"

class AlphaProcessor
    @@instanceC = AlphaProcessor.new()
end

