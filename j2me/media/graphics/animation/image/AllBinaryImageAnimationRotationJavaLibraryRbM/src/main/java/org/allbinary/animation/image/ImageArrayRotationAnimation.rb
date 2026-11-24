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
require "org/allbinary/animation/image/ImageArrayBaseRotationAnimation"

module ::Org; module Allbinary; module Animation; module Image

class ImageArrayRotationAnimation < ImageArrayBaseRotationAnimation
    attr_accessor :expectedTotalFrames

    def jfields_org_allbinary_animation_image_ImageArrayRotationAnimation
        @expectedTotalFrames = 0 unless instance_variable_defined?(:@expectedTotalFrames)
    end
    

    # throws Exception
    def self.createAnimation(anyType, animationBehavior)
        imageRotationAnimationInfo = anyType
        return ImageArrayRotationAnimation.new(imageRotationAnimationInfo.getImageArray(), imageRotationAnimationInfo.getAngleInfoP(), imageRotationAnimationInfo.getTotalAngle(), animationBehavior)
    end
    

    def initialize(imageArray, angleInfo, totalAngle, animationBehavior)
        super(imageArray, angleInfo, animationBehavior)
        jfields_org_allbinary_animation_image_ImageArrayRotationAnimation
        self.initImageArray(imageArray, angleInfo, totalAngle)
    end
    

    # throws Exception
    def initImageArray(imageArray, angleInfo, totalAngle)
        @expectedTotalFrames = totalAngle / @angleInfo.getAngleIncrementInfo().getAngleIncrement()
        @angleInfo.adjustAngle(0)
        if @expectedTotalFrames != self.getSize()
            raise StandardError.new("Wrong Number of Frames")
        end
    end
    java_overload :initImageArray, 3
    

    def setImageArray(imageArray)
        ImageArrayRotationAnimation.superclass.java_super_method(:setImageArray, 1).bind(self).call(imageArray)
        @angleInfo.adjustAngle(0)
    end
    java_overload :setImageArray, 1
end

module ::Javax; module Microedition; module Lcdui; autoload :Image, "javax/microedition/lcdui/Image" unless const_defined?(:Image, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :AnimationBehavior, "org/allbinary/animation/AnimationBehavior" unless const_defined?(:AnimationBehavior, false); end; end; end
module ::Org; module Allbinary; module MathPackage; autoload :AngleInfo, "org/allbinary/math/AngleInfo" unless const_defined?(:AngleInfo, false); end; end; end
autoload :ImageArrayRotationAnimationInfo, "org/allbinary/animation/image/ImageArrayRotationAnimationInfo" unless const_defined?(:ImageArrayRotationAnimationInfo, false)

end; end; end; end

