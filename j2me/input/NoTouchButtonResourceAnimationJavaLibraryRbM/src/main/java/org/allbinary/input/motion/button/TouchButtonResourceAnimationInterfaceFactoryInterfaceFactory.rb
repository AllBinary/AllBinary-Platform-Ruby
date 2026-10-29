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

require "org/allbinary/animation/resource/BaseResourceAnimationInterfaceFactoryInterfaceFactory"

class TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory < BaseResourceAnimationInterfaceFactoryInterfaceFactory
    

    def self.createFactory()
        return TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory.new("TouchButton Animations")
    end
    

    def initialize(name)
        super(name, StdUtil.getInstance().createHashtable(), StdUtil.getInstance().createHashtable(), StdUtil.getInstance().createHashtable())
    end
    

    # throws Exception
    def init(level)
        self.initImageCache(ImageCacheFactory.getInstance(), level)
    end
    

    # throws Exception
    def initImageCache(imageCache, level)
        if self.isInitialized()
            return
        end
        self.class.superclass.instance_method(:init).bind(self).call(level)
    end
    

    def isLoadingLevel(level)
        resourceLoadingLevelFactory = ResourceLoadingLevelFactory.getInstance()
        if level == resourceLoadingLevelFactory.LOAD_TOUCH.getLevel()
            return true
        else
            return super(level)
        end
    end
    

    def isFeature()
        if !Features.getInstance().isDefault(OpenGLFeatureFactory.getInstance().OPENGL)
            return true
        else
            return false
        end
    end
end

require "org/allbinary/game/configuration/feature/Features"
require "org/allbinary/game/resource/ResourceLoadingLevelFactory"
require "org/allbinary/graphics/opengles/OpenGLFeatureFactory"
require "org/allbinary/image/ImageCache"
require "org/allbinary/image/ImageCacheFactory"
require "org/allbinary/logic/StdUtil"

