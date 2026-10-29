# 
# AllBinary Open License Version 1 
# Copyright (c) 2026 AllBinary 
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
# package org.allbinary.animation


class ShapeTypeFactory
    attr_accessor :KEY_LINE, :KEY_CIRCLE, :KEY_RECTANGLE, :KEY_RECT, :LINE, :CIRCLE, :RECTANGLE

    def initialize_fields
        @KEY_LINE = "line"
        @KEY_CIRCLE = "circle"
        @KEY_RECTANGLE = "rectangle"
        @KEY_RECT = "rect"
        @LINE = ShapeType.new(@KEY_LINE)
        @CIRCLE = ShapeType.new(@KEY_CIRCLE)
        @RECTANGLE = ShapeType.new(@KEY_RECTANGLE)
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return ShapeTypeFactory.instance
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/animation/ShapeType"

class ShapeTypeFactory
    @@instance = ShapeTypeFactory.new()
end

