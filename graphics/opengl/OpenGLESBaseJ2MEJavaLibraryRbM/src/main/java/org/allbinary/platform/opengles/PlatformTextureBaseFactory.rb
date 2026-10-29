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
# package org.allbinary.platform.opengles

# require "javax/microedition/khronos/opengles/GL10"
# require "javax/microedition/lcdui/Image"

class PlatformTextureBaseFactory
    attr_accessor :commonStrings

    def initialize_fields
        @commonStrings = CommonStrings.getInstance()
    end

    def initialize
        initialize_fields
    end
    

    def load(gl, target, level, image, border, flip)
    end
end

require "org/allbinary/string/CommonStrings"

class PlatformTextureBaseFactory
    NULL_PLATFORM_TEXTURE_BASE_FACTORY = PlatformTextureBaseFactory.new()
end

