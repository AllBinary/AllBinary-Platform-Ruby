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
require "org/allbinary/game/graphics/hud/BasicHud"

#super.paint(graphics, positionString, currentPostString, offset2, offset);
class PositionWidget < BasicHud
    attr_accessor :position, :positionString

    def initialize_fields
        @position = 0
        @positionString = StringUtil.getInstance().EMPTY_STRING
    end
    

    def initialize(position, location, direction, basicColor)
        super(location, direction, 2, basicColor)
        initialize_fields
        @updateMaxHeight = 10
        @updateMaxWidth = 40
    end
    

    def get()
        return @position
    end
    

    def set(position)
        @position = position
        @positionString = PositionWidget.toString(self.get())
    end
    

    def paint(graphics)
        self.class.superclass.instance_method(:paintString).bind(self).call(graphics, @positionString)
    end
    

    def self.toString(position)
        stringBuffer = StringMaker.new()
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

require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/graphics/color/BasicColor"

