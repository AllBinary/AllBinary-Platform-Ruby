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

class AllBinaryArrayImageRotationAnimationFactory < BaseImageAnimationFactory
    attr_accessor :imageArray, :angleIncrement

    def jfields_org_allbinary_animation_image_AllBinaryArrayImageRotationAnimationFactory
        @imageArray = ::Javax::Microedition::Lcdui::NullImage::NULL_IMAGE_ARRAY
        @angleIncrement = nil unless instance_variable_defined?(:@angleIncrement)
    end
    

    # throws Exception
    def self.createFactory(image, dx, dy)
        arrayImageRotationAnimationFactory = AllBinaryArrayImageRotationAnimationFactory.new(image, image.getWidth(), image.getHeight(), ::Org::Allbinary::MathPackage::AngleFactory.getInstance().TOTAL_ANGLE / ::Org::Allbinary::Game::Configuration::GameConfigurationCentral.getInstance().getGameControlFidelity(), ::Org::Allbinary::Animation::AnimationBehaviorFactory.getInstance())
        arrayImageRotationAnimationFactory.initDXY(dx, dy)
        return arrayImageRotationAnimationFactory
    end
    

    # throws Exception
    def self.createFactoryA(image, dx, dy, angleIncrement)
        arrayImageRotationAnimationFactory = AllBinaryArrayImageRotationAnimationFactory.new(image, image.getWidth(), image.getHeight(), angleIncrement, ::Org::Allbinary::Animation::AnimationBehaviorFactory.getInstance())
        arrayImageRotationAnimationFactory.initDXY(dx, dy)
        return arrayImageRotationAnimationFactory
    end
    

    def initialize(image, width, height, angleIncrement, animationBehaviorFactory)
        super(image, ::Org::Allbinary::Logic::MathPackage::PrimitiveIntUtil.getArrayInstance(), width, height, 0, 0, animationBehaviorFactory)
        jfields_org_allbinary_animation_image_AllBinaryArrayImageRotationAnimationFactory
        @angleIncrement = angleIncrement
        self.init()
    end
    

    # throws Exception
    def init()
        self.setImageArray(::Org::Allbinary::Media::Image::ImageToRotationImageArrayUtil.getInstance().generate(self.getImage(), self.getAngleIncrement(), ((::Org::Allbinary::MathPackage::AngleFactory.getInstance().TOTAL_ANGLE).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })))
    end
    java_overload :init, 0
    

    def initDXY(dx, dy)
        @animationFactoryInitializationVisitor.dx = dx
        @animationFactoryInitializationVisitor.dy = dy
        @animationFactoryInitializationVisitor.originalDx = dx
        @animationFactoryInitializationVisitor.originalDy = dy
    end
    java_overload :initDXY, 2
    

    # throws Exception
    def getInstance(instanceId)
        scaledImageArray = Array.new(@imageArray.length, nil)
        size = scaledImageArray.length
        image = self.getImage()
        (0...size).each do |index|
            scaledImageArray[index] = @animationFactoryImageScaleUtil.createImage(image, image.getWidth(), image.getHeight(), @scaleProperties.scaleWidth, @scaleProperties.scaleHeight)
        end
        if @animationFactoryInitializationVisitor.dx != 0 || @animationFactoryInitializationVisitor.dy != 0
            @animationFactoryImageScaleUtil.processAdjust(self)
            return AdjustedImageArrayRotationAnimation.new(scaledImageArray, ::Org::Allbinary::MathPackage::AngleInfo.getInstance((((self.getAngleIncrement()).to_i + 32768) % 65536 - 32768)), ((::Org::Allbinary::MathPackage::AngleFactory.getInstance().TOTAL_ANGLE).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }), @animationFactoryInitializationVisitor.dx, @animationFactoryInitializationVisitor.dy, @animationBehaviorFactory.getOrCreateInstance())
        else
            return ImageArrayRotationAnimation.new(scaledImageArray, ::Org::Allbinary::MathPackage::AngleInfo.getInstance((((self.getAngleIncrement()).to_i + 32768) % 65536 - 32768)), ((::Org::Allbinary::MathPackage::AngleFactory.getInstance().TOTAL_ANGLE).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }), @animationBehaviorFactory.getOrCreateInstance())
        end
    end
    java_overload :getInstance, 1
    

    def setImageArray(imageArray)
        @imageArray = imageArray
    end
    java_overload :setImageArray, 1
    

    def getAngleIncrement()
        return @angleIncrement
    end
    java_overload :getAngleIncrement, 0
end

module ::Javax; module Microedition; module Lcdui; autoload :Image, "javax/microedition/lcdui/Image" unless const_defined?(:Image, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :NullImage, "javax/microedition/lcdui/NullImage" unless const_defined?(:NullImage, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :Animation, "org/allbinary/animation/Animation" unless const_defined?(:Animation, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :AnimationBehaviorFactory, "org/allbinary/animation/AnimationBehaviorFactory" unless const_defined?(:AnimationBehaviorFactory, false); end; end; end
module ::Org; module Allbinary; module Game; module Configuration; autoload :GameConfigurationCentral, "org/allbinary/game/configuration/GameConfigurationCentral" unless const_defined?(:GameConfigurationCentral, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :PrimitiveIntUtil, "org/allbinary/logic/math/PrimitiveIntUtil" unless const_defined?(:PrimitiveIntUtil, false); end; end; end; end
module ::Org; module Allbinary; module MathPackage; autoload :AngleFactory, "org/allbinary/math/AngleFactory" unless const_defined?(:AngleFactory, false); end; end; end
module ::Org; module Allbinary; module MathPackage; autoload :AngleInfo, "org/allbinary/math/AngleInfo" unless const_defined?(:AngleInfo, false); end; end; end
module ::Org; module Allbinary; module Media; module Image; autoload :ImageToRotationImageArrayUtil, "org/allbinary/media/image/ImageToRotationImageArrayUtil" unless const_defined?(:ImageToRotationImageArrayUtil, false); end; end; end; end
autoload :AdjustedImageArrayRotationAnimation, "org/allbinary/animation/image/AdjustedImageArrayRotationAnimation" unless const_defined?(:AdjustedImageArrayRotationAnimation, false)
autoload :ImageArrayRotationAnimation, "org/allbinary/animation/image/ImageArrayRotationAnimation" unless const_defined?(:ImageArrayRotationAnimation, false)

end; end; end; end

