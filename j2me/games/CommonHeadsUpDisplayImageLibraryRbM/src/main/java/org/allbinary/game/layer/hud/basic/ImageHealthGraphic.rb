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

require "java/lang/JavaOverload"

module ::Org; module Allbinary; module Game; module Layer; module Hud; module Basic

class ImageHealthGraphic < HealthGraphic
    attr_accessor :image

    def jfields_org_allbinary_game_layer_hud_basic_ImageHealthGraphic
        @image = nil unless instance_variable_defined?(:@image)
    end
    

    def initialize(animationInterface, healthInterface, location, direction)
        super(animationInterface, healthInterface, location, direction)
        jfields_org_allbinary_game_layer_hud_basic_ImageHealthGraphic
        @image = Array.new(@healthInterface.getMaxHealth(), nil)
        imageCacheFactory = ::Org::Allbinary::Image::ImageCacheFactory.getInstance()
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
        graphics.drawImage(@image[@max], @x, @y, ::Org::Allbinary::Graphics::Anchor::TOP_LEFT)
    end
    java_overload :paint, 1
end

module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Image, "javax/microedition/lcdui/Image" unless const_defined?(:Image, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :AnimationInterface, "org/allbinary/animation/AnimationInterface" unless const_defined?(:AnimationInterface, false); end; end; end
module ::Org; module Allbinary; module Game; module Health; autoload :HealthInterface, "org/allbinary/game/health/HealthInterface" unless const_defined?(:HealthInterface, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; autoload :Anchor, "org/allbinary/graphics/Anchor" unless const_defined?(:Anchor, false); end; end; end
module ::Org; module Allbinary; module Image; autoload :ImageCacheFactory, "org/allbinary/image/ImageCacheFactory" unless const_defined?(:ImageCacheFactory, false); end; end; end

end; end; end; end; end; end

