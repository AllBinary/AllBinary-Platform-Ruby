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
# package org.allbinary.animation

require "java/lang/JavaOverload"
require "org/allbinary/animation/VectorAnimation"

module ::Org; module Allbinary; module Animation

class AdjustedVectorAnimation < VectorAnimation
    attr_accessor :dx, :dy

    def jfields_org_allbinary_animation_AdjustedVectorAnimation
        @dx = nil unless instance_variable_defined?(:@dx)
        @dy = nil unless instance_variable_defined?(:@dy)
    end
    

    def initialize(currentPoints, basicColor, dx, dy, animationBehavior)
        super(currentPoints, basicColor, animationBehavior)
        jfields_org_allbinary_animation_AdjustedVectorAnimation
        @dx = dx
        @dy = dy
    end
    

    def paintXY(graphics, x, y)
        AdjustedVectorAnimation.superclass.java_super_method(:paintXY, 3).bind(self).call(graphics, x + @dx, y + @dy)
    end
    java_overload :paintXY, 3
end

module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end
autoload :AnimationBehavior, "org/allbinary/animation/AnimationBehavior" unless const_defined?(:AnimationBehavior, false)

end; end; end

