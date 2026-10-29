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

require "org/allbinary/input/motion/button/TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory"

class TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory < TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory
    

    def initialize()
        super("OpenGL TouchButton Animations")
    end
    

    # throws Exception
    def init(level)
        self.class.superclass.instance_method(:initImageCache).bind(self).call(OpenGLImageCacheFactory.getInstance(), level)
    end
    

    def isFeature()
        if Features.getInstance().isDefault(OpenGLFeatureFactory.getInstance().OPENGL)
            return true
        else
            return false
        end
    end
end

require "org/allbinary/game/configuration/feature/Features"
require "org/allbinary/graphics/opengles/OpenGLFeatureFactory"
require "org/allbinary/image/opengles/OpenGLImageCacheFactory"

