# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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
# package org.allbinary.graphics


class GraphicsStrings
    attr_accessor :ANIMATION, :ANGLE, :MOVEMENT_ANGLE, :ROTATION, :OPACITY, :HTML, :WIDTH, :HEIGHT

    def initialize_fields
        @ANIMATION = "animation"
        @ANGLE = "angle"
        @MOVEMENT_ANGLE = "movement_angle"
        @ROTATION = "rotation"
        @OPACITY = "opacity"
        @HTML = "HTML"
        @WIDTH = "width"
        @HEIGHT = "height"
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return GraphicsStrings.instance
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

class GraphicsStrings
    @@instance = GraphicsStrings.new()
end

