# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
# package org.allbinary.animation.text

require "java/lang/JavaOverload"
require "org/allbinary/animation/text/CustomTextAnimation"

module ::Org; module Allbinary; module Animation; module Text

class AdjustCustomTextAnimation < CustomTextAnimation
    attr_accessor :dx, :dy

    def jfields_org_allbinary_animation_text_AdjustCustomTextAnimation
        @dx = nil unless instance_variable_defined?(:@dx)
        @dy = nil unless instance_variable_defined?(:@dy)
    end
    

    def initialize(text, fontSize, dx, dy, animationBehavior)
        super(text, fontSize, animationBehavior)
        jfields_org_allbinary_animation_text_AdjustCustomTextAnimation
        @dx = dx
        @dy = dy
    end
    

    def getDx()
        return @dx
    end
    java_overload :getDx, 0
    

    def setDx(dx)
        @dx = dx
    end
    java_overload :setDx, 1
    

    def getDy()
        return @dy
    end
    java_overload :getDy, 0
    

    def setDy(dy)
        @dy = dy
    end
    java_overload :setDy, 1
    

    def paintXY(graphics, x, y)
        AdjustCustomTextAnimation.superclass.java_super_method(:paintXY, 3).bind(self).call(graphics, x + @dx, y + @dy)
    end
    java_overload :paintXY, 3
end

module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :AnimationBehavior, "org/allbinary/animation/AnimationBehavior" unless const_defined?(:AnimationBehavior, false); end; end; end

end; end; end; end

