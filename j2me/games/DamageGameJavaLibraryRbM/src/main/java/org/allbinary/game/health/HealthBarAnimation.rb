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

require "java/lang/JavaOverload"
require "org/allbinary/animation/Animation"

module ::Org; module Allbinary; module Game; module Health

class HealthBarAnimation < ::Org::Allbinary::Animation::Animation
    attr_accessor :basicColorFactory, :x2, :thickness, :location, :allbinaryLayer

    def jfields_org_allbinary_game_health_HealthBarAnimation
        @basicColorFactory = ::Org::Allbinary::Graphics::Color::BasicColorFactory.getInstance()
        @x2 = 0 unless instance_variable_defined?(:@x2)
        @thickness = 0 unless instance_variable_defined?(:@thickness)
        @location = nil unless instance_variable_defined?(:@location)
        @allbinaryLayer = nil unless instance_variable_defined?(:@allbinaryLayer)
    end
    

    def initialize(layerInterface, location)
        super()
        jfields_org_allbinary_game_health_HealthBarAnimation
        @allbinaryLayer = layerInterface
        @location = location
        basicHudFactory = ::Org::Allbinary::Game::Graphics::Hud::BasicHudFactory.getInstance()
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
    java_overload :onHealthChange, 1
    

    def getY()
        basicHudFactory = ::Org::Allbinary::Game::Graphics::Hud::BasicHudFactory.getInstance()
        if @location == basicHudFactory.TOPLEFT
            return @allbinaryLayer.getViewPosition().getY() - 4
        elsif @location == basicHudFactory.BOTTOMLEFT
            return @allbinaryLayer.getViewPosition().getY2() + 4
        end
        return -1
    end
    java_overload :getY, 0
end

module ::Org; module Allbinary; module Game; module Graphics; module Hud; autoload :BasicHudFactory, "org/allbinary/game/graphics/hud/BasicHudFactory" unless const_defined?(:BasicHudFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColorFactory, "org/allbinary/graphics/color/BasicColorFactory" unless const_defined?(:BasicColorFactory, false); end; end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end

end; end; end; end

