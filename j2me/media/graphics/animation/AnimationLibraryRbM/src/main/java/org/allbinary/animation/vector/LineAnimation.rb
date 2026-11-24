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
require "org/allbinary/layer/PositionInterface"

module ::Org; module Allbinary; module Animation; module Vector

class LineAnimation < ::Org::Allbinary::Animation::Animation
    include ::Org::Allbinary::Graphics::Color::ColorCompositeInterface
    include ::Org::Allbinary::Layer::PositionInterface
    attr_accessor :newLine, :tempLine, :line

    def jfields_org_allbinary_animation_vector_LineAnimation
        @newLine = Array.new(2) { Array.new(2, 0) }
        @tempLine = ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_INT_ARRAY_ARRAY
        @line = Array.new(2) { Array.new(2, 0) }
    end
    

    def initialize(basicColor)
        super()
        jfields_org_allbinary_animation_vector_LineAnimation
        self.setBasicColorP(basicColor)
    end
    

    def init(x, y)
        @newLine[0][0] = x
        @newLine[0][1] = y
        @newLine[1][0] = x
        @newLine[1][1] = y
        @tempLine = @line
        @line = @newLine
        @newLine = @tempLine
    end
    java_overload :init, 2
    

    def setPosition(x, y, z)
        @newLine[0][0] = @line[1][0]
        @newLine[0][1] = @line[1][1]
        @newLine[1][0] = x
        @newLine[1][1] = y
        @tempLine = @line
        @line = @newLine
        @newLine = @tempLine
    end
    java_overload :setPosition, 3
    

    def paintXY(graphics, x, y)
        currentLine = @line
        @basicSetColorUtil.setBasicColorP3(graphics, self.getBasicColorP(), self.getColor())
        graphics.drawLine(currentLine[0][0], currentLine[0][1], currentLine[1][0], currentLine[1][1])
    end
    java_overload :paintXY, 3
    

    def nextFrame()
    end
    java_overload :nextFrame, 0
    

    def getBasicColorP()
        return LineAnimation.superclass.java_super_method(:getBasicColorP, 0).bind(self).call()
    end
    java_overload :getBasicColorP, 0
    

    def setBasicColorP(basicColor)
        LineAnimation.superclass.java_super_method(:setBasicColorP, 1).bind(self).call(basicColor)
    end
    java_overload :setBasicColorP, 1
end

module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :NullUtil, "org/allbinary/logic/NullUtil" unless const_defined?(:NullUtil, false); end; end; end

end; end; end; end

