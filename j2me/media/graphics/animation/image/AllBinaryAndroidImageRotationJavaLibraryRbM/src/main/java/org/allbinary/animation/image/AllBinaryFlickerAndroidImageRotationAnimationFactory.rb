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

class AllBinaryFlickerAndroidImageRotationAnimationFactory
    include ::Org::Allbinary::Animation::AnimationInterfaceFactoryInterface
    attr_accessor :image, :angleIncrement, :animationBehaviorFactory

    def jfields_org_allbinary_animation_image_AllBinaryFlickerAndroidImageRotationAnimationFactory
        @image = ::Javax::Microedition::Lcdui::NullImage::NULL_IMAGE
        @angleIncrement = nil unless instance_variable_defined?(:@angleIncrement)
        @animationBehaviorFactory = nil unless instance_variable_defined?(:@animationBehaviorFactory)
    end
    

    def initialize(image, width, height, angleIncrement, animationBehaviorFactory)
        jfields_org_allbinary_animation_image_AllBinaryFlickerAndroidImageRotationAnimationFactory
        self.setImage(image)
        @angleIncrement = angleIncrement
        @animationBehaviorFactory = animationBehaviorFactory
    end
    

    # throws Exception
    def getInstance(instanceId)
        image = ::Org::Allbinary::Media::Image::ImageCopyUtil.getInstance().createImage(self.getImage())
        return AllBinaryFlickerAndroidImageRotationAnimation.new(self.getImage(), image, ::Org::Allbinary::MathPackage::AngleInfo.getInstance(@angleIncrement), ::Org::Allbinary::MathPackage::AngleFactory.getInstance().TOTAL_ANGLE, @animationBehaviorFactory.getOrCreateInstance())
    end
    java_overload :getInstance, 1
    

    def getAngleIncrement()
        return @angleIncrement
    end
    java_overload :getAngleIncrement, 0
    

    def setImage(image)
        @image = image
    end
    java_overload :setImage, 1
    

    def getImage()
        return @image
    end
    java_overload :getImage, 0
    

    def setInitialScale(scaleProperties)
    end
    java_overload :setInitialScale, 1
end

module ::Javax; module Microedition; module Lcdui; autoload :Image, "javax/microedition/lcdui/Image" unless const_defined?(:Image, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :NullImage, "javax/microedition/lcdui/NullImage" unless const_defined?(:NullImage, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :Animation, "org/allbinary/animation/Animation" unless const_defined?(:Animation, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :AnimationBehaviorFactory, "org/allbinary/animation/AnimationBehaviorFactory" unless const_defined?(:AnimationBehaviorFactory, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :ForcedLogUtil, "org/allbinary/logic/communication/log/ForcedLogUtil" unless const_defined?(:ForcedLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Media; module Image; autoload :ImageCopyUtil, "org/allbinary/media/image/ImageCopyUtil" unless const_defined?(:ImageCopyUtil, false); end; end; end; end
module ::Org; module Allbinary; module MathPackage; autoload :AngleFactory, "org/allbinary/math/AngleFactory" unless const_defined?(:AngleFactory, false); end; end; end
module ::Org; module Allbinary; module MathPackage; autoload :AngleInfo, "org/allbinary/math/AngleInfo" unless const_defined?(:AngleInfo, false); end; end; end
module ::Org; module Allbinary; module Media; autoload :ScaleProperties, "org/allbinary/media/ScaleProperties" unless const_defined?(:ScaleProperties, false); end; end; end
autoload :AllBinaryFlickerAndroidImageRotationAnimation, "org/allbinary/animation/image/AllBinaryFlickerAndroidImageRotationAnimation" unless const_defined?(:AllBinaryFlickerAndroidImageRotationAnimation, false)

end; end; end; end

