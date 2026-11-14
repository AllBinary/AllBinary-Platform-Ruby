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
        ColorUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        ColorUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = ColorUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "ColorUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

begin
    ColorUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

