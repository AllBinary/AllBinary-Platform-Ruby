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

# require "javax/microedition/lcdui/Font"
# require "javax/microedition/lcdui/Graphics"
require "org/allbinary/game/layer/SelectionHudPaintable"

class MultiSelectPaintable < SelectionHudPaintable
    attr_accessor :rootNameList, :totalCharArray, :rootNamesString, :TOTAL, :backgroundColor, :totalWidth, :textLine2Y

    def initialize_fields
        @rootNameList = BasicArrayListD.new()
        @totalCharArray = NullUtil.getInstance().NULL_CHAR_ARRAY
        @rootNamesString = StringUtil.getInstance().EMPTY_STRING
        @TOTAL = "Total Selected: "
        @backgroundColor = BasicColorFactory.getInstance().GREY.to_i
        @totalWidth = 0
        @textLine2Y = 0
    end
    

    def initialize()
        super()
        initialize_fields
    end
    

    def updateMeasurement(graphics)
        super(graphics)
        font = graphics.getFont()
        @totalWidth = font.stringWidth(@TOTAL)
        @textLine2Y = (@y + font.getHeight())
    end
    

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
        _COMMA_SEP = CommonSeps.getInstance().COMMA_SEP
        stringBuffer = StringMaker.new()
        (@rootNameList.size() - 1).step(0, -(1)) do |index|
            rootName = @rootNameList.get(index)
            stringBuffer.append(rootName)
            if index != 0
                stringBuffer.append(_COMMA_SEP)
            end
        end
        @rootNamesString = stringBuffer.to_s
    end
    

    def clear()
        @rootNameList.clear()
    end
    

    def paint(graphics)
        graphics.setColor(@backgroundColor)
        graphics.drawRect(self.getX(), @y, self.getWidth(), self.getHeight())
        graphics.setColor(self.getColor())
        graphics.drawString(@TOTAL, @textX, @y, 0)
        graphics.drawChars(@totalCharArray, 0, self.getPrimitiveLongUtil().getCurrentTotalDigits(), @textX + @totalWidth, @y, 0)
        graphics.drawString(@rootNamesString, @textX, @textLine2Y, 0)
    end
end

require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/string/CommonSeps"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/graphics/color/BasicColorFactory"
require "org/allbinary/logic/NullUtil"
require "org/allbinary/game/layer/RTSLayer"

