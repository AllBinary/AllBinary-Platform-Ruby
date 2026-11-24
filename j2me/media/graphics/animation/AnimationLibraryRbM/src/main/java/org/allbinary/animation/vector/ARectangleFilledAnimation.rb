# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.animation.vector

require "java/lang/JavaOverload"
require "org/allbinary/animation/vector/RectangleFilledAnimation"

module ::Org; module Allbinary; module Animation; module Vector

class ARectangleFilledAnimation < RectangleFilledAnimation
    attr_accessor :x, :y

    def jfields_org_allbinary_animation_vector_ARectangleFilledAnimation
        @x = 0 unless instance_variable_defined?(:@x)
        @y = 0 unless instance_variable_defined?(:@y)
    end
    

    def initialize()
        super(0, 0, ::Org::Allbinary::Graphics::Color::BasicColorFactory.getInstance().BLACK)
        jfields_org_allbinary_animation_vector_ARectangleFilledAnimation
    end
    

    def nextFrame()
    end
    java_overload :nextFrame, 0
    

    def paintXY(graphics, unusedX, unusedY)
        ARectangleFilledAnimation.superclass.java_super_method(:paintXY, 3).bind(self).call(graphics, @x, @y)
    end
    java_overload :paintXY, 3
end

module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColorFactory, "org/allbinary/graphics/color/BasicColorFactory" unless const_defined?(:BasicColorFactory, false); end; end; end; end

end; end; end; end

