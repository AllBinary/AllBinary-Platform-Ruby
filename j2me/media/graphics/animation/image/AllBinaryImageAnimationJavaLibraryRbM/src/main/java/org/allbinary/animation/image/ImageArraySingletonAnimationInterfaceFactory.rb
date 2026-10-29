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

# require "javax/microedition/lcdui/Image"
require "org/allbinary/animation/SingletonAnimationInterfaceFactory"

class ImageArraySingletonAnimationInterfaceFactory < SingletonAnimationInterfaceFactory
    

    def initialize(imageArray)
        super(ImageArrayAnimation.new(imageArray, AnimationBehavior.getInstance()))
    end
end

require "org/allbinary/animation/Animation"
require "org/allbinary/animation/AnimationBehavior"
require "org/allbinary/animation/IndexedAnimation"
require "org/allbinary/image/IndexedAnimationToImageArrayUtil"
require "org/allbinary/animation/image/ImageArrayAnimation"

