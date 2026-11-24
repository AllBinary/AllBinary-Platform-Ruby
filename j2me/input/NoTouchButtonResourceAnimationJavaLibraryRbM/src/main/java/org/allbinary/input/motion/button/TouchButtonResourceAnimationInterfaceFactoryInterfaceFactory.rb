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
require "org/allbinary/animation/resource/BaseResourceAnimationInterfaceFactoryInterfaceFactory"

module ::Org; module Allbinary; module Input; module Motion; module Button

class TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory < ::Org::Allbinary::Animation::Resource::BaseResourceAnimationInterfaceFactoryInterfaceFactory
    

    def self.createFactory()
        return TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory.new("TouchButton Animations")
    end
    

    def initialize(name)
        super(name, ::Org::Allbinary::Logic::StdUtil.getInstance().createHashtable(), ::Org::Allbinary::Logic::StdUtil.getInstance().createHashtable(), ::Org::Allbinary::Logic::StdUtil.getInstance().createHashtable())
    end
    

    # throws Exception
    def init(level)
        self.initImageCache(::Org::Allbinary::Image::ImageCacheFactory.getInstance(), level)
    end
    java_overload :init, 1
    

    # throws Exception
    def initImageCache(imageCache, level)
        if self.isInitialized()
            return
        end
        TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory.superclass.java_super_method(:init, 1).bind(self).call(level)
    end
    java_overload :initImageCache, 2
    

    def isLoadingLevel(level)
        resourceLoadingLevelFactory = ::Org::Allbinary::Game::Resource::ResourceLoadingLevelFactory.getInstance()
        if level == resourceLoadingLevelFactory.LOAD_TOUCH.getLevel()
            return true
        else
            return TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory.superclass.java_super_method(:isLoadingLevel, 1).bind(self).call(level)
        end
    end
    java_overload :isLoadingLevel, 1
    

    def isFeature()
        if !::Org::Allbinary::Game::Configuration::Feature::Features.getInstance().isDefault(::Org::Allbinary::Graphics::Opengles::OpenGLFeatureFactory.getInstance().OPENGL)
            return true
        else
            return false
        end
    end
    java_overload :isFeature, 0
end

module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :Features, "org/allbinary/game/configuration/feature/Features" unless const_defined?(:Features, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Resource; autoload :ResourceLoadingLevelFactory, "org/allbinary/game/resource/ResourceLoadingLevelFactory" unless const_defined?(:ResourceLoadingLevelFactory, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Opengles; autoload :OpenGLFeatureFactory, "org/allbinary/graphics/opengles/OpenGLFeatureFactory" unless const_defined?(:OpenGLFeatureFactory, false); end; end; end; end
module ::Org; module Allbinary; module Image; autoload :ImageCache, "org/allbinary/image/ImageCache" unless const_defined?(:ImageCache, false); end; end; end
module ::Org; module Allbinary; module Image; autoload :ImageCacheFactory, "org/allbinary/image/ImageCacheFactory" unless const_defined?(:ImageCacheFactory, false); end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end

end; end; end; end; end

