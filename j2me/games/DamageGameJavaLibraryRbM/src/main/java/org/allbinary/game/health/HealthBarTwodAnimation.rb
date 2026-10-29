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
# package org.allbinary.game.health

# require "javax/microedition/lcdui/Graphics"
require "org/allbinary/game/health/HealthBarAnimation"

class HealthBarTwodAnimation < HealthBarAnimation
    

    def initialize(layerInterface, location)
        super(layerInterface, location)
    end
    

    def paintXY(graphics, x, y)
        ax = @allbinaryLayer.getViewPosition().getX()
        @basicSetColorUtil.setBasicColorP3(graphics, @basicColor, @colorP)
        graphics.fillRect(ax, self.getY() - 1, @x2, @thickness)
    end
end

require "org/allbinary/layer/AllBinaryLayer"

