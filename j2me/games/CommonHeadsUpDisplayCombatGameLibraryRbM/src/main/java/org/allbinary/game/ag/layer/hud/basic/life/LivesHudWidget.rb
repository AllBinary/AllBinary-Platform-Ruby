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
# package org.allbinary.game.ag.layer.hud.basic.life

# require "javax/microedition/lcdui/Graphics"
require "org/allbinary/game/graphics/hud/BasicHud"
require "org/allbinary/graphics/paint/PaintableInterface"

class LivesHudWidget < BasicHud
    include PaintableInterface
    attr_accessor :lifeInterface, :xArray, :animationInterface

    def initialize_fields
        @lifeInterface = nil
        @xArray = nil
        @animationInterface = nil
    end
    

    def initialize(animationInterface, lifeInterface, location, direction)
        super(location, direction, 2, BasicColorFactory.getInstance().WHITE)
        initialize_fields
        @lifeInterface = lifeInterface
        size = (self.getLifeInterface().getMaxlives()).to_i
        @xArray = Array.new(size, 0)
        @animationInterface = animationInterface
        @updateMaxWidth = @lifeInterface.getMaxlives() * 16
        @updateMaxHeight = 16
    end
    

    def updateMeasurement(graphics)
        super(graphics)
        maxLives = (self.getLifeInterface().getMaxlives()).to_i
        (0...maxLives).each do |index|
            @xArray[index] = self.getX() + (index * 16)
        end
    end
    

    def onDisplayChangeEvent(displayChangeEvent)
        super(displayChangeEvent)
        @myFontProcessor = @updateMyFontProcessor
    end
    

    def setX(x)
        super(x)
        @myFontProcessor = @updateMyFontProcessor
    end
    

    def paint(graphics)
        @myFontProcessor.process(graphics)
        index = (self.getLifeInterface().get()).to_i
        while (index -= 1) >= 0
            @animationInterface.paintXY(graphics, @xArray[index], self.getY())
        end
    end
    

    def paintThreed(graphics)
    end
    

    def getLifeInterface()
        return @lifeInterface
    end
end

require "org/allbinary/animation/Animation"
require "org/allbinary/game/ag/life/Life"
require "org/allbinary/graphics/color/BasicColorFactory"
require "org/allbinary/graphics/displayable/event/DisplayChangeEvent"

