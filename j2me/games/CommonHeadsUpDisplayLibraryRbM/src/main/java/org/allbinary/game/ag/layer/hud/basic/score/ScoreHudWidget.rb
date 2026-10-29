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
# package org.allbinary.game.ag.layer.hud.basic.score

# require "javax/microedition/lcdui/Font"
# require "javax/microedition/lcdui/Graphics"
require "org/allbinary/game/ag/layer/hud/basic/NumberStringHud"

class ScoreHudWidget < NumberStringHud
    

    # throws Exception
    def self.getInstance(maxscore, location, direction)
        return ScoreHudWidget.new(maxscore, location, direction, 2, BasicColorFactory.getInstance().GREY)
    end
    

    def initialize(maxscore, location, direction, bufferZone, basicColor)
        super("Pts ", maxscore, location, direction, bufferZone, basicColor)
        @updateMaxHeight = 14
    end
    

    def updateMeasurement(graphics)
        font = graphics.getFont()
        @updateMaxWidth = font.getSize() * 5
        super(graphics)
    end
end

require "org/allbinary/graphics/color/BasicColor"
require "org/allbinary/graphics/color/BasicColorFactory"

