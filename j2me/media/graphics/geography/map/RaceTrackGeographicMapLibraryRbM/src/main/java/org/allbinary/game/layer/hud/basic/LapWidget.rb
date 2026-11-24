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
require "org/allbinary/game/graphics/hud/BasicHud"

module ::Org; module Allbinary; module Game; module Layer; module Hud; module Basic

class LapWidget < ::Org::Allbinary::Game::Graphics::Hud::BasicHud
    attr_accessor :LAP_STR, :OF_STR, :string

    def jfields_org_allbinary_game_layer_hud_basic_LapWidget
        @LAP_STR = "Lap "
        @OF_STR = " of "
        @string = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
    end
    

    def initialize(location, direction, basicColor)
        super(location, direction, 2, basicColor)
        jfields_org_allbinary_game_layer_hud_basic_LapWidget
        @updateMaxHeight = 15
        @updateMaxWidth = 40
    end
    

    def update(lapInfo)
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.delete(0, stringBuffer.length())
        stringBuffer.append(@LAP_STR)
        stringBuffer.appendint(((lapInfo.getCurrentLap()).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }))
        stringBuffer.append(@OF_STR)
        stringBuffer.appendint(((lapInfo.getTotalLaps()).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }))
        @string = stringBuffer.to_s
    end
    java_overload :update, 1
    

    def paint(graphics)
        LapWidget.superclass.java_super_method(:paintString, 2).bind(self).call(graphics, @string)
    end
    java_overload :paint, 1
end

module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Hud; autoload :LapInfo, "org/allbinary/game/layer/hud/LapInfo" unless const_defined?(:LapInfo, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end

end; end; end; end; end; end

