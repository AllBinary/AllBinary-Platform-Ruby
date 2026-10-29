# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.platform.opengl

# require "javax/microedition/khronos/opengles/GL10"

class OpenGLGLU
    

    def self.getInstance()
        return OpenGLGLU.instance
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
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

class OpenGLGLU
    @@instance = OpenGLGLU.new()
end

