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
require "org/allbinary/game/paint/ColorFillBasePaintable"

module ::Org; module Allbinary; module Game; module Paint

class ColorFillPaintable < ColorFillBasePaintable
    attr_accessor :displayInfoSingleton

    def jfields_org_allbinary_game_paint_ColorFillPaintable
        @displayInfoSingleton = ::Org::Allbinary::Graphics::Displayable::DisplayInfoSingleton.getInstance()
    end
    

    def initialize(basicColor)
        super(basicColor)
        jfields_org_allbinary_game_paint_ColorFillPaintable
    end
    

    def paint(graphics)
        graphics.setColor(@colorP)
        graphics.fillRect(0, 0, @displayInfoSingleton.getLastWidth(), @displayInfoSingleton.getLastHeight())
    end
    java_overload :paint, 1
end

module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Displayable; autoload :DisplayInfoSingleton, "org/allbinary/graphics/displayable/DisplayInfoSingleton" unless const_defined?(:DisplayInfoSingleton, false); end; end; end; end

end; end; end; end

