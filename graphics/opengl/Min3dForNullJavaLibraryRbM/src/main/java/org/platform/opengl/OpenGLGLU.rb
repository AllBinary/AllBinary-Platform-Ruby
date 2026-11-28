# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.platform.opengl


module ::Org; module Platform; module Opengl

class OpenGLGLU
    

    def self.getInstance()
        return @@instance
    end
    

    def gluLookAt(gl, eyeX, eyeY, eyeZ, centerX, centerY, centerZ, upX, upY, upZ)
        raise RuntimeError.new()
    end
    

    def gluProject(gl, objX, objY, objZ, model, modelOffset, project, projectOffset, view, viewOffset, win, winOffset)
        raise RuntimeError.new()
    end
    

    def gluUnProject(gl, winX, winY, winZ, model, modelOffset, project, projectOffset, view, viewOffset, obj, objOffset)
        raise RuntimeError.new()
    end
    

    def glFrustumf(gl, lt, rt, btm, top, zNear, zFar)
        raise RuntimeError.new()
    end

    def self.instance()
        OpenGLGLU.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        OpenGLGLU.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = OpenGLGLU.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "OpenGLGLU"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Javax; module Microedition; module Khronos; module Opengles; autoload :GL10, "javax/microedition/khronos/opengles/GL10" unless const_defined?(:GL10, false); end; end; end; end

begin
    OpenGLGLU.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end

