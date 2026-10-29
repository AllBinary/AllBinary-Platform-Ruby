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
# package org.allbinary.game.paint

# require "javax/microedition/lcdui/Graphics"
require "org/allbinary/graphics/color/ColorCompositeInterface"
require "org/allbinary/graphics/paint/Paintable"

class ColorFillBasePaintable < Paintable
    include ColorCompositeInterface
    attr_accessor :basicColor, :colorP

    def initialize_fields
        @basicColor = BasicColorFactory.getInstance().WHITE
        @colorP = 0
    end
    

    def initialize(basicColor)
        super()
        initialize_fields
        self.setBasicColorP(basicColor)
    end
    

    def setBasicColorP(basicColor)
        @basicColor = basicColor
        self.setColor(self.getBasicColorP().to_i)
    end
    

    def getBasicColorP()
        return @basicColor
    end
    

    def getColor()
        return @colorP
    end
    

    def setColor(color)
        @colorP = color
    end
    

    def paint(graphics)
    end
end

require "org/allbinary/graphics/color/BasicColor"
require "org/allbinary/graphics/color/BasicColorFactory"

