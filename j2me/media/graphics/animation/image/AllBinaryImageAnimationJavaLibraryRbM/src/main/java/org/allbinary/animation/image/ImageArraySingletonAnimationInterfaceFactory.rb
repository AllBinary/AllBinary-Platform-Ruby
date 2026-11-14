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

class ImageArraySingletonAnimationInterfaceFactory < SingletonAnimationInterfaceFactory
    

    def initialize(imageArray)
        super(ImageArrayAnimation.new(imageArray, AnimationBehavior.getInstance()))
    end
end

autoload :Image, "javax/microedition/lcdui/Image"
autoload :Animation, "org/allbinary/animation/Animation"
autoload :AnimationBehavior, "org/allbinary/animation/AnimationBehavior"
autoload :IndexedAnimation, "org/allbinary/animation/IndexedAnimation"
autoload :IndexedAnimationToImageArrayUtil, "org/allbinary/image/IndexedAnimationToImageArrayUtil"
autoload :ImageArrayAnimation, "org/allbinary/animation/image/ImageArrayAnimation"

