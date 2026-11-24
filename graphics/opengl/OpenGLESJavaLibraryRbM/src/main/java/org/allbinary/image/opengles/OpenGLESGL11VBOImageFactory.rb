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
# package org.allbinary.image.opengles

require "java/lang/JavaOverload"
require "org/allbinary/image/opengles/OpenGLImageFactory"

module ::Org; module Allbinary; module Image; module Opengles

class OpenGLESGL11VBOImageFactory < OpenGLImageFactory
    

    def getInstance(image, bitmapFactory, textureFactory)
        return OpenGLESGL10Image.new(image, bitmapFactory, textureFactory)
    end
    java_overload :getInstance, 3
end

module ::Javax; module Microedition; module Lcdui; autoload :Image, "javax/microedition/lcdui/Image" unless const_defined?(:Image, false); end; end; end
module ::Org; module Allbinary; module Platform; module Graphics; autoload :PlatformBitmapBaseFactory, "org/allbinary/platform/graphics/PlatformBitmapBaseFactory" unless const_defined?(:PlatformBitmapBaseFactory, false); end; end; end; end
module ::Org; module Allbinary; module Platform; module Opengles; autoload :PlatformTextureBaseFactory, "org/allbinary/platform/opengles/PlatformTextureBaseFactory" unless const_defined?(:PlatformTextureBaseFactory, false); end; end; end; end
autoload :OpenGLESGL10Image, "org/allbinary/image/opengles/OpenGLESGL10Image" unless const_defined?(:OpenGLESGL10Image, false)

end; end; end; end

