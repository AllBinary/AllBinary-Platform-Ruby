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

class AllBinaryScreenRelationalImageAnimationInterfaceFactory < BaseImageAnimationFactory
    attr_accessor :lastImage

    def jfields_org_allbinary_animation_image_AllBinaryScreenRelationalImageAnimationInterfaceFactory
        @lastImage = ::Javax::Microedition::Lcdui::NullImage::NULL_IMAGE
    end
    

    def initialize(image, animationBehaviorFactory)
        super(image, ::Org::Allbinary::Logic::MathPackage::PrimitiveIntUtil.getArrayInstance(), 0, 0, 0, 0, animationBehaviorFactory)
        jfields_org_allbinary_animation_image_AllBinaryScreenRelationalImageAnimationInterfaceFactory
        if @lastImage != ::Javax::Microedition::Lcdui::NullImage::NULL_IMAGE
            androidImageInterface = @lastImage
            androidImageInterface.getBitmap().recycle()
        end
        scale = ::Org::Allbinary::Graphics::Displayable::ScreenRelationalUtil.getInstance().getScaleImage(image)
        @lastImage = ::Org::Allbinary::Media::Image::ImageScaleUtil.getInstance().createImage(::Org::Allbinary::Image::GameFeatureImageCacheFactory.getInstance(), self.getImage(), scale, scale, false)
    end
    

    # throws Exception
    def getInstance(instanceId)
        return ImageAnimation.new(@lastImage, @animationBehaviorFactory.getOrCreateInstance())
    end
    java_overload :getInstance, 1
end

module ::Javax; module Microedition; module Lcdui; autoload :Image, "javax/microedition/lcdui/Image" unless const_defined?(:Image, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :NullImage, "javax/microedition/lcdui/NullImage" unless const_defined?(:NullImage, false); end; end; end
module ::Org; module Allbinary; module Image; autoload :GameFeatureImageCacheFactory, "org/allbinary/image/GameFeatureImageCacheFactory" unless const_defined?(:GameFeatureImageCacheFactory, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :Animation, "org/allbinary/animation/Animation" unless const_defined?(:Animation, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :AnimationBehaviorFactory, "org/allbinary/animation/AnimationBehaviorFactory" unless const_defined?(:AnimationBehaviorFactory, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Displayable; autoload :ScreenRelationalUtil, "org/allbinary/graphics/displayable/ScreenRelationalUtil" unless const_defined?(:ScreenRelationalUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :PrimitiveIntUtil, "org/allbinary/logic/math/PrimitiveIntUtil" unless const_defined?(:PrimitiveIntUtil, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Image; autoload :ImageScaleUtil, "org/allbinary/media/image/ImageScaleUtil" unless const_defined?(:ImageScaleUtil, false); end; end; end; end
module ::Org; module Microemu; module Android; module Device; autoload :AndroidImageInterface, "org/microemu/android/device/AndroidImageInterface" unless const_defined?(:AndroidImageInterface, false); end; end; end; end
autoload :ImageAnimation, "org/allbinary/animation/image/ImageAnimation" unless const_defined?(:ImageAnimation, false)

end; end; end; end

