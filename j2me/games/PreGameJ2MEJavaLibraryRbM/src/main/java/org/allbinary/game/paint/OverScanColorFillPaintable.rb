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
require "org/allbinary/game/paint/ColorFillPaintable"

class OverScanColorFillPaintable < ColorFillPaintable
    

    def initialize(basicColor)
        super(basicColor)
    end
    

    def paint(graphics)
        graphics.setColor(@colorP)
        graphics.fillRect(-graphics.getClipX(), -graphics.getClipY(), @displayInfoSingleton.getLastWidth() + (graphics.getClipX() * 2), @displayInfoSingleton.getLastHeight() + (graphics.getClipY() * 2))
    end
end

require "org/allbinary/graphics/color/BasicColor"

