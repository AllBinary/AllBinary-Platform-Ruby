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

class CircleFilledAnimation < ::Org::Allbinary::Animation::Animation
    include ::Org::Allbinary::Graphics::Color::ColorCompositeInterface
    attr_accessor :width, :height

    def jfields_org_allbinary_animation_vector_CircleFilledAnimation
        @width = nil unless instance_variable_defined?(:@width)
        @height = nil unless instance_variable_defined?(:@height)
    end
    

    def initialize(width, height, basicColor)
        super()
        jfields_org_allbinary_animation_vector_CircleFilledAnimation
        @width = width
        @height = height
        self.setBasicColorP(basicColor)
    end
    

    def nextFrame()
    end
    java_overload :nextFrame, 0
    

    def paintXY(graphics, x, y)
        @basicSetColorUtil.setBasicColorP3(graphics, self.getBasicColorP(), self.getColor())
        graphics.fillRect(x, y, @width, @height)
    end
    java_overload :paintXY, 3
    

    def getBasicColorP()
        return CircleFilledAnimation.superclass.java_super_method(:getBasicColorP, 0).bind(self).call()
    end
    java_overload :getBasicColorP, 0
    

    def setBasicColorP(basicColor)
        CircleFilledAnimation.superclass.java_super_method(:setBasicColorP, 1).bind(self).call(basicColor)
    end
    java_overload :setBasicColorP, 1
end

module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end

end; end; end; end

