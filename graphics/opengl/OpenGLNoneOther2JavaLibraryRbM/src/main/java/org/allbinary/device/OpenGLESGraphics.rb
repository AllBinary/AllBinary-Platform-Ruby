# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.device

require "java/lang/JavaOverload"
require "javax/microedition/lcdui/Graphics"
require "org/allbinary/image/opengles/OpenGLSurfaceChangedInterface"
require "org/allbinary/device/GraphicsInterface"

module ::Org; module Allbinary; module Device

class OpenGLESGraphics < ::Javax::Microedition::Lcdui::Graphics
    include ::Org::Allbinary::Image::Opengles::OpenGLSurfaceChangedInterface
    include GraphicsInterface
    attr_accessor :commonStrings, :gl

    def jfields_org_allbinary_device_OpenGLESGraphics
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @gl = NullGL10::NULL_GL10
    end
    

    def initialize()
        super()
        jfields_org_allbinary_device_OpenGLESGraphics
    end
    

    def updateGL(gl)
    end
    java_overload :updateGL, 1
    

    def set(gl)
    end
    java_overload :set, 1
    

    # throws Exception
    def init()
    end
    java_overload :init, 0
    

    # throws Exception
    def update()
    end
    java_overload :update, 0
    

    def setOrthoginalMode()
    end
    java_overload :setOrthoginalMode, 0
    

    def setCameraMode()
    end
    java_overload :setCameraMode, 0
    

    def getGl10()
        return @gl
    end
    java_overload :getGl10, 0
    

    def setFontDebug(font, fontDebug)
        raise RuntimeError.new()
    end
    java_overload :setFontDebug, 2
end

module ::Javax; module Microedition; module Khronos; module Opengles; autoload :GL, "javax/microedition/khronos/opengles/GL" unless const_defined?(:GL, false); end; end; end; end
module ::Javax; module Microedition; module Khronos; module Opengles; autoload :GL10, "javax/microedition/khronos/opengles/GL10" unless const_defined?(:GL10, false); end; end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Font, "javax/microedition/lcdui/Font" unless const_defined?(:Font, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Font; autoload :FontDebugBase, "org/allbinary/graphics/font/FontDebugBase" unless const_defined?(:FontDebugBase, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
autoload :NullGL10, "org/allbinary/device/NullGL10" unless const_defined?(:NullGL10, false)

end; end; end

