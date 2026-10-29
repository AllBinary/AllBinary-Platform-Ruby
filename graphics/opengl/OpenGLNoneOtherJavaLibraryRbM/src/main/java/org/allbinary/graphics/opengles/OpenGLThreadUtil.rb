# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.graphics.opengles


class OpenGLThreadUtil
    

    def self.getInstance()
        return OpenGLThreadUtil.instance
    end
    

    def set(glSurfaceView)
    end
    

    def onPause()
    end
    

    def onResume()
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

class OpenGLThreadUtil
    @@instance = OpenGLThreadUtil.new()
end

