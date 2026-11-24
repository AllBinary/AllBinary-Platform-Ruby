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
# package org.allbinary.game.ag.layer.hud.basic.level

require "java/lang/JavaOverload"
require "org/allbinary/game/graphics/hud/BasicHud"
require "org/allbinary/graphics/paint/PaintableInterface"

module ::Org; module Allbinary; module Game; module Ag; module Layer; module Hud; module Basic; module Level

class LevelHudWidget < ::Org::Allbinary::Game::Graphics::Hud::BasicHud
    include ::Org::Allbinary::Graphics::Paint::PaintableInterface
    attr_accessor :level, :maxlevel, :levelString, :levelNumberCharArray, :levelNumberTotalDigits, :offset, :primitiveLongUtil

    def jfields_org_allbinary_game_ag_layer_hud_basic_level_LevelHudWidget
        @level = nil unless instance_variable_defined?(:@level)
        @maxlevel = nil unless instance_variable_defined?(:@maxlevel)
        @levelString = nil unless instance_variable_defined?(:@levelString)
        @levelNumberCharArray = ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_CHAR_ARRAY
        @levelNumberTotalDigits = 0 unless instance_variable_defined?(:@levelNumberTotalDigits)
        @offset = 0 unless instance_variable_defined?(:@offset)
        @primitiveLongUtil = nil unless instance_variable_defined?(:@primitiveLongUtil)
    end
    

    # throws Exception
    def self.createHud(maxlevel, location, direction)
        return LevelHudWidget.new(maxlevel, location, direction)
    end
    

    def initialize(maxlevel, location, direction)
        super(location, direction, 2, ::Org::Allbinary::Graphics::Color::BasicColorFactory.getInstance().GREY)
        jfields_org_allbinary_game_ag_layer_hud_basic_level_LevelHudWidget
        @primitiveLongUtil = ::Org::Allbinary::Logic::MathPackage::PrimitiveLongUtil.createPowerOfTen(1000)
        _LEVEL = "Lv "
        @levelString = _LEVEL.chars
        @maxlevel = maxlevel
        @level = maxlevel
        self.update()
        @updateMaxHeight = 14
    end
    

    def updateMeasurement(graphics)
        font = graphics.getFont()
        @updateMaxWidth = font.getSize() * 4
        @offset = font.charsWidth(@levelString, 0, @levelString.length) + font.getSize()
        LevelHudWidget.superclass.java_super_method(:updateMeasurement, 1).bind(self).call(graphics)
    end
    java_overload :updateMeasurement, 1
    

    def update()
        @levelNumberCharArray = @primitiveLongUtil.getCharArray(@level)
        @levelNumberTotalDigits = @primitiveLongUtil.getCurrentTotalDigits()
    end
    java_overload :update, 0
    

    def setLevel(level)
        @level = level
        self.update()
    end
    java_overload :setLevel, 1
    

    def nextLevel()
        @level += 1
        self.update()
    end
    java_overload :nextLevel, 0
    

    def previousLevel()
        @level -= 1
        if @level < 0
            @level = 0
        end
        self.update()
    end
    java_overload :previousLevel, 0
    

    def isComplete()
        if @level <= @maxlevel
            return false
        else
            return true
        end
    end
    java_overload :isComplete, 0
    

    def paint(graphics)
        LevelHudWidget.superclass.java_super_method(:paintDX, 8).bind(self).call(graphics, @levelString, 0, @levelString.length, @levelNumberCharArray, 0, @levelNumberTotalDigits, @offset)
    end
    java_overload :paint, 1
    

    def paintThreed(graphics)
    end
    java_overload :paintThreed, 1
end

module ::Javax; module Microedition; module Lcdui; autoload :Font, "javax/microedition/lcdui/Font" unless const_defined?(:Font, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColorFactory, "org/allbinary/graphics/color/BasicColorFactory" unless const_defined?(:BasicColorFactory, false); end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :NullUtil, "org/allbinary/logic/NullUtil" unless const_defined?(:NullUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :PrimitiveLongUtil, "org/allbinary/logic/math/PrimitiveLongUtil" unless const_defined?(:PrimitiveLongUtil, false); end; end; end; end

end; end; end; end; end; end; end; end

