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

class TopToBottomImageAnimationFactory < BaseImageAnimationFactory
    

    def initialize(image, sequenceArray, animationBehaviorFactory)
        super(image, sequenceArray, image.getWidth(), image.getHeight(), 0, 0, animationBehaviorFactory)
    end
    

    # throws Exception
    def getInstance(instanceId)
        scaledImage = @animationFactoryImageScaleUtil.createImage(self.getImage(), @animationFactoryInitializationVisitor.width, @animationFactoryInitializationVisitor.height, @scaleProperties.scaleWidth, @scaleProperties.scaleHeight)
        return TopToBottomImageAnimation.new(scaledImage, self.getSequenceArray(), @animationBehaviorFactory.getOrCreateInstance())
    end
    java_overload :getInstance, 1
end

module ::Javax; module Microedition; module Lcdui; autoload :Image, "javax/microedition/lcdui/Image" unless const_defined?(:Image, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :Animation, "org/allbinary/animation/Animation" unless const_defined?(:Animation, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :AnimationBehaviorFactory, "org/allbinary/animation/AnimationBehaviorFactory" unless const_defined?(:AnimationBehaviorFactory, false); end; end; end
autoload :TopToBottomImageAnimation, "org/allbinary/animation/image/TopToBottomImageAnimation" unless const_defined?(:TopToBottomImageAnimation, false)

end; end; end; end

