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

require "java/lang/JavaOverload"
require "org/allbinary/animation/image/BaseImageAnimationFactory"

module ::Org; module Allbinary; module Animation; module Image

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
    java_overload :getInstance, 1
end

module ::Javax; module Microedition; module Lcdui; autoload :Image, "javax/microedition/lcdui/Image" unless const_defined?(:Image, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :Animation, "org/allbinary/animation/Animation" unless const_defined?(:Animation, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :AnimationBehaviorFactory, "org/allbinary/animation/AnimationBehaviorFactory" unless const_defined?(:AnimationBehaviorFactory, false); end; end; end
autoload :AdjustedLeftToRightImageAnimation, "org/allbinary/animation/image/AdjustedLeftToRightImageAnimation" unless const_defined?(:AdjustedLeftToRightImageAnimation, false)
autoload :LeftToRightImageAnimation, "org/allbinary/animation/image/LeftToRightImageAnimation" unless const_defined?(:LeftToRightImageAnimation, false)

end; end; end; end

