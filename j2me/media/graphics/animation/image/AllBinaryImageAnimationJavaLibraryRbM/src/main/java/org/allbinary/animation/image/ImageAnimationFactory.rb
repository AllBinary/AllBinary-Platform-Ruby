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

require "java/lang/JavaOverload"
require "org/allbinary/animation/image/BaseImageAnimationFactory"

module ::Org; module Allbinary; module Animation; module Image

class ImageAnimationFactory < BaseImageAnimationFactory
    

    # throws Exception
    def self.createFactory(image)
        return ImageAnimationFactory.new(image, image.getWidth(), image.getHeight(), 0, 0, ::Org::Allbinary::Animation::AnimationBehaviorFactory.getInstance())
    end
    

    def initialize(image, width, height, dx, dy, animationBehaviorFactory)
        super(image, ::Org::Allbinary::Logic::MathPackage::PrimitiveIntUtil.getArrayInstance(), width, height, dx, dy, animationBehaviorFactory)
    end
    

    # throws Exception
    def getInstance(instanceId)
        scaledImage = @animationFactoryImageScaleUtil.createImage(self.getImage(), @animationFactoryInitializationVisitor.width, @animationFactoryInitializationVisitor.height, @scaleProperties.scaleWidth, @scaleProperties.scaleHeight)
        openGLUtil = ::Org::Allbinary::Graphics::Opengles::OpenGLUtil.getInstance()
        scaledImage = openGLUtil.addImage(scaledImage)
        if @animationFactoryInitializationVisitor.dx != 0 || @animationFactoryInitializationVisitor.dy != 0
            @animationFactoryImageScaleUtil.processAdjust(self)
            return AdjustedImageAnimation.new(scaledImage, @animationFactoryInitializationVisitor.dx, @animationFactoryInitializationVisitor.dy, @animationBehaviorFactory.getOrCreateInstance())
        else
            return ImageAnimation.new(scaledImage, @animationBehaviorFactory.getOrCreateInstance())
        end
    end
    java_overload :getInstance, 1
end

module ::Javax; module Microedition; module Lcdui; autoload :Image, "javax/microedition/lcdui/Image" unless const_defined?(:Image, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :Animation, "org/allbinary/animation/Animation" unless const_defined?(:Animation, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :AnimationBehaviorFactory, "org/allbinary/animation/AnimationBehaviorFactory" unless const_defined?(:AnimationBehaviorFactory, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Opengles; autoload :OpenGLUtil, "org/allbinary/graphics/opengles/OpenGLUtil" unless const_defined?(:OpenGLUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :PrimitiveIntUtil, "org/allbinary/logic/math/PrimitiveIntUtil" unless const_defined?(:PrimitiveIntUtil, false); end; end; end; end
autoload :AdjustedImageAnimation, "org/allbinary/animation/image/AdjustedImageAnimation" unless const_defined?(:AdjustedImageAnimation, false)
autoload :ImageAnimation, "org/allbinary/animation/image/ImageAnimation" unless const_defined?(:ImageAnimation, false)

end; end; end; end

