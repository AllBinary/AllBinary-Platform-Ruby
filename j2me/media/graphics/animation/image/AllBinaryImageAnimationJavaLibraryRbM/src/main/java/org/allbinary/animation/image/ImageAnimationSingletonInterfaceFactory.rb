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
# package org.allbinary.animation.image

require "org/allbinary/animation/SingletonAnimationInterfaceFactory"

class ImageAnimationSingletonInterfaceFactory < SingletonAnimationInterfaceFactory
    

    def initialize(animationInterface, width, height)
        super(ImageAnimation.new(AnimationFrameToImageUtil.getInstance().getInstanceWH(width, height, animationInterface), AnimationBehavior.getInstance()))
    end
end

autoload :Animation, "org/allbinary/animation/Animation"
autoload :AnimationBehavior, "org/allbinary/animation/AnimationBehavior"
autoload :AnimationFrameToImageUtil, "org/allbinary/image/AnimationFrameToImageUtil"
autoload :ImageAnimation, "org/allbinary/animation/image/ImageAnimation"

