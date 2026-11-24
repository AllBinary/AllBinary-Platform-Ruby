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

class ImageRotationAnimationFactory < BaseImageAnimationFactory
    attr_accessor :angleIncrement

    def jfields_org_allbinary_animation_image_ImageRotationAnimationFactory
        @angleIncrement = nil unless instance_variable_defined?(:@angleIncrement)
    end
    

    def initialize(image, width, height, dx, dy, angleIncrement, animationBehaviorFactory)
        super(image, ::Org::Allbinary::Logic::MathPackage::PrimitiveIntUtil.getArrayInstance(), width, height, 0, 0, animationBehaviorFactory)
        jfields_org_allbinary_animation_image_ImageRotationAnimationFactory
        @angleIncrement = angleIncrement
        @animationFactoryInitializationVisitor.dx = dx
        @animationFactoryInitializationVisitor.dy = dy
    end
    

    # throws Exception
    def getInstance(instanceId)
        if @animationFactoryInitializationVisitor.dx != 0 || @animationFactoryInitializationVisitor.dy != 0
            @animationFactoryImageScaleUtil.processAdjust(self)
            return AdjustedImageBaseRotationAnimation.new(self.getImage(), ::Org::Allbinary::MathPackage::AngleInfo.getInstance(@angleIncrement), ::Org::Allbinary::MathPackage::AngleFactory.getInstance().TOTAL_ANGLE, @animationFactoryInitializationVisitor.dx, @animationFactoryInitializationVisitor.dy, @animationBehaviorFactory.getOrCreateInstance())
        else
            return ImageBaseRotationAnimation.new(self.getImage(), ::Org::Allbinary::MathPackage::AngleInfo.getInstance(@angleIncrement), ::Org::Allbinary::MathPackage::AngleFactory.getInstance().TOTAL_ANGLE, @animationBehaviorFactory.getOrCreateInstance())
        end
    end
    java_overload :getInstance, 1
    

    def getAngleIncrementP()
        return @angleIncrement
    end
    java_overload :getAngleIncrementP, 0
end

module ::Javax; module Microedition; module Lcdui; autoload :Image, "javax/microedition/lcdui/Image" unless const_defined?(:Image, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :Animation, "org/allbinary/animation/Animation" unless const_defined?(:Animation, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :AnimationBehaviorFactory, "org/allbinary/animation/AnimationBehaviorFactory" unless const_defined?(:AnimationBehaviorFactory, false); end; end; end
module ::Org; module Allbinary; module Game; module Configuration; autoload :GameConfigurationCentral, "org/allbinary/game/configuration/GameConfigurationCentral" unless const_defined?(:GameConfigurationCentral, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :PrimitiveIntUtil, "org/allbinary/logic/math/PrimitiveIntUtil" unless const_defined?(:PrimitiveIntUtil, false); end; end; end; end
module ::Org; module Allbinary; module MathPackage; autoload :AngleFactory, "org/allbinary/math/AngleFactory" unless const_defined?(:AngleFactory, false); end; end; end
module ::Org; module Allbinary; module MathPackage; autoload :AngleInfo, "org/allbinary/math/AngleInfo" unless const_defined?(:AngleInfo, false); end; end; end
autoload :AdjustedImageBaseRotationAnimation, "org/allbinary/animation/image/AdjustedImageBaseRotationAnimation" unless const_defined?(:AdjustedImageBaseRotationAnimation, false)
autoload :ImageBaseRotationAnimation, "org/allbinary/animation/image/ImageBaseRotationAnimation" unless const_defined?(:ImageBaseRotationAnimation, false)

end; end; end; end

