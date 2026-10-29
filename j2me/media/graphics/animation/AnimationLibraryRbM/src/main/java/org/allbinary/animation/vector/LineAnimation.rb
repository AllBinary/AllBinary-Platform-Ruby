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

# require "javax/microedition/lcdui/Graphics"
require "org/allbinary/animation/Animation"
require "org/allbinary/graphics/color/ColorCompositeInterface"
require "org/allbinary/layer/PositionInterface"

class LineAnimation < Animation
    include ColorCompositeInterface
    include PositionInterface
    attr_accessor :newLine, :tempLine, :line

    def initialize_fields
        @newLine = Array.new(2) { Array.new(2, 0) }
        @tempLine = NullUtil.getInstance().NULL_INT_ARRAY_ARRAY
        @line = Array.new(2) { Array.new(2, 0) }
    end
    

    def initialize(basicColor)
        super()
        initialize_fields
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
    

    def setPosition(x, y, z)
        @newLine[0][0] = @line[1][0]
        @newLine[0][1] = @line[1][1]
        @newLine[1][0] = x
        @newLine[1][1] = y
        @tempLine = @line
        @line = @newLine
        @newLine = @tempLine
    end
    

    def paintXY(graphics, x, y)
        currentLine = @line
        @basicSetColorUtil.setBasicColorP3(graphics, self.getBasicColorP(), self.getColor())
        graphics.drawLine(currentLine[0][0], currentLine[0][1], currentLine[1][0], currentLine[1][1])
    end
    

    def nextFrame()
    end
end

require "org/allbinary/graphics/color/BasicColor"
require "org/allbinary/logic/NullUtil"

