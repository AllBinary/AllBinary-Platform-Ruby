# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.device


class OpenGLESGraphicsFactory
    

    def getOpenGLESGraphicsInstance()
        return OpenGLESNullGraphicsFactory.getInstance()
    end
end

autoload :OpenGLESGraphics, "org/allbinary/device/OpenGLESGraphics"
autoload :OpenGLESNullGraphicsFactory, "org/allbinary/device/OpenGLESNullGraphicsFactory"

