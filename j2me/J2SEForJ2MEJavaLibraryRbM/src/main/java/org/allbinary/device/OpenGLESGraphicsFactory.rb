# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.device


module ::Org; module Allbinary; module Device

class OpenGLESGraphicsFactory
    

    def getOpenGLESGraphicsInstance()
        return OpenGLESNullGraphicsFactory.getInstance()
    end
end

autoload :OpenGLESGraphics, "org/allbinary/device/OpenGLESGraphics" unless const_defined?(:OpenGLESGraphics, false)
autoload :OpenGLESNullGraphicsFactory, "org/allbinary/device/OpenGLESNullGraphicsFactory" unless const_defined?(:OpenGLESNullGraphicsFactory, false)

end; end; end

