# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
# package org.allbinary.game.layer

# require "javax/microedition/lcdui/Graphics"
require "org/allbinary/game/layer/LinePathAnimation"

class LinePathRelativeAnimation < LinePathAnimation
    

    def self.getInstance()
        return LinePathRelativeAnimation.instanceC
    end
    

    def paint(graphics, point, nextPoint, tiledLayer)
        graphics.drawLine(nextPoint.getX() - tiledLayer.getXP(), nextPoint.getY() - tiledLayer.getYP(), point.getX() - tiledLayer.getXP(), point.getY() - tiledLayer.getYP())
    end

    def self.instanceC()
        return defined?(@@instanceC) ? @@instanceC : nil
    end

    def self.instanceC=(value)
        @@instanceC = value
    end
end

require "org/allbinary/graphics/GPoint"
require "org/allbinary/layer/Layer"

class LinePathRelativeAnimation
    @@instanceC = LinePathRelativeAnimation.new()
end

