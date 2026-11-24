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
# package org.allbinary.animation.vector

require "java/lang/JavaOverload"
require "org/allbinary/graphics/color/ColorCompositeInterface"
require "org/allbinary/animation/vector/RectangleFilledAnimation"

module ::Org; module Allbinary; module Animation; module Vector

class RectangleFilledAdjustedAnimation < RectangleFilledAnimation
    include ::Org::Allbinary::Graphics::Color::ColorCompositeInterface
    attr_accessor :offsetX, :offsetY

    def jfields_org_allbinary_animation_vector_RectangleFilledAdjustedAnimation
        @offsetX = nil unless instance_variable_defined?(:@offsetX)
        @offsetY = nil unless instance_variable_defined?(:@offsetY)
    end
    

    def initialize(width, height, offsetX, offsetY, basicColor)
        super(width, height, basicColor)
        jfields_org_allbinary_animation_vector_RectangleFilledAdjustedAnimation
        @offsetX = offsetX
        @offsetY = offsetY
        self.setBasicColorP(basicColor)
    end
    

    def nextFrame()
    end
    java_overload :nextFrame, 0
    

    def paintXY(graphics, x, y)
        @basicSetColorUtil.setBasicColorP3(graphics, self.getBasicColorP(), self.getColor())
        RectangleFilledAdjustedAnimation.superclass.java_super_method(:paintXY, 3).bind(self).call(graphics, x + @offsetX, y + @offsetY)
    end
    java_overload :paintXY, 3
    

    def setOffsetX(offsetX)
        @offsetX = offsetX
    end
    java_overload :setOffsetX, 1
    

    def setOffsetY(offsetY)
        @offsetY = offsetY
    end
    java_overload :setOffsetY, 1
    

    def getBasicColorP()
        return RectangleFilledAdjustedAnimation.superclass.java_super_method(:getBasicColorP, 0).bind(self).call()
    end
    java_overload :getBasicColorP, 0
    

    def setBasicColorP(basicColor)
        RectangleFilledAdjustedAnimation.superclass.java_super_method(:setBasicColorP, 1).bind(self).call(basicColor)
    end
    java_overload :setBasicColorP, 1
end

module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end

end; end; end; end

