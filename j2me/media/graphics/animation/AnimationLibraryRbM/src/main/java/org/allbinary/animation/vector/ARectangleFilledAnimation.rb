# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.animation.vector

# require "javax/microedition/lcdui/Graphics"
require "org/allbinary/animation/vector/RectangleFilledAnimation"

class ARectangleFilledAnimation < RectangleFilledAnimation
    attr_accessor :x, :y

    def initialize_fields
        @x = 0
        @y = 0
    end
    

    def initialize()
        super(0, 0, BasicColorFactory.getInstance().BLACK)
        initialize_fields
    end
    

    def nextFrame()
    end
    

    def paintXY(graphics, unusedX, unusedY)
        super(graphics, @x, @y)
    end
end

require "org/allbinary/graphics/color/BasicColorFactory"

