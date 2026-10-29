# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.graphics.opengles

# require "javax/microedition/lcdui/Image"

class OpenGLUtil
    

    def self.getInstance()
        return OpenGLUtil.instance
    end
    

    def addImage(image)
        return image
    end
    

    def clear()
    end
    

    def addRunnable(runnable)
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "java/lang/Runnable"

class OpenGLUtil
    @@instance = OpenGLUtil.new()
end

