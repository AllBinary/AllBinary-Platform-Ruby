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
require "org/allbinary/animation/image/BaseImageAnimationFactory"

class LeftToRightImageAnimationFactory < BaseImageAnimationFactory
    

    def initialize(image, sequenceArray, dx, dy, animationBehaviorFactory)
        super(image, sequenceArray, image.getWidth(), image.getHeight(), dx, dy, animationBehaviorFactory)
    end
    

    # throws Exception
    def getInstance(instanceId)
        scaledImage = @animationFactoryImageScaleUtil.createImage(self.getImage(), @animationFactoryInitializationVisitor.width, @animationFactoryInitializationVisitor.height, @scaleProperties.scaleWidth, @scaleProperties.scaleHeight)
        if @animationFactoryInitializationVisitor.dx != 0 || @animationFactoryInitializationVisitor.dy != 0
            @animationFactoryImageScaleUtil.processAdjust(self)
            return AdjustedLeftToRightImageAnimation.new(scaledImage, self.getSequenceArray(), @animationFactoryInitializationVisitor.dx, @animationFactoryInitializationVisitor.dy, @animationBehaviorFactory.getOrCreateInstance())
        else
            return LeftToRightImageAnimation.new(scaledImage, self.getSequenceArray(), @animationBehaviorFactory.getOrCreateInstance())
        end
    end
end

require "org/allbinary/animation/Animation"
require "org/allbinary/animation/AnimationBehaviorFactory"
require "org/allbinary/animation/image/AdjustedLeftToRightImageAnimation"
require "org/allbinary/animation/image/LeftToRightImageAnimation"

