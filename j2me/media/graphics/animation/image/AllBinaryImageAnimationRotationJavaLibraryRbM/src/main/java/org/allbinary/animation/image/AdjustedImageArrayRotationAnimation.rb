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
require "org/allbinary/animation/image/ImageArrayRotationAnimation"

module ::Org; module Allbinary; module Animation; module Image

#TWB - Adjustments should be done in the resource creation and not at the animation level
class AdjustedImageArrayRotationAnimation < ImageArrayRotationAnimation
    attr_accessor :dx, :dy

    def jfields_org_allbinary_animation_image_AdjustedImageArrayRotationAnimation
        @dx = 0 unless instance_variable_defined?(:@dx)
        @dy = 0 unless instance_variable_defined?(:@dy)
    end
    

    # throws Exception
    def self.createAdjustedImageArrayRotationAnimationInfo(anyType, animationBehavior)
        imageRotationAnimationInfo = anyType
        return AdjustedImageArrayRotationAnimation.new(imageRotationAnimationInfo.getImageArray(), imageRotationAnimationInfo.getAngleInfoP(), imageRotationAnimationInfo.getTotalAngle(), imageRotationAnimationInfo.getDx(), imageRotationAnimationInfo.getDy(), animationBehavior)
    end
    

    # throws Exception
    def self.createAnimation(imageArray, angleInfo, totalAngle, animationBehavior)
        return AdjustedImageArrayRotationAnimation.new(imageArray, angleInfo, totalAngle, -imageArray[0].getWidth() >> 2, -imageArray[0].getHeight() >> 2, animationBehavior)
    end
    

    def initialize(imageArray, angleInfo, totalAngle, dx, dy, animationBehavior)
        super(imageArray, angleInfo, totalAngle, animationBehavior)
        jfields_org_allbinary_animation_image_AdjustedImageArrayRotationAnimation
        self.init(dx, dy)
    end
    

    # throws Exception
    def init(dx, dy)
        self.setDx(dx)
        self.setDy(dy)
    end
    java_overload :init, 2
    

    def paintXY(graphics, x, y)
        AdjustedImageArrayRotationAnimation.superclass.java_super_method(:paintXY, 3).bind(self).call(graphics, x + @dx, y + @dy)
    end
    java_overload :paintXY, 3
    

    def setDx(dx)
        @dx = dx
    end
    java_overload :setDx, 1
    

    def getDx()
        return @dx
    end
    java_overload :getDx, 0
    

    def setDy(dy)
        @dy = dy
    end
    java_overload :setDy, 1
    

    def getDy()
        return @dy
    end
    java_overload :getDy, 0
end

module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Image, "javax/microedition/lcdui/Image" unless const_defined?(:Image, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :AnimationBehavior, "org/allbinary/animation/AnimationBehavior" unless const_defined?(:AnimationBehavior, false); end; end; end
module ::Org; module Allbinary; module MathPackage; autoload :AngleInfo, "org/allbinary/math/AngleInfo" unless const_defined?(:AngleInfo, false); end; end; end
autoload :ImageArrayRotationAnimationInfo, "org/allbinary/animation/image/ImageArrayRotationAnimationInfo" unless const_defined?(:ImageArrayRotationAnimationInfo, false)

end; end; end; end

