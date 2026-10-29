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
# package org.allbinary.game.canvas

# require "javax/microedition/lcdui/Canvas"
# require "javax/microedition/lcdui/NullCanvas"

class ABToGBUtil
    attr_accessor :abCanvas, :allBinaryGameLayerManager

    def initialize_fields
        @abCanvas = NullCanvas::NULL_CANVAS
        @allBinaryGameLayerManager = AllBinaryGameLayerManager.getNullInstance()
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return ABToGBUtil.instance
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/game/layer/AllBinaryGameLayerManager"

class ABToGBUtil
    @@instance = ABToGBUtil.new()
end

