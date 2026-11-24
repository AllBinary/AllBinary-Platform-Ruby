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

class AllBinaryJ2SEImageRotationAnimationFactory < BaseImageAnimationFactory
    attr_accessor :angleIncrementP, :resizeCanvasForRotation

    def jfields_org_allbinary_animation_image_AllBinaryJ2SEImageRotationAnimationFactory
        @angleIncrementP = nil unless instance_variable_defined?(:@angleIncrementP)
        @resizeCanvasForRotation = nil unless instance_variable_defined?(:@resizeCanvasForRotation)
    end
    

    # throws Exception
    def self.createDXY(image, width, height, dx, dy, angleIncrement, animationBehaviorFactory, resizeCanvasForRotation)
        imageRotationAnimationFactory = AllBinaryJ2SEImageRotationAnimationFactory.new(image, width, height, angleIncrement, animationBehaviorFactory, resizeCanvasForRotation)
        imageRotationAnimationFactory.animationFactoryInitializationVisitor.dx = dx
        imageRotationAnimationFactory.animationFactoryInitializationVisitor.dy = dy
        imageRotationAnimationFactory.animationFactoryInitializationVisitor.originalDx = dx
        imageRotationAnimationFactory.animationFactoryInitializationVisitor.originalDy = dy
        return imageRotationAnimationFactory
    end
    

    def initialize(image, width, height, angleIncrement, animationBehaviorFactory, resizeCanvasForRotation)
        super(image, ::Org::Allbinary::Logic::MathPackage::PrimitiveIntUtil.getArrayInstance(), width, height, 0, 0, animationBehaviorFactory)
        jfields_org_allbinary_animation_image_AllBinaryJ2SEImageRotationAnimationFactory
        @angleIncrementP = angleIncrement
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
        imageCopyUtil = ::Org::Allbinary::Media::Image::ImageCopyUtil.getInstance()
        canvasImage = self.getCanvasImage()
        scaledImage = @animationFactoryImageScaleUtil.createImage(canvasImage, @animationFactoryInitializationVisitor.width, @animationFactoryInitializationVisitor.height, @scaleProperties.scaleWidth, @scaleProperties.scaleHeight)
        openGLUtil = ::Org::Allbinary::Graphics::Opengles::OpenGLUtil.getInstance()
        scaledImage = openGLUtil.addImage(scaledImage)
        copyOfScaledImage = imageCopyUtil.createImageForRotation(scaledImage)
        if @animationFactoryInitializationVisitor.dx != 0 || @animationFactoryInitializationVisitor.dy != 0
            @animationFactoryImageScaleUtil.processAdjust(self)
            return AllBinaryAdjustedJ2SEImageRotationAnimation.new(scaledImage, copyOfScaledImage, ::Org::Allbinary::MathPackage::AngleInfo.getInstance(@angleIncrementP), ::Org::Allbinary::MathPackage::AngleFactory.getInstance().TOTAL_ANGLE, @animationFactoryInitializationVisitor.dx, @animationFactoryInitializationVisitor.dy, @animationBehaviorFactory.getOrCreateInstance())
        else
            return AllBinaryJ2SEImageRotationAnimation.new(scaledImage, copyOfScaledImage, ::Org::Allbinary::MathPackage::AngleInfo.getInstance(@angleIncrementP), ::Org::Allbinary::MathPackage::AngleFactory.getInstance().TOTAL_ANGLE, @animationBehaviorFactory.getOrCreateInstance())
        end
    end
    java_overload :getInstance, 1
    

    def getAngleIncrement()
        return @angleIncrementP
    end
    java_overload :getAngleIncrement, 0
end

module ::Javax; module Microedition; module Lcdui; autoload :Image, "javax/microedition/lcdui/Image" unless const_defined?(:Image, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :Animation, "org/allbinary/animation/Animation" unless const_defined?(:Animation, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :AnimationBehaviorFactory, "org/allbinary/animation/AnimationBehaviorFactory" unless const_defined?(:AnimationBehaviorFactory, false); end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :Features, "org/allbinary/game/configuration/feature/Features" unless const_defined?(:Features, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Opengles; autoload :OpenGLFeatureFactory, "org/allbinary/graphics/opengles/OpenGLFeatureFactory" unless const_defined?(:OpenGLFeatureFactory, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Opengles; autoload :OpenGLUtil, "org/allbinary/graphics/opengles/OpenGLUtil" unless const_defined?(:OpenGLUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :PrimitiveIntUtil, "org/allbinary/logic/math/PrimitiveIntUtil" unless const_defined?(:PrimitiveIntUtil, false); end; end; end; end
module ::Org; module Allbinary; module MathPackage; autoload :AngleFactory, "org/allbinary/math/AngleFactory" unless const_defined?(:AngleFactory, false); end; end; end
module ::Org; module Allbinary; module MathPackage; autoload :AngleInfo, "org/allbinary/math/AngleInfo" unless const_defined?(:AngleInfo, false); end; end; end
module ::Org; module Allbinary; module Media; module Image; autoload :ImageCopyUtil, "org/allbinary/media/image/ImageCopyUtil" unless const_defined?(:ImageCopyUtil, false); end; end; end; end
autoload :AllBinaryAdjustedJ2SEImageRotationAnimation, "org/allbinary/animation/image/AllBinaryAdjustedJ2SEImageRotationAnimation" unless const_defined?(:AllBinaryAdjustedJ2SEImageRotationAnimation, false)
autoload :AllBinaryJ2SEImageRotationAnimation, "org/allbinary/animation/image/AllBinaryJ2SEImageRotationAnimation" unless const_defined?(:AllBinaryJ2SEImageRotationAnimation, false)

end; end; end; end

