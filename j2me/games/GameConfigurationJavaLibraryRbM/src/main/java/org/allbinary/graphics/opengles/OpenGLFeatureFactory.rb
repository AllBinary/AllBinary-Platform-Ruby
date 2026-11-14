#
# AllBinary Open License Version 1
# Copyright (c) 2011 AllBinary
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
# package org.allbinary.graphics.opengles


class OpenGLFeatureFactory
    attr_accessor :OPENGL_OPTIONS, :OPENGL, :OPENGL_SURFACE_VIEW, :OPENGL_2D, :OPENGL_3D, :OPENGL_2D_AND_3D, :OPENGL_AUTO_SELECT, :OPENGL_MINIMUM, :OPENGL_AS_GAME_THREAD, :OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS, :IMAGE_COLOR_DEPTH_4444, :IMAGE_COLOR_DEPTH_8888, :IMAGE_COLOR_DEPTH_565, :OPENGL_COLOR_DEPTH_4444, :OPENGL_COLOR_DEPTH_8888, :OPENGL_COLOR_DEPTH_565, :OPENGL_DRAW_TEXTURE, :OPENGL_VERTEX_BUFFER_OBJECT, :OPENGL_SIMPLE_OBJECT3D_PROCESSOR, :OPENGL_COMPLEX_OBJECT3D_PROCESSOR, :OPENGL_SIMPLE_TEXTURE_PROCESSOR, :OPENGL_COMPLEX_TEXTURE_PROCESSOR

    def initialize_fields
        @OPENGL_OPTIONS = OpenGLFeature.new("OpenGL Options")
        @OPENGL = OpenGLFeature.new("OpenGL")
        @OPENGL_SURFACE_VIEW = OpenGLFeature.new("GLSurfaceView")
        @OPENGL_2D = OpenGLFeature.new("OpenGL 2D")
        @OPENGL_3D = OpenGLFeature.new("OpenGL 3D")
        @OPENGL_2D_AND_3D = OpenGLFeature.new("OpenGL 2D/3D")
        @OPENGL_AUTO_SELECT = OpenGLFeature.new("Auto Select")
        @OPENGL_MINIMUM = OpenGLFeature.new("Minimum")
        @OPENGL_AS_GAME_THREAD = OpenGLFeature.new("As game thread")
        @OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS = OpenGLFeature.new("As different threads")
        @IMAGE_COLOR_DEPTH_4444 = OpenGLFeature.new("4444")
        @IMAGE_COLOR_DEPTH_8888 = OpenGLFeature.new("8888")
        @IMAGE_COLOR_DEPTH_565 = OpenGLFeature.new("565")
        @OPENGL_COLOR_DEPTH_4444 = OpenGLFeature.new("4444")
        @OPENGL_COLOR_DEPTH_8888 = OpenGLFeature.new("8888")
        @OPENGL_COLOR_DEPTH_565 = OpenGLFeature.new("565")
        @OPENGL_DRAW_TEXTURE = OpenGLFeature.new("GL_OES_draw_texture")
        @OPENGL_VERTEX_BUFFER_OBJECT = OpenGLFeature.new("vertex_buffer_object")
        @OPENGL_SIMPLE_OBJECT3D_PROCESSOR = OpenGLFeature.new("Simple Object3d Processor")
        @OPENGL_COMPLEX_OBJECT3D_PROCESSOR = OpenGLFeature.new("Complex Object3d Processor")
        @OPENGL_SIMPLE_TEXTURE_PROCESSOR = OpenGLFeature.new("Simple Texture Processor")
        @OPENGL_COMPLEX_TEXTURE_PROCESSOR = OpenGLFeature.new("Complex Texture Processor")
    end
    

    def self.getInstance()
        return OpenGLFeatureFactory.instance
    end
    

    def initialize()
        initialize_fields
    end

    def self.instance()
        OpenGLFeatureFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        OpenGLFeatureFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = OpenGLFeatureFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "OpenGLFeatureFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :OpenGLFeature, "org/allbinary/graphics/opengles/OpenGLFeature"

begin
    OpenGLFeatureFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

