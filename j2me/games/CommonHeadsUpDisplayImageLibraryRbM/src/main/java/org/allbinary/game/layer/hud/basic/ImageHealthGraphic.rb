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
# package org.allbinary.game.layer.hud.basic

# require "javax/microedition/lcdui/Graphics"
# require "javax/microedition/lcdui/Image"

class ImageHealthGraphic < HealthGraphic
    attr_accessor :image

    def initialize_fields
        @image = nil
    end
    

    def initialize(animationInterface, healthInterface, location, direction)
        super(animationInterface, healthInterface, location, direction)
        initialize_fields
        @image = Array.new(@healthInterface.getMaxHealth(), nil)
        imageCacheFactory = ImageCacheFactory.getInstance()
        (0..@max).each do |numOfHealth|
            @image[numOfHealth] = imageCacheFactory.get(self, numOfHealth + 1 * 10, 10)
        end
        (0..@max).each do |numOfHealth|
            (0...numOfHealth).each do |index|
                @animationInterface.paint(@image[numOfHealth].getGraphics(), numOfHealth * 10, 0)
            end
        end
    end
    

    def paint(graphics)
        graphics.drawImage(@image[@max], @x, @y, Anchor::TOP_LEFT)
    end
end

require "org/allbinary/animation/AnimationInterface"
require "org/allbinary/game/health/HealthInterface"
require "org/allbinary/graphics/Anchor"
require "org/allbinary/image/ImageCacheFactory"

