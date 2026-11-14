# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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

class ImageAnimationFactory < BaseImageAnimationFactory
    

    # throws Exception
    def self.createFactory(image)
        return ImageAnimationFactory.new(image, image.getWidth(), image.getHeight(), 0, 0, AnimationBehaviorFactory.getInstance())
    end
    

    def initialize(image, width, height, dx, dy, animationBehaviorFactory)
        super(image, PrimitiveIntUtil.getArrayInstance(), width, height, dx, dy, animationBehaviorFactory)
    end
    

    # throws Exception
    def getInstance(instanceId)
        scaledImage = @animationFactoryImageScaleUtil.createImage(self.getImage(), @animationFactoryInitializationVisitor.width, @animationFactoryInitializationVisitor.height, @scaleProperties.scaleWidth, @scaleProperties.scaleHeight)
        openGLUtil = OpenGLUtil.getInstance()
        scaledImage = openGLUtil.addImage(scaledImage)
        if @animationFactoryInitializationVisitor.dx != 0 || @animationFactoryInitializationVisitor.dy != 0
            @animationFactoryImageScaleUtil.processAdjust(self)
            return AdjustedImageAnimation.new(scaledImage, @animationFactoryInitializationVisitor.dx, @animationFactoryInitializationVisitor.dy, @animationBehaviorFactory.getOrCreateInstance())
        else
            return ImageAnimation.new(scaledImage, @animationBehaviorFactory.getOrCreateInstance())
        end
    end
end

autoload :Image, "javax/microedition/lcdui/Image"
autoload :Animation, "org/allbinary/animation/Animation"
autoload :AnimationBehaviorFactory, "org/allbinary/animation/AnimationBehaviorFactory"
autoload :OpenGLUtil, "org/allbinary/graphics/opengles/OpenGLUtil"
autoload :PrimitiveIntUtil, "org/allbinary/logic/math/PrimitiveIntUtil"
autoload :AdjustedImageAnimation, "org/allbinary/animation/image/AdjustedImageAnimation"
autoload :ImageAnimation, "org/allbinary/animation/image/ImageAnimation"

