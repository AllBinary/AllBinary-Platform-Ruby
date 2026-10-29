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
require "org/allbinary/graphics/paint/Paintable"
require "org/allbinary/game/health/HealthListenerInterface"

class HealthBar < Paintable
    include HealthListenerInterface
    attr_accessor :animationInterface, :healthInterface, :allbinaryLayer

    def initialize_fields
        @animationInterface = nil
        @healthInterface = nil
        @allbinaryLayer = nil
    end
    

    def initialize(layerInterface, healthInterface, animationInterface, direction)
        super()
        initialize_fields
        @allbinaryLayer = layerInterface
        @animationInterface = animationInterface
        @healthInterface = healthInterface
        @healthInterface.addListener(self)
        self.onHealthChange()
    end
    

    def onHealthChange()
        @animationInterface.onHealthChange(@healthInterface.getHealth() * @allbinaryLayer.getWidth() / @healthInterface.getMaxHealth())
    end
    

    def paint(graphics)
        @animationInterface.paintXY(graphics, 0, 0)
    end
    

    def paintThreed(graphics)
        @animationInterface.paintThreedXYZ(graphics, 0, 0, 0)
    end
end

require "org/allbinary/layer/AllBinaryLayer"
require "org/allbinary/game/health/Health"
require "org/allbinary/game/health/HealthBarAnimation"
require "org/allbinary/game/health/HealthInterface"

