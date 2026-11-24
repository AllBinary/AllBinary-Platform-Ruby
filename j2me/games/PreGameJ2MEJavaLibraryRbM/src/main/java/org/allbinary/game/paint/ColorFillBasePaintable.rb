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

require "java/lang/JavaOverload"
require "org/allbinary/graphics/color/ColorCompositeInterface"
require "org/allbinary/graphics/paint/Paintable"

module ::Org; module Allbinary; module Game; module Paint

class ColorFillBasePaintable < ::Org::Allbinary::Graphics::Paint::Paintable
    include ::Org::Allbinary::Graphics::Color::ColorCompositeInterface
    attr_accessor :basicColor, :colorP

    def jfields_org_allbinary_game_paint_ColorFillBasePaintable
        @basicColor = ::Org::Allbinary::Graphics::Color::BasicColorFactory.getInstance().WHITE
        @colorP = 0 unless instance_variable_defined?(:@colorP)
    end
    

    def initialize(basicColor)
        super()
        jfields_org_allbinary_game_paint_ColorFillBasePaintable
        self.setBasicColorP(basicColor)
    end
    

    def setBasicColorP(basicColor)
        @basicColor = basicColor
        self.setColor(self.getBasicColorP().to_i)
    end
    java_overload :setBasicColorP, 1
    

    def getBasicColorP()
        return @basicColor
    end
    java_overload :getBasicColorP, 0
    

    def getColor()
        return @colorP
    end
    java_overload :getColor, 0
    

    def setColor(color)
        @colorP = color
    end
    java_overload :setColor, 1
    

    def paint(graphics)
    end
    java_overload :paint, 1
end

module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColorFactory, "org/allbinary/graphics/color/BasicColorFactory" unless const_defined?(:BasicColorFactory, false); end; end; end; end

end; end; end; end

