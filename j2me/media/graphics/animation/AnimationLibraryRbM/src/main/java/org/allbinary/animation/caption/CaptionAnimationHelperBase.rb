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
# package org.allbinary.animation.caption

require "org/allbinary/animation/Animation"

class CaptionAnimationHelperBase < Animation
    

    def isShowing()
        return false
    end
    

    def tick()
    end
    

    def update(message, basicColor)
    end
    

    def paintXY(graphics, x, y)
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:INSTANCE, CaptionAnimationHelperBase.new())
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "CaptionAnimationHelperBase"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:INSTANCE].include?(name)
        end
        super
    end
end

autoload :Graphics, "javax/microedition/lcdui/Graphics"
autoload :BasicColor, "org/allbinary/graphics/color/BasicColor"

begin
    CaptionAnimationHelperBase.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

