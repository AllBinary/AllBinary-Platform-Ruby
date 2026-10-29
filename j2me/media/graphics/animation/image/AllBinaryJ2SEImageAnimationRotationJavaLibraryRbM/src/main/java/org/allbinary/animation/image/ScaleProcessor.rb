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
require "org/allbinary/animation/image/ScaleBaseProcessor"

class ScaleProcessor < ScaleBaseProcessor
    attr_accessor :logUtil, :commonStrings, :imageScaleUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @imageScaleUtil = ImageScaleUtil.getInstance()
    end

    def initialize
        super()
        initialize_fields
    end
    

    def self.getInstance()
        return ScaleProcessor.instanceC
    end
    

    def update(originalImage, originalImageArray, ximageToShowArray, unused, scaleX, scaleY, maxScaleX, maxScaleY)
        begin
            @imageScaleUtil.scale2(originalImage, originalImageArray, ximageToShowArray, unused, scaleX, scaleY, maxScaleX, maxScaleY)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.UPDATE, e)
        end
    end

    def self.instanceC()
        return defined?(@@instanceC) ? @@instanceC : nil
    end

    def self.instanceC=(value)
        @@instanceC = value
    end
end

require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/media/image/ImageScaleUtil"
require "org/allbinary/string/CommonStrings"

class ScaleProcessor
    @@instanceC = ScaleProcessor.new()
end

