# 
# AllBinary Open License Version 1 
# Copyright (c) 2003 AllBinary 
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
# package org.allbinary.game.layer

require "java/lang/JavaOverload"
require "org/allbinary/game/layer/SelectionHudPaintable"

module ::Org; module Allbinary; module Game; module Layer

class MultiSelectPaintable < SelectionHudPaintable
    attr_accessor :rootNameList, :totalCharArray, :rootNamesString, :TOTAL, :backgroundColor, :totalWidth, :textLine2Y

    def jfields_org_allbinary_game_layer_MultiSelectPaintable
        @rootNameList = ::Org::Allbinary::Util::BasicArrayListD.new()
        @totalCharArray = ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_CHAR_ARRAY
        @rootNamesString = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
        @TOTAL = "Total Selected: "
        @backgroundColor = ::Org::Allbinary::Graphics::Color::BasicColorFactory.getInstance().GREY.to_i
        @totalWidth = 0 unless instance_variable_defined?(:@totalWidth)
        @textLine2Y = 0 unless instance_variable_defined?(:@textLine2Y)
    end
    

    def initialize()
        super()
        jfields_org_allbinary_game_layer_MultiSelectPaintable
    end
    

    def updateMeasurement(graphics)
        MultiSelectPaintable.superclass.java_super_method(:updateMeasurement, 1).bind(self).call(graphics)
        font = graphics.getFont()
        @totalWidth = font.stringWidth(@TOTAL)
        @textLine2Y = (@y + font.getHeight())
    end
    java_overload :updateMeasurement, 1
    

    def update(list)
        self.clear()
        size = list.size()
        @totalCharArray = self.getPrimitiveLongUtil().getCharArray(size)
        (list.size() - 1).step(0, -(1)) do |index|
            rtsLayer = list.get(index)
            if !@rootNameList.contains(rtsLayer.getRootName())
                @rootNameList.add(rtsLayer.getRootName())
            end
        end
        _COMMA_SEP = ::Org::Allbinary::StringPackage::CommonSeps.getInstance().COMMA_SEP
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        (@rootNameList.size() - 1).step(0, -(1)) do |index|
            rootName = @rootNameList.get(index)
            stringBuffer.append(rootName)
            if index != 0
                stringBuffer.append(_COMMA_SEP)
            end
        end
        @rootNamesString = stringBuffer.to_s
    end
    java_overload :update, 1
    

    def clear()
        @rootNameList.clear()
    end
    java_overload :clear, 0
    

    def paint(graphics)
        graphics.setColor(@backgroundColor)
        graphics.drawRect(self.getX(), @y, self.getWidth(), self.getHeight())
        graphics.setColor(self.getColor())
        graphics.drawString(@TOTAL, @textX, @y, 0)
        graphics.drawChars(@totalCharArray, 0, self.getPrimitiveLongUtil().getCurrentTotalDigits(), @textX + @totalWidth, @y, 0)
        graphics.drawString(@rootNamesString, @textX, @textLine2Y, 0)
    end
    java_overload :paint, 1
end

module ::Javax; module Microedition; module Lcdui; autoload :Font, "javax/microedition/lcdui/Font" unless const_defined?(:Font, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColorFactory, "org/allbinary/graphics/color/BasicColorFactory" unless const_defined?(:BasicColorFactory, false); end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :NullUtil, "org/allbinary/logic/NullUtil" unless const_defined?(:NullUtil, false); end; end; end
autoload :RTSLayer, "org/allbinary/game/layer/RTSLayer" unless const_defined?(:RTSLayer, false)

end; end; end; end

