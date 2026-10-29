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
# package org.allbinary.media.image

# require "java/awt/Color"

class ImageJ2SEUtil
    attr_accessor :TRANSPARENT_COLOR

    def initialize_fields
        @TRANSPARENT_COLOR = Color.new(0, 0, 0, 0)
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return ImageJ2SEUtil.instance
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

class ImageJ2SEUtil
    @@instance = ImageJ2SEUtil.new()
end

