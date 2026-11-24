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
require "org/allbinary/game/paint/ColorFillPaintable"

module ::Org; module Allbinary; module Game; module Paint

class OverScanColorFillPaintable < ColorFillPaintable
    

    def initialize(basicColor)
        super(basicColor)
    end
    

    def paint(graphics)
        graphics.setColor(@colorP)
        graphics.fillRect(-graphics.getClipX(), -graphics.getClipY(), @displayInfoSingleton.getLastWidth() + (graphics.getClipX() * 2), @displayInfoSingleton.getLastHeight() + (graphics.getClipY() * 2))
    end
    java_overload :paint, 1
end

module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end

end; end; end; end

