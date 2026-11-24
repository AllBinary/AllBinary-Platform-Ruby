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
require "org/allbinary/animation/AnimationInterfaceFactoryInterface"

module ::Org; module Allbinary; module Animation; module Image

class LazyImageRotationAnimationFactory
    include ::Org::Allbinary::Animation::AnimationInterfaceFactoryInterface
    attr_accessor :layoutIndex, :animationInterfaceFactoryInterface, :scaleProperties

    def jfields_org_allbinary_animation_image_LazyImageRotationAnimationFactory
        @layoutIndex = nil unless instance_variable_defined?(:@layoutIndex)
        @animationInterfaceFactoryInterface = nil unless instance_variable_defined?(:@animationInterfaceFactoryInterface)
        @scaleProperties = ::Org::Allbinary::Media::ScaleProperties.instance
    end
    

    def initialize(layoutIndex, associatedLazyAnimationId, animationInterfaceFactoryInterface)
        jfields_org_allbinary_animation_image_LazyImageRotationAnimationFactory
        @layoutIndex = layoutIndex
        @animationInterfaceFactoryInterface = animationInterfaceFactoryInterface
        ::Org::Allbinary::Image::ImageCacheFactory.getInstance().hasAnyLazyAnimationFactories = true
        if @animationInterfaceFactoryInterface.animationBehaviorFactory == ::Org::Allbinary::Animation::AnimationBehaviorFactory.getInstance()
            ::Org::Allbinary::Logic::Communication::Log::ForcedLogUtil.log("Using default AnimationBehaviorFactory with IndexedAnimationFactory", self)
        end
    end
    

    # throws Exception
    def getInstance(instanceId)
        if @animationInterfaceFactoryInterface.getImage().isReady()
            @animationInterfaceFactoryInterface.setInitialScale(@scaleProperties)
            return @animationInterfaceFactoryInterface.getInstance(instanceId)
        else
            return LazyImageRotationAnimation.new(@layoutIndex, instanceId, @scaleProperties, @animationInterfaceFactoryInterface, @animationInterfaceFactoryInterface.animationBehaviorFactory.getOrCreateInstance())
        end
    end
    java_overload :getInstance, 1
    

    def setInitialScale(scaleProperties)
        @scaleProperties = scaleProperties
    end
    java_overload :setInitialScale, 1
end

module ::Org; module Allbinary; module Animation; autoload :Animation, "org/allbinary/animation/Animation" unless const_defined?(:Animation, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :AnimationBehaviorFactory, "org/allbinary/animation/AnimationBehaviorFactory" unless const_defined?(:AnimationBehaviorFactory, false); end; end; end
module ::Org; module Allbinary; module Image; autoload :ImageCacheFactory, "org/allbinary/image/ImageCacheFactory" unless const_defined?(:ImageCacheFactory, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :ForcedLogUtil, "org/allbinary/logic/communication/log/ForcedLogUtil" unless const_defined?(:ForcedLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Media; autoload :ScaleProperties, "org/allbinary/media/ScaleProperties" unless const_defined?(:ScaleProperties, false); end; end; end
autoload :BaseImageAnimationFactory, "org/allbinary/animation/image/BaseImageAnimationFactory" unless const_defined?(:BaseImageAnimationFactory, false)
autoload :LazyImageRotationAnimation, "org/allbinary/animation/image/LazyImageRotationAnimation" unless const_defined?(:LazyImageRotationAnimation, false)

end; end; end; end

