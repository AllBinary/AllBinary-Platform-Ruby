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
require "org/allbinary/animation/Animation"
require "org/allbinary/graphics/color/ColorCompositeInterface"

module ::Org; module Allbinary; module Animation; module Vector

class RectangleAdjustedAnimation < ::Org::Allbinary::Animation::Animation
    include ::Org::Allbinary::Graphics::Color::ColorCompositeInterface
    attr_accessor :width, :height, :offsetX, :offsetY

    def jfields_org_allbinary_animation_vector_RectangleAdjustedAnimation
        @width = nil unless instance_variable_defined?(:@width)
        @height = nil unless instance_variable_defined?(:@height)
        @offsetX = nil unless instance_variable_defined?(:@offsetX)
        @offsetY = nil unless instance_variable_defined?(:@offsetY)
    end
    

    def initialize(width, height, offsetX, offsetY, basicColor)
        super()
        jfields_org_allbinary_animation_vector_RectangleAdjustedAnimation
        @width = width
        @height = height
        @offsetX = offsetX
        @offsetY = offsetY
        self.setBasicColorP(basicColor)
    end
    

    def nextFrame()
    end
    java_overload :nextFrame, 0
    

    def paintXY(graphics, x, y)
        @basicSetColorUtil.setBasicColorP3(graphics, self.getBasicColorP(), self.getColor())
        graphics.drawRect(x + @offsetX, y + @offsetY, @width, @height)
    end
    java_overload :paintXY, 3
    

    def setWidth(width)
        @width = width
    end
    java_overload :setWidth, 1
    

    def setHeight(height)
        @height = height
    end
    java_overload :setHeight, 1
    

    def setOffsetX(offsetX)
        @offsetX = offsetX
    end
    java_overload :setOffsetX, 1
    

    def setOffsetY(offsetY)
        @offsetY = offsetY
    end
    java_overload :setOffsetY, 1
    

    def getBasicColorP()
        return RectangleAdjustedAnimation.superclass.java_super_method(:getBasicColorP, 0).bind(self).call()
    end
    java_overload :getBasicColorP, 0
    

    def setBasicColorP(basicColor)
        RectangleAdjustedAnimation.superclass.java_super_method(:setBasicColorP, 1).bind(self).call(basicColor)
    end
    java_overload :setBasicColorP, 1
end

module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end

end; end; end; end

