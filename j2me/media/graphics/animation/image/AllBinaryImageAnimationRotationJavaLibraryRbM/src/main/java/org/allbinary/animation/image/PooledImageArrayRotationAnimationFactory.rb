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

#TWB - Adjustments should be done in the resource creation and not at the animation level
class PooledImageArrayRotationAnimationFactory
    include ::Org::Allbinary::Animation::AnimationInterfaceFactoryInterface
    attr_accessor :allBinaryImageRotationAnimationInfo, :animationBehaviorFactory

    def jfields_org_allbinary_animation_image_PooledImageArrayRotationAnimationFactory
        @allBinaryImageRotationAnimationInfo = ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT
        @animationBehaviorFactory = nil unless instance_variable_defined?(:@animationBehaviorFactory)
    end
    

    # throws Exception
    def self.createFactory(image, animationBehaviorFactory)
        totalAngle = ((::Org::Allbinary::MathPackage::AngleFactory.getInstance().TOTAL_ANGLE).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })
        angleIncrement = (totalAngle / ::Org::Allbinary::Game::Configuration::GameConfigurationCentral.getInstance().getGameControlFidelity())
        return PooledImageArrayRotationAnimationFactory.new(image, image.getWidth(), image.getHeight(), -image.getWidth() >> 2, -image.getHeight() >> 2, angleIncrement, animationBehaviorFactory)
    end
    

    # throws Exception
    def self.createDXY(image, dx, dy, animationBehaviorFactory)
        totalAngle = ((::Org::Allbinary::MathPackage::AngleFactory.getInstance().TOTAL_ANGLE).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })
        angleIncrement = (totalAngle / ::Org::Allbinary::Game::Configuration::GameConfigurationCentral.getInstance().getGameControlFidelity())
        return PooledImageArrayRotationAnimationFactory.new(image, image.getWidth(), image.getHeight(), dx, dy, angleIncrement, animationBehaviorFactory)
    end
    

    def initialize(image, width, height, dx, dy, angleIncrement, animationBehaviorFactory)
        jfields_org_allbinary_animation_image_PooledImageArrayRotationAnimationFactory
        @animationBehaviorFactory = animationBehaviorFactory
        totalAngle = ((::Org::Allbinary::MathPackage::AngleFactory.getInstance().TOTAL_ANGLE).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })
        imageArray = ::Org::Allbinary::Media::Image::ImageToRotationImageArrayUtil.getInstance().generate(image, angleIncrement, totalAngle)
        @allBinaryImageRotationAnimationInfo = ImageArrayRotationAnimationInfo.new(imageArray, angleIncrement, totalAngle, dx, dy)
    end
    

    # throws Exception
    def getInstance(instanceId)
        return AdjustedImageArrayRotationAnimation.createAdjustedImageArrayRotationAnimationInfo(@allBinaryImageRotationAnimationInfo, @animationBehaviorFactory.getOrCreateInstance())
    end
    java_overload :getInstance, 1
    

    def setInitialScale(scaleProperties)
    end
    java_overload :setInitialScale, 1
end

module ::Javax; module Microedition; module Lcdui; autoload :Image, "javax/microedition/lcdui/Image" unless const_defined?(:Image, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :Animation, "org/allbinary/animation/Animation" unless const_defined?(:Animation, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :AnimationBehaviorFactory, "org/allbinary/animation/AnimationBehaviorFactory" unless const_defined?(:AnimationBehaviorFactory, false); end; end; end
module ::Org; module Allbinary; module Game; module Configuration; autoload :GameConfigurationCentral, "org/allbinary/game/configuration/GameConfigurationCentral" unless const_defined?(:GameConfigurationCentral, false); end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :NullUtil, "org/allbinary/logic/NullUtil" unless const_defined?(:NullUtil, false); end; end; end
module ::Org; module Allbinary; module MathPackage; autoload :AngleFactory, "org/allbinary/math/AngleFactory" unless const_defined?(:AngleFactory, false); end; end; end
module ::Org; module Allbinary; module Media; autoload :ScaleProperties, "org/allbinary/media/ScaleProperties" unless const_defined?(:ScaleProperties, false); end; end; end
module ::Org; module Allbinary; module Media; module Image; autoload :ImageToRotationImageArrayUtil, "org/allbinary/media/image/ImageToRotationImageArrayUtil" unless const_defined?(:ImageToRotationImageArrayUtil, false); end; end; end; end
autoload :AdjustedImageArrayRotationAnimation, "org/allbinary/animation/image/AdjustedImageArrayRotationAnimation" unless const_defined?(:AdjustedImageArrayRotationAnimation, false)
autoload :ImageArrayRotationAnimationInfo, "org/allbinary/animation/image/ImageArrayRotationAnimationInfo" unless const_defined?(:ImageArrayRotationAnimationInfo, false)

end; end; end; end

