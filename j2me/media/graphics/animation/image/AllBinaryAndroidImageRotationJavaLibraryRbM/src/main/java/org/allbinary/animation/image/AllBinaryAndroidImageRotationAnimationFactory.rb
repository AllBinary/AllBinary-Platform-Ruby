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

class AllBinaryAndroidImageRotationAnimationFactory < BaseImageAnimationFactory
    attr_accessor :angleIncrement, :resizeCanvasForRotation

    def jfields_org_allbinary_animation_image_AllBinaryAndroidImageRotationAnimationFactory
        @angleIncrement = nil unless instance_variable_defined?(:@angleIncrement)
        @resizeCanvasForRotation = nil unless instance_variable_defined?(:@resizeCanvasForRotation)
    end
    

    # throws Exception
    def self.createFactory(image, width, height, animationBehaviorFactory)
        return AllBinaryAndroidImageRotationAnimationFactory.new(image, width, height, (((((::Org::Allbinary::MathPackage::AngleFactory.getInstance().TOTAL_ANGLE / ::Org::Allbinary::Game::Configuration::GameConfigurationCentral.getInstance().getGameControlFidelity())).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }) + 32768) % 65536 - 32768), animationBehaviorFactory, false)
    end
    

    # throws Exception
    def self.createFactoryA(image, width, height, angleIncrement, animationBehaviorFactory)
        return AllBinaryAndroidImageRotationAnimationFactory.new(image, width, height, angleIncrement, animationBehaviorFactory, false)
    end
    

    # throws Exception
    def self.createFactoryU(image, animationBehaviorFactory)
        androidImageRotationAnimationFactory = AllBinaryAndroidImageRotationAnimationFactory.new(image, image.getWidth(), image.getHeight(), (((((::Org::Allbinary::MathPackage::AngleFactory.getInstance().TOTAL_ANGLE / ::Org::Allbinary::Game::Configuration::GameConfigurationCentral.getInstance().getGameControlFidelity())).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }) + 32768) % 65536 - 32768), animationBehaviorFactory, false)
        androidImageRotationAnimationFactory.init(-image.getWidth() >> 2, -image.getHeight() >> 2)
        return androidImageRotationAnimationFactory
    end
    

    # throws Exception
    def self.createFactoryDXYU(image, dx, dy, animationBehaviorFactory)
        androidImageRotationAnimationFactory = AllBinaryAndroidImageRotationAnimationFactory.new(image, image.getWidth(), image.getHeight(), (((((::Org::Allbinary::MathPackage::AngleFactory.getInstance().TOTAL_ANGLE / ::Org::Allbinary::Game::Configuration::GameConfigurationCentral.getInstance().getGameControlFidelity())).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }) + 32768) % 65536 - 32768), animationBehaviorFactory, false)
        androidImageRotationAnimationFactory.init(dx, dy)
        return androidImageRotationAnimationFactory
    end
    

    # throws Exception
    def self.createFactoryADXY(image, width, height, dx, dy, angleIncrement, animationBehaviorFactory, resizeCanvasForRotation)
        androidImageRotationAnimationFactory = AllBinaryAndroidImageRotationAnimationFactory.new(image, width, height, angleIncrement, animationBehaviorFactory, resizeCanvasForRotation)
        androidImageRotationAnimationFactory.init(dx, dy)
        return androidImageRotationAnimationFactory
    end
    

    def init(dx, dy)
        @animationFactoryInitializationVisitor.dx = dx
        @animationFactoryInitializationVisitor.dy = dy
        @animationFactoryInitializationVisitor.originalDx = dx
        @animationFactoryInitializationVisitor.originalDy = dy
    end
    java_overload :init, 2
    

    def initialize(image, width, height, angleIncrement, animationBehaviorFactory, resizeCanvasForRotation)
        super(image, ::Org::Allbinary::Logic::MathPackage::PrimitiveIntUtil.getArrayInstance(), width, height, 0, 0, animationBehaviorFactory)
        jfields_org_allbinary_animation_image_AllBinaryAndroidImageRotationAnimationFactory
        @angleIncrement = angleIncrement
        @resizeCanvasForRotation = resizeCanvasForRotation
    end
    

    # throws Exception
    def getCanvasImage()
        features = ::Org::Allbinary::Game::Configuration::Feature::Features.getInstance()
        if @resizeCanvasForRotation && !features.isDefault(::Org::Allbinary::Graphics::Opengles::OpenGLFeatureFactory.getInstance().OPENGL)
            return ::Org::Allbinary::Media::Image::ImageCopyUtil.getInstance().createImageScale(self.getImage(), 1.44, false)
        else
            return self.getImage()
        end
    end
    java_overload :getCanvasImage, 0
    

    # throws Exception
    def getInstance(instanceId)
        canvasImage = self.getCanvasImage()
        scaledImage = @animationFactoryImageScaleUtil.createImage(canvasImage, @animationFactoryInitializationVisitor.width, @animationFactoryInitializationVisitor.height, @scaleProperties.scaleWidth, @scaleProperties.scaleHeight)
        copyOfScaledImage = ::Org::Allbinary::Media::Image::ImageCopyUtil.getInstance().createImage(scaledImage)
        if @animationFactoryInitializationVisitor.dx != 0 || @animationFactoryInitializationVisitor.dy != 0
            @animationFactoryImageScaleUtil.processAdjust(self)
            return AllBinaryAdjustedAndroidImageRotationAnimation.new(scaledImage, copyOfScaledImage, ::Org::Allbinary::MathPackage::AngleInfo.getInstance(@angleIncrement), ::Org::Allbinary::MathPackage::AngleFactory.getInstance().TOTAL_ANGLE, @animationFactoryInitializationVisitor.dx, @animationFactoryInitializationVisitor.dy, @animationBehaviorFactory.getOrCreateInstance())
        else
            return AllBinaryFlickerAndroidImageRotationAnimation.new(scaledImage, copyOfScaledImage, ::Org::Allbinary::MathPackage::AngleInfo.getInstance(@angleIncrement), ::Org::Allbinary::MathPackage::AngleFactory.getInstance().TOTAL_ANGLE, @animationBehaviorFactory.getOrCreateInstance())
        end
    end
    java_overload :getInstance, 1
