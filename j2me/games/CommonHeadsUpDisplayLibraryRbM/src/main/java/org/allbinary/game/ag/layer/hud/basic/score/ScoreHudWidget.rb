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
# package org.allbinary.game.ag.layer.hud.basic.score

require "java/lang/JavaOverload"
require "org/allbinary/game/ag/layer/hud/basic/NumberStringHud"

module ::Org; module Allbinary; module Game; module Ag; module Layer; module Hud; module Basic; module Score

class ScoreHudWidget < ::Org::Allbinary::Game::Ag::Layer::Hud::Basic::NumberStringHud
    

    # throws Exception
    def self.getInstance(maxscore, location, direction)
        return ScoreHudWidget.new(maxscore, location, direction, 2, ::Org::Allbinary::Graphics::Color::BasicColorFactory.getInstance().GREY)
    end
    

    def initialize(maxscore, location, direction, bufferZone, basicColor)
        super("Pts ", maxscore, location, direction, bufferZone, basicColor)
        @updateMaxHeight = 14
    end
    

    def updateMeasurement(graphics)
        font = graphics.getFont()
        @updateMaxWidth = font.getSize() * 5
        ScoreHudWidget.superclass.java_super_method(:updateMeasurement, 1).bind(self).call(graphics)
    end
    java_overload :updateMeasurement, 1
end

module ::Javax; module Microedition; module Lcdui; autoload :Font, "javax/microedition/lcdui/Font" unless const_defined?(:Font, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColorFactory, "org/allbinary/graphics/color/BasicColorFactory" unless const_defined?(:BasicColorFactory, false); end; end; end; end

end; end; end; end; end; end; end; end

