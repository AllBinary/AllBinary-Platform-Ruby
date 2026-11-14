# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.device

require "org/allbinary/image/opengles/OpenGLSurfaceChangedInterface"
require "org/allbinary/device/GraphicsInterface"

class OpenGLESGraphics
    include OpenGLSurfaceChangedInterface
    include GraphicsInterface
    attr_accessor :commonStrings, :gl

    def initialize_fields
        @commonStrings = CommonStrings.getInstance()
        @gl = NullGL10::NULL_GL10
    end
    

    def initialize()
        initialize_fields
    end
    

    def updateGL(gl)
    end
    

    def set(gl)
    end
    

    # throws Exception
    def init()
    end
    

    # throws Exception
    def update()
    end
    

    def setOrthoginalMode()
    end
    

    def setCameraMode()
    end
    

    def getGlP()
        return @gl
    end
    

    def setFontDebug(font, fontDebug)
        raise RuntimeError.new()
    end
end

autoload :GL, "javax/microedition/khronos/opengles/GL"
autoload :GL10, "javax/microedition/khronos/opengles/GL10"
autoload :Font, "javax/microedition/lcdui/Font"
autoload :FontDebugBase, "org/allbinary/graphics/font/FontDebugBase"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :NullGL10, "org/allbinary/device/NullGL10"

