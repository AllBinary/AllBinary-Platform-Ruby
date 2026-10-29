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
# package org.allbinary.graphics.color

# require "java/awt"

class ColorUtil
    

    def self.getInstance()
        return ColorUtil.instance
    end
    

    def isGreyishOrWhiteLike(color)
        if (color.getRed() - color.getGreen()).abs > 20 || (color.getRed() - color.getBlue()).abs > 20 || (color.getGreen() - color.getBlue()).abs > 20
            return false
        end
        return true
    end
    

    def isDark(color)
        if color.getRed() < 0x77 && color.getRed() < 0x77 && color.getRed() < 0x77
            return true
        end
        return false
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

class ColorUtil
    @@instance = ColorUtil.new()
end