end

module ::Javax; module Microedition; module Lcdui; autoload :Image, "javax/microedition/lcdui/Image" unless const_defined?(:Image, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :Animation, "org/allbinary/animation/Animation" unless const_defined?(:Animation, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :AnimationBehaviorFactory, "org/allbinary/animation/AnimationBehaviorFactory" unless const_defined?(:AnimationBehaviorFactory, false); end; end; end
module ::Org; module Allbinary; module Game; module Configuration; autoload :GameConfigurationCentral, "org/allbinary/game/configuration/GameConfigurationCentral" unless const_defined?(:GameConfigurationCentral, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :Features, "org/allbinary/game/configuration/feature/Features" unless const_defined?(:Features, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Opengles; autoload :OpenGLFeatureFactory, "org/allbinary/graphics/opengles/OpenGLFeatureFactory" unless const_defined?(:OpenGLFeatureFactory, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :PrimitiveIntUtil, "org/allbinary/logic/math/PrimitiveIntUtil" unless const_defined?(:PrimitiveIntUtil, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Image; autoload :ImageCopyUtil, "org/allbinary/media/image/ImageCopyUtil" unless const_defined?(:ImageCopyUtil, false); end; end; end; end
module ::Org; module Allbinary; module MathPackage; autoload :AngleFactory, "org/allbinary/math/AngleFactory" unless const_defined?(:AngleFactory, false); end; end; end
module ::Org; module Allbinary; module MathPackage; autoload :AngleInfo, "org/allbinary/math/AngleInfo" unless const_defined?(:AngleInfo, false); end; end; end
autoload :AllBinaryAdjustedAndroidImageRotationAnimation, "org/allbinary/animation/image/AllBinaryAdjustedAndroidImageRotationAnimation" unless const_defined?(:AllBinaryAdjustedAndroidImageRotationAnimation, false)
autoload :AllBinaryFlickerAndroidImageRotationAnimation, "org/allbinary/animation/image/AllBinaryFlickerAndroidImageRotationAnimation" unless const_defined?(:AllBinaryFlickerAndroidImageRotationAnimation, false)

end; end; end; end

