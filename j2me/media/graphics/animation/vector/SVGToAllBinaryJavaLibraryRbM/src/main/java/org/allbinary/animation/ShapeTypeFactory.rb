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


module ::Org; module Allbinary; module Animation

class ShapeTypeFactory
    attr_accessor :KEY_LINE, :KEY_CIRCLE, :KEY_RECTANGLE, :KEY_RECT, :LINE, :CIRCLE, :RECTANGLE

    def jfields_org_allbinary_animation_ShapeTypeFactory
        @KEY_LINE = "line"
        @KEY_CIRCLE = "circle"
        @KEY_RECTANGLE = "rectangle"
        @KEY_RECT = "rect"
        @LINE = nil unless instance_variable_defined?(:@LINE)
        @CIRCLE = nil unless instance_variable_defined?(:@CIRCLE)
        @RECTANGLE = nil unless instance_variable_defined?(:@RECTANGLE)
    end
    

    def self.getInstance()
        return ShapeTypeFactory.instance
    end
    

    def initialize()
        jfields_org_allbinary_animation_ShapeTypeFactory
        @LINE = ShapeType.new(@KEY_LINE)
        @CIRCLE = ShapeType.new(@KEY_CIRCLE)
        @RECTANGLE = ShapeType.new(@KEY_RECTANGLE)
    end

    def self.instance()
        ShapeTypeFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        ShapeTypeFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = ShapeTypeFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "ShapeTypeFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :ShapeType, "org/allbinary/animation/ShapeType" unless const_defined?(:ShapeType, false)

begin
    ShapeTypeFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end

