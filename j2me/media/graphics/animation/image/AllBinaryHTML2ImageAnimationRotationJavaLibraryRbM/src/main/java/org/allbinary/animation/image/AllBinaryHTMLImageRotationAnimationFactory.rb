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

class AllBinaryHTMLImageRotationAnimationFactory < BaseImageAnimationFactory
    attr_accessor :angleIncrement

    def jfields_org_allbinary_animation_image_AllBinaryHTMLImageRotationAnimationFactory
        @angleIncrement = nil unless instance_variable_defined?(:@angleIncrement)
    end
    

    # throws Exception
    def self.createFactoryADXY(image, width, height, dx, dy, angleIncrement, animationBehaviorFactory)
        htmlImageRotationAnimationFactory = AllBinaryHTMLImageRotationAnimationFactory.new(image, width, height, angleIncrement, animationBehaviorFactory)
        htmlImageRotationAnimationFactory.init(dx, dy)
        return htmlImageRotationAnimationFactory
    end
    

    def initialize(image, width, height, angleIncrement, animationBehaviorFactory)
        super(image, ::Org::Allbinary::Logic::MathPackage::PrimitiveIntUtil.getArrayInstance(), width, height, 0, 0, animationBehaviorFactory)
        jfields_org_allbinary_animation_image_AllBinaryHTMLImageRotationAnimationFactory
        @angleIncrement = angleIncrement
    end
    

    def init(dx, dy)
        @animationFactoryInitializationVisitor.dx = dx
        @animationFactoryInitializationVisitor.dy = dy
        @animationFactoryInitializationVisitor.originalDx = dx
        @animationFactoryInitializationVisitor.originalDy = dy
    end
    java_overload :init, 2
    

    # throws Exception
    def getInstance(instanceId)
        scaledImage = @animationFactoryImageScaleUtil.createImage(self.getImage(), @animationFactoryInitializationVisitor.width, @animationFactoryInitializationVisitor.height, @scaleProperties.scaleWidth, @scaleProperties.scaleHeight)
        copyOfScaledImage = ::Org::Allbinary::Media::Image::ImageCopyUtil.getInstance().createImage(scaledImage)
        if @animationFactoryInitializationVisitor.dx != 0 || @animationFactoryInitializationVisitor.dy != 0
            @animationFactoryImageScaleUtil.processAdjust(self)
            return AllBinaryAdjustedHTMLImageRotationAnimation.new(scaledImage, copyOfScaledImage, ::Org::Allbinary::MathPackage::AngleInfo.getInstance(self.getAngleIncrement()), ::Org::Allbinary::MathPackage::AngleFactory.getInstance().TOTAL_ANGLE, @animationFactoryInitializationVisitor.dx, @animationFactoryInitializationVisitor.dy, @animationBehaviorFactory.getOrCreateInstance())
        else
            return AllBinaryHTMLImageRotationAnimation.new(scaledImage, copyOfScaledImage, ::Org::Allbinary::MathPackage::AngleInfo.getInstance(@angleIncrement), ::Org::Allbinary::MathPackage::AngleFactory.getInstance().TOTAL_ANGLE, @animationBehaviorFactory.getOrCreateInstance())
        end
    end
    java_overload :getInstance, 1
    

    def getAngleIncrement()
        return @angleIncrement
    end
    java_overload :getAngleIncrement, 0
end

module ::Javax; module Microedition; module Lcdui; autoload :Image, "javax/microedition/lcdui/Image" unless const_defined?(:Image, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :Animation, "org/allbinary/animation/Animation" unless const_defined?(:Animation, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :AnimationBehaviorFactory, "org/allbinary/animation/AnimationBehaviorFactory" unless const_defined?(:AnimationBehaviorFactory, false); end; end; end
module ::Org; module Allbinary; module Game; module Configuration; autoload :GameConfigurationCentral, "org/allbinary/game/configuration/GameConfigurationCentral" unless const_defined?(:GameConfigurationCentral, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :PrimitiveIntUtil, "org/allbinary/logic/math/PrimitiveIntUtil" unless const_defined?(:PrimitiveIntUtil, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Image; autoload :ImageCopyUtil, "org/allbinary/media/image/ImageCopyUtil" unless const_defined?(:ImageCopyUtil, false); end; end; end; end
module ::Org; module Allbinary; module MathPackage; autoload :AngleFactory, "org/allbinary/math/AngleFactory" unless const_defined?(:AngleFactory, false); end; end; end
module ::Org; module Allbinary; module MathPackage; autoload :AngleInfo, "org/allbinary/math/AngleInfo" unless const_defined?(:AngleInfo, false); end; end; end
autoload :AllBinaryAdjustedHTMLImageRotationAnimation, "org/allbinary/animation/image/AllBinaryAdjustedHTMLImageRotationAnimation" unless const_defined?(:AllBinaryAdjustedHTMLImageRotationAnimation, false)
autoload :AllBinaryHTMLImageRotationAnimation, "org/allbinary/animation/image/AllBinaryHTMLImageRotationAnimation" unless const_defined?(:AllBinaryHTMLImageRotationAnimation, false)

end; end; end; end

