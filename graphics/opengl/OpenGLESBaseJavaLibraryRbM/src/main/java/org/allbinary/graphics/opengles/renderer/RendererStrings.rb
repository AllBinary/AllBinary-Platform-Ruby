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
# package org.allbinary.graphics.opengles.renderer


class RendererStrings
    attr_accessor :ON_SURFACE_CREATED, :ON_SURFACE_CHANGED, :ON_DRAW_FRAME, :ON_DRAW_FRAME_THREED, :ON_DRAW_FRAME_2D

    def initialize_fields
        @ON_SURFACE_CREATED = "onSurfaceCreated"
        @ON_SURFACE_CHANGED = "onSurfaceChanged"
        @ON_DRAW_FRAME = "onDrawFrame"
        @ON_DRAW_FRAME_THREED = "onDrawFrameThreed"
        @ON_DRAW_FRAME_2D = "onDrawFrame2d"
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return RendererStrings.instance
    end

    def self.instance()
        RendererStrings.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        RendererStrings.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = RendererStrings.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "RendererStrings"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

begin
    RendererStrings.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

