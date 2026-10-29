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

class LapWidget < BasicHud
    attr_accessor :LAP_STR, :OF_STR, :string

    def initialize_fields
        @LAP_STR = "Lap "
        @OF_STR = " of "
        @string = StringUtil.getInstance().EMPTY_STRING
    end
    

    def initialize(location, direction, basicColor)
        super(location, direction, 2, basicColor)
        initialize_fields
        @updateMaxHeight = 15
        @updateMaxWidth = 40
    end
    

    def update(lapInfo)
        stringBuffer = StringMaker.new()
        stringBuffer.delete(0, stringBuffer.length())
        stringBuffer.append(@LAP_STR)
        stringBuffer.appendint((lapInfo.getCurrentLap()).to_i)
        stringBuffer.append(@OF_STR)
        stringBuffer.appendint((lapInfo.getTotalLaps()).to_i)
        @string = stringBuffer.to_s
    end
    

    def paint(graphics)
        self.class.superclass.instance_method(:paintString).bind(self).call(graphics, @string)
    end
end

require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/game/layer/hud/LapInfo"
require "org/allbinary/graphics/color/BasicColor"

