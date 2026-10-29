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
# package org.allbinary.game.ag.layer.hud.basic.health

# require "javax/microedition/lcdui/Graphics"
require "org/allbinary/game/graphics/hud/BasicHud"
require "org/allbinary/game/health/HealthListenerInterface"
require "org/allbinary/graphics/paint/PaintableInterface"

class HealthHudWidget < BasicHud
    include PaintableInterface
    include HealthListenerInterface
    attr_accessor :healthScale, :animationInterface, :healthInterface, :max, :xArray, :gameTickTimeDelayHelper, :timeDelayHelper, :slowBeatTimeDelayHelper, :mediumBeatTimeDelayHelper, :fastBeatTimeDelayHelper

    def initialize_fields
        @healthScale = nil
        @animationInterface = nil
        @healthInterface = nil
        @max = 0
        @xArray = nil
        @gameTickTimeDelayHelper = GameTickTimeDelayHelperFactory.getInstance()
        @timeDelayHelper = NoTimeDelayHelper::SINGLETON
        @slowBeatTimeDelayHelper = TimeDelayHelper.new(1280)
        @mediumBeatTimeDelayHelper = TimeDelayHelper.new(640)
        @fastBeatTimeDelayHelper = TimeDelayHelper.new(320)
    end
    

    def initialize(animationInterface, healthInterface, location, direction)
        super(location, direction, 2, BasicColorFactory.getInstance().WHITE)
        initialize_fields
        @animationInterface = animationInterface
        @healthInterface = healthInterface
        @healthInterface.addListener(self)
        @healthScale = (@healthInterface.getMaxHealth() / 6) + 1
        self.onHealthChange()
        @updateMaxWidth = healthInterface.getMaxHealth() * 16
        @updateMaxHeight = 16
        @xArray = Array.new(30, 0)
        self.update()
    end
    

    def update()
        if @xArray != nil
            (0...@xArray.length).each do |index|
                @xArray[index] = self.getX() + (index * 16)
            end
        end
    end
    

    def setX(x)
        super(x)
        self.update()
    end
    

    def onHealthChange()
        @max = (@healthInterface.getHealth() / @healthScale)
        @timeDelayHelper = NoTimeDelayHelper::SINGLETON
        if @max <= 1 && @healthInterface.isAlive()
            @max = 1
            if @healthScale - @healthInterface.getHealth() > (@healthScale * 2) / 3
                @timeDelayHelper = @slowBeatTimeDelayHelper
            elsif @healthScale - @healthInterface.getHealth() > @healthScale / 3
                @timeDelayHelper = @mediumBeatTimeDelayHelper
            else
                @timeDelayHelper = @fastBeatTimeDelayHelper
            end
        end
    end
    

    def paint(graphics)
        @myFontProcessor.process(graphics)
        (0...@max).each do |index|
            if @timeDelayHelper.isTime(@gameTickTimeDelayHelper.startTime)
                @animationInterface.paintXY(graphics, @xArray[index], self.getY())
            end
        end
    end
    

    def paintThreed(graphics)
    end
end

require "org/allbinary/animation/Animation"
require "org/allbinary/game/health/Health"
require "org/allbinary/graphics/color/BasicColorFactory"
require "org/allbinary/time/GameTickTimeDelayHelper"
require "org/allbinary/time/GameTickTimeDelayHelperFactory"
require "org/allbinary/time/NoTimeDelayHelper"
require "org/allbinary/time/TimeDelayHelper"

