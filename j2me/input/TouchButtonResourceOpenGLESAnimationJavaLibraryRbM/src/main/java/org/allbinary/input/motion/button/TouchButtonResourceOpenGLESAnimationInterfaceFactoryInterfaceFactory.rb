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
# package org.allbinary.input.motion.button

require "java/lang/JavaOverload"
require "org/allbinary/input/motion/button/TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory"

module ::Org; module Allbinary; module Input; module Motion; module Button

class TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory < TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory
    

    def initialize()
        super("OpenGL TouchButton Animations")
    end
    

    # throws Exception
    def init(level)
        TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory.superclass.java_super_method(:initImageCache, 2).bind(self).call(::Org::Allbinary::Image::Opengles::OpenGLImageCacheFactory.getInstance(), level)
    end
    java_overload :init, 1
    

    def isFeature()
        if ::Org::Allbinary::Game::Configuration::Feature::Features.getInstance().isDefault(::Org::Allbinary::Graphics::Opengles::OpenGLFeatureFactory.getInstance().OPENGL)
            return true
        else
            return false
        end
    end
    java_overload :isFeature, 0
end

module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :Features, "org/allbinary/game/configuration/feature/Features" unless const_defined?(:Features, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Opengles; autoload :OpenGLFeatureFactory, "org/allbinary/graphics/opengles/OpenGLFeatureFactory" unless const_defined?(:OpenGLFeatureFactory, false); end; end; end; end
module ::Org; module Allbinary; module Image; module Opengles; autoload :OpenGLImageCacheFactory, "org/allbinary/image/opengles/OpenGLImageCacheFactory" unless const_defined?(:OpenGLImageCacheFactory, false); end; end; end; end

end; end; end; end; end

