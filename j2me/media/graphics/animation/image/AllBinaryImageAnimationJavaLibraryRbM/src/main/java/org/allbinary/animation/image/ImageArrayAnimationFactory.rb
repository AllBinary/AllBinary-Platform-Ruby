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
require "org/allbinary/animation/AnimationInterfaceFactoryInterface"

module ::Org; module Allbinary; module Animation; module Image

class ImageArrayAnimationFactory
    include ::Org::Allbinary::Animation::AnimationInterfaceFactoryInterface
    attr_accessor :dx, :dy, :imageArray, :animationBehaviorFactory

    def jfields_org_allbinary_animation_image_ImageArrayAnimationFactory
        @dx = 0
        @dy = 0
        @imageArray = nil unless instance_variable_defined?(:@imageArray)
        @animationBehaviorFactory = nil unless instance_variable_defined?(:@animationBehaviorFactory)
    end
    

    def initialize(imageArray, dx, dy, animationBehaviorFactory)
        jfields_org_allbinary_animation_image_ImageArrayAnimationFactory
        @imageArray = imageArray
        @animationBehaviorFactory = animationBehaviorFactory
        @dx = dx
        @dy = dy
    end
    

    # throws Exception
    def getInstance(instanceId)
        if @dx != 0 || @dy != 0
            return AdjustedImageArrayAnimation.new(@imageArray, @dx, @dy, @animationBehaviorFactory.getOrCreateInstance())
        else
            return ImageArrayAnimation.new(@imageArray, ::Org::Allbinary::Animation::AnimationBehavior.getInstance())
        end
    end
    java_overload :getInstance, 1
    

    def setInitialScale(scaleProperties)
    end
    java_overload :setInitialScale, 1
end

module ::Javax; module Microedition; module Lcdui; autoload :Image, "javax/microedition/lcdui/Image" unless const_defined?(:Image, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :Animation, "org/allbinary/animation/Animation" unless const_defined?(:Animation, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :AnimationBehavior, "org/allbinary/animation/AnimationBehavior" unless const_defined?(:AnimationBehavior, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :AnimationBehaviorFactory, "org/allbinary/animation/AnimationBehaviorFactory" unless const_defined?(:AnimationBehaviorFactory, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :ForcedLogUtil, "org/allbinary/logic/communication/log/ForcedLogUtil" unless const_defined?(:ForcedLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Media; autoload :ScaleProperties, "org/allbinary/media/ScaleProperties" unless const_defined?(:ScaleProperties, false); end; end; end
autoload :AdjustedImageArrayAnimation, "org/allbinary/animation/image/AdjustedImageArrayAnimation" unless const_defined?(:AdjustedImageArrayAnimation, false)
autoload :ImageArrayAnimation, "org/allbinary/animation/image/ImageArrayAnimation" unless const_defined?(:ImageArrayAnimation, false)

end; end; end; end

