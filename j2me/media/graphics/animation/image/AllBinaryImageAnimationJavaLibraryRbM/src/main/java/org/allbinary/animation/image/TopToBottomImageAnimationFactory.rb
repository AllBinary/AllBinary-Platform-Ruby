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

require "org/allbinary/animation/image/BaseImageAnimationFactory"

class TopToBottomImageAnimationFactory < BaseImageAnimationFactory
    

    def initialize(image, sequenceArray, animationBehaviorFactory)
        super(image, sequenceArray, image.getWidth(), image.getHeight(), 0, 0, animationBehaviorFactory)
    end
    

    # throws Exception
    def getInstance(instanceId)
        scaledImage = @animationFactoryImageScaleUtil.createImage(self.getImage(), @animationFactoryInitializationVisitor.width, @animationFactoryInitializationVisitor.height, @scaleProperties.scaleWidth, @scaleProperties.scaleHeight)
        return TopToBottomImageAnimation.new(scaledImage, self.getSequenceArray(), @animationBehaviorFactory.getOrCreateInstance())
    end
end

autoload :Image, "javax/microedition/lcdui/Image"
autoload :Animation, "org/allbinary/animation/Animation"
autoload :AnimationBehaviorFactory, "org/allbinary/animation/AnimationBehaviorFactory"
autoload :TopToBottomImageAnimation, "org/allbinary/animation/image/TopToBottomImageAnimation"

