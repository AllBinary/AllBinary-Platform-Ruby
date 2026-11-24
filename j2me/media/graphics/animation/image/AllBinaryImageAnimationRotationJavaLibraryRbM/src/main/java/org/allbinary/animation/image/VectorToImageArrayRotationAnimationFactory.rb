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

class VectorToImageArrayRotationAnimationFactory < BaseImageAnimationFactory
    attr_accessor :imageArray, :angleIncrement

    def jfields_org_allbinary_animation_image_VectorToImageArrayRotationAnimationFactory
        @imageArray = ::Javax::Microedition::Lcdui::NullImage::NULL_IMAGE_ARRAY
        @angleIncrement = 0 unless instance_variable_defined?(:@angleIncrement)
    end
    

    def initialize(vectorInfo, basicColor, animationBehaviorFactory)
        super(::Org::Allbinary::Image::AnimationFrameToImageUtil.getInstance().getInstanceTranslate(vectorInfo.getWidth(), vectorInfo.getHeight(), ::Org::Allbinary::Animation::VectorAnimation.createVectorAnimation(vectorInfo.getPoints(), basicColor, animationBehaviorFactory.getOrCreateInstance())), ::Org::Allbinary::Logic::MathPackage::PrimitiveIntUtil.getArrayInstance(), 0, 0, 0, 0, animationBehaviorFactory)
        jfields_org_allbinary_animation_image_VectorToImageArrayRotationAnimationFactory
        self.init()
    end
    

    # throws Exception
    def init()
        angleFactory = ::Org::Allbinary::MathPackage::AngleFactory.getInstance()
        @angleIncrement = angleFactory.TOTAL_ANGLE / ::Org::Allbinary::Game::Configuration::GameConfigurationCentral.getInstance().getGameControlFidelity()
        @imageArray = ::Org::Allbinary::Media::Image::ImageToRotationImageArrayUtil.getInstance().generate(self.getImage(), self.getAngleIncrement(), ((angleFactory.TOTAL_ANGLE).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }))
    end
    java_overload :init, 0
    

    # throws Exception
    def getInstance(instanceId)
        if @animationFactoryInitializationVisitor.dx != 0 || @animationFactoryInitializationVisitor.dy != 0
            return AdjustedImageArrayRotationAnimation.new(@imageArray, ::Org::Allbinary::MathPackage::AngleInfo.getInstance((((self.getAngleIncrement()).to_i + 32768) % 65536 - 32768)), ((::Org::Allbinary::MathPackage::AngleFactory.getInstance().TOTAL_ANGLE).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }), @animationFactoryInitializationVisitor.dx, @animationFactoryInitializationVisitor.dy, @animationBehaviorFactory.getOrCreateInstance())
        else
            return AdjustedImageArrayRotationAnimation.createAnimation(@imageArray, ::Org::Allbinary::MathPackage::AngleInfo.getInstance((((@angleIncrement).to_i + 32768) % 65536 - 32768)), ((::Org::Allbinary::MathPackage::AngleFactory.getInstance().TOTAL_ANGLE).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }), @animationBehaviorFactory.getOrCreateInstance())
        end
    end
    java_overload :getInstance, 1
    

    def getAngleIncrement()
        return @angleIncrement
    end
    java_overload :getAngleIncrement, 0
    

    def setInitialScale(scaleProperties)
    end
    java_overload :setInitialScale, 1
end

module ::Javax; module Microedition; module Lcdui; autoload :Image, "javax/microedition/lcdui/Image" unless const_defined?(:Image, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :NullImage, "javax/microedition/lcdui/NullImage" unless const_defined?(:NullImage, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :Animation, "org/allbinary/animation/Animation" unless const_defined?(:Animation, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :AnimationBehaviorFactory, "org/allbinary/animation/AnimationBehaviorFactory" unless const_defined?(:AnimationBehaviorFactory, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :VectorAnimation, "org/allbinary/animation/VectorAnimation" unless const_defined?(:VectorAnimation, false); end; end; end
module ::Org; module Allbinary; module Game; module Configuration; autoload :GameConfigurationCentral, "org/allbinary/game/configuration/GameConfigurationCentral" unless const_defined?(:GameConfigurationCentral, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end
module ::Org; module Allbinary; module Image; autoload :AnimationFrameToImageUtil, "org/allbinary/image/AnimationFrameToImageUtil" unless const_defined?(:AnimationFrameToImageUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :PrimitiveIntUtil, "org/allbinary/logic/math/PrimitiveIntUtil" unless const_defined?(:PrimitiveIntUtil, false); end; end; end; end
module ::Org; module Allbinary; module MathPackage; autoload :AngleFactory, "org/allbinary/math/AngleFactory" unless const_defined?(:AngleFactory, false); end; end; end
module ::Org; module Allbinary; module MathPackage; autoload :AngleInfo, "org/allbinary/math/AngleInfo" unless const_defined?(:AngleInfo, false); end; end; end
module ::Org; module Allbinary; module Media; autoload :ScaleProperties, "org/allbinary/media/ScaleProperties" unless const_defined?(:ScaleProperties, false); end; end; end
module ::Org; module Allbinary; module Media; module Image; autoload :ImageToRotationImageArrayUtil, "org/allbinary/media/image/ImageToRotationImageArrayUtil" unless const_defined?(:ImageToRotationImageArrayUtil, false); end; end; end; end
module ::Org; module Allbinary; module Vector; autoload :VectorInfo, "org/allbinary/vector/VectorInfo" unless const_defined?(:VectorInfo, false); end; end; end
autoload :AdjustedImageArrayRotationAnimation, "org/allbinary/animation/image/AdjustedImageArrayRotationAnimation" unless const_defined?(:AdjustedImageArrayRotationAnimation, false)

end; end; end; end

