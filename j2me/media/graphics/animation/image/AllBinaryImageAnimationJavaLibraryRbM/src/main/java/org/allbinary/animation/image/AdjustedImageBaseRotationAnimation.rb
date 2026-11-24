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
require "org/allbinary/animation/image/ImageBaseRotationAnimation"

module ::Org; module Allbinary; module Animation; module Image

class AdjustedImageBaseRotationAnimation < ImageBaseRotationAnimation
    attr_accessor :dx, :dy

    def jfields_org_allbinary_animation_image_AdjustedImageBaseRotationAnimation
        @dx = 0 unless instance_variable_defined?(:@dx)
        @dy = 0 unless instance_variable_defined?(:@dy)
    end
    

    def initialize(image, angleInfo, totalAngle, dx, dy, animationBehavior)
        super(image, angleInfo, totalAngle, animationBehavior)
        jfields_org_allbinary_animation_image_AdjustedImageBaseRotationAnimation
        self.init(dx, dy)
    end
    

    # throws Exception
    def init(dx, dy)
        @dx = dx
        @dy = dy
    end
    java_overload :init, 2
    

    def paintXY(graphics, x, y)
        AdjustedImageBaseRotationAnimation.superclass.java_super_method(:paintXY, 3).bind(self).call(graphics, x + @dx, y + @dy)
    end
    java_overload :paintXY, 3
end

module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Image, "javax/microedition/lcdui/Image" unless const_defined?(:Image, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :AnimationBehavior, "org/allbinary/animation/AnimationBehavior" unless const_defined?(:AnimationBehavior, false); end; end; end
module ::Org; module Allbinary; module MathPackage; autoload :AngleInfo, "org/allbinary/math/AngleInfo" unless const_defined?(:AngleInfo, false); end; end; end

end; end; end; end

