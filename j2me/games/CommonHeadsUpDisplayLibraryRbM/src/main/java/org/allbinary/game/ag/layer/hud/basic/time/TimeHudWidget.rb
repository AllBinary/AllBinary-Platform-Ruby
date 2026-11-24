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
# package org.allbinary.game.ag.layer.hud.basic.time

require "java/lang/JavaOverload"
require "org/allbinary/game/graphics/hud/BasicHud"

module ::Org; module Allbinary; module Game; module Ag; module Layer; module Hud; module Basic; module TimePackage

class TimeHudWidget < ::Org::Allbinary::Game::Graphics::Hud::BasicHud
    attr_accessor :TIME_STRING, :TIME_CHAR_ARRAY, :offset, :string, :totalDigits, :timer

    def jfields_org_allbinary_game_ag_layer_hud_basic_time_TimeHudWidget
        @TIME_STRING = "Time "
        @TIME_CHAR_ARRAY = ["T", "i", "m", "e", " "]
        @offset = 0 unless instance_variable_defined?(:@offset)
        @string = ::Org::Allbinary::Logic::MathPackage::PrimitiveLongSingleton.getInstance().ZERO
        @totalDigits = 1
        @timer = nil unless instance_variable_defined?(:@timer)
    end
    

    # throws Exception
    def self.getInstance(location, direction, basicColor, timer)
        return TimeHudWidget.new(location, direction, 2, basicColor, timer)
    end
    

    def initialize(location, direction, bufferZone, basicColor, timer)
        super(location, direction, bufferZone, basicColor)
        jfields_org_allbinary_game_ag_layer_hud_basic_time_TimeHudWidget
        @timer = timer
        self.set()
        @updateMaxHeight = 14
    end
    

    def updateMeasurement(graphics)
        font = graphics.getFont()
        @updateMaxWidth = font.getSize() * 5
        @offset = font.stringWidth(@TIME_STRING) + ::Org::Allbinary::Graphics::Font::MyFontProcessor.defaultStringWidth(font, 3)
        TimeHudWidget.superclass.java_super_method(:updateMeasurement, 1).bind(self).call(graphics)
    end
    java_overload :updateMeasurement, 1
    

    def update()
        @timer.update()
        self.set()
    end
    java_overload :update, 0
    

    def set()
        @string = @timer.getTimeChars()
        @totalDigits = @timer.getCurrentTotalDigits()
    end
    java_overload :set, 0
    

    def getTimer()
        return @timer
    end
    java_overload :getTimer, 0
    

    def paint(graphics)
        TimeHudWidget.superclass.java_super_method(:paintDX, 8).bind(self).call(graphics, @TIME_CHAR_ARRAY, 0, @TIME_CHAR_ARRAY.length, @string, 0, @totalDigits, @offset)
    end
    java_overload :paint, 1
end

module ::Javax; module Microedition; module Lcdui; autoload :Font, "javax/microedition/lcdui/Font" unless const_defined?(:Font, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Font; autoload :MyFontProcessor, "org/allbinary/graphics/font/MyFontProcessor" unless const_defined?(:MyFontProcessor, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :PrimitiveLongSingleton, "org/allbinary/logic/math/PrimitiveLongSingleton" unless const_defined?(:PrimitiveLongSingleton, false); end; end; end; end
autoload :HudTimer, "org/allbinary/game/ag/layer/hud/basic/time/HudTimer" unless const_defined?(:HudTimer, false)

end; end; end; end; end; end; end; end

