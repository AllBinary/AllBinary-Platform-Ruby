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

class LinePathAnimation
    

    def self.getInstance()
        return LinePathAnimation.instance
    end
    

    def paint(graphics, point, nextPoint, tiledLayer)
        graphics.drawLine(nextPoint.getX(), nextPoint.getY(), point.getX(), point.getY())
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/graphics/GPoint"
require "org/allbinary/layer/Layer"

class LinePathAnimation
    @@instance = LinePathAnimation.new()
end

