# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.media.image


module ::Org; module Allbinary; module Media; module Image

# Shares image operations between the SWT and OpenGL implementations. 
class SwtOpenGLESImageBridge
    

    def initialize()
    end
    

    def self.addImage(util, image)
        return util.addImage(image)
    end
    

    def self.isCustomScaling(util, image)
        return util.isCustomScaling(image)
    end
    

    def self.getOpenGLESImage(image)
        return image
    end
    

    def self.getBitmapImage(image)
        return image.openGLBitmap.getImage()
    end
    

    def self.asImage(image)
        return image
    end
end

module ::Javax; module Microedition; module Lcdui; autoload :Image, "javax/microedition/lcdui/Image" unless const_defined?(:Image, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Opengles; autoload :OpenGLUtil, "org/allbinary/graphics/opengles/OpenGLUtil" unless const_defined?(:OpenGLUtil, false); end; end; end; end
module ::Org; module Allbinary; module Image; module Opengles; autoload :OpenGLESImage, "org/allbinary/image/opengles/OpenGLESImage" unless const_defined?(:OpenGLESImage, false); end; end; end; end
module ::Org; module Allbinary; module Image; module Opengles; autoload :OpenGLESImageExclusionUtil, "org/allbinary/image/opengles/OpenGLESImageExclusionUtil" unless const_defined?(:OpenGLESImageExclusionUtil, false); end; end; end; end

end; end; end; end

