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

#super.paint(graphics, positionString, currentPostString, offset2, offset);
class PositionWidget < ::Org::Allbinary::Game::Graphics::Hud::BasicHud
    attr_accessor :position, :positionString

    def jfields_org_allbinary_game_layer_hud_basic_PositionWidget
        @position = 0 unless instance_variable_defined?(:@position)
        @positionString = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
    end
    

    def initialize(position, location, direction, basicColor)
        super(location, direction, 2, basicColor)
        jfields_org_allbinary_game_layer_hud_basic_PositionWidget
        @updateMaxHeight = 10
        @updateMaxWidth = 40
    end
    

    def get()
        return @position
    end
    java_overload :get, 0
    

    def set(position)
        @position = position
        @positionString = PositionWidget.toString(self.get())
    end
    java_overload :set, 1
    

    def paint(graphics)
        PositionWidget.superclass.java_super_method(:paintString, 2).bind(self).call(graphics, @positionString)
    end
    java_overload :paint, 1
    

    def self.toString(position)
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append((position).to_s)
        if position == 1
            stringBuffer.append("st")
        elsif position == 2
            stringBuffer.append("nd")
        elsif position == 3
            stringBuffer.append("rd")
        else
            stringBuffer.append("th")
        end
        return stringBuffer.to_s
    end
end

module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end

end; end; end; end; end; end

