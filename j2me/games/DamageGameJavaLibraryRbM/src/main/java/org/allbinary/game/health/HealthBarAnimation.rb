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

require "org/allbinary/animation/Animation"

class HealthBarAnimation < Animation
    attr_accessor :basicColorFactory, :x2, :thickness, :location, :allbinaryLayer

    def initialize_fields
        @basicColorFactory = BasicColorFactory.getInstance()
        @x2 = 0
        @thickness = 0
        @location = nil
        @allbinaryLayer = nil
    end
    

    def initialize(layerInterface, location)
        super()
        initialize_fields
        @allbinaryLayer = layerInterface
        @location = location
        basicHudFactory = BasicHudFactory.getInstance()
        if @location != basicHudFactory.TOPLEFT && @location != basicHudFactory.BOTTOMLEFT
            raise StandardError.new("Location Not Valid")
        end
        if layerInterface.getWidth() > 40
            @thickness = 3
        elsif layerInterface.getWidth() > 20
            @thickness = 2
        else
            @thickness = 1
        end
    end
    

    def onHealthChange(newX2)
        @x2 = newX2
        quarter = (@allbinaryLayer.getWidth() >> 2)
        if @x2 > quarter * 3
            @basicColor = @basicColorFactory.GREEN
            @colorP = @basicColor.to_i
        elsif @x2 > quarter * 2
            @basicColor = @basicColorFactory.YELLOW
            @colorP = @basicColor.to_i
        elsif @x2 > quarter
            @basicColor = @basicColorFactory.ORANGE
            @colorP = @basicColor.to_i
        else
            @basicColor = @basicColorFactory.RED
            @colorP = @basicColor.to_i
        end
    end
    

    def getY()
        basicHudFactory = BasicHudFactory.getInstance()
        if @location == basicHudFactory.TOPLEFT
            return @allbinaryLayer.getViewPosition().getY() - 4
        elsif @location == basicHudFactory.BOTTOMLEFT
            return @allbinaryLayer.getViewPosition().getY2() + 4
        end
        return -1
    end
end

require "org/allbinary/game/graphics/hud/BasicHudFactory"
require "org/allbinary/graphics/color/BasicColorFactory"
require "org/allbinary/layer/AllBinaryLayer"

