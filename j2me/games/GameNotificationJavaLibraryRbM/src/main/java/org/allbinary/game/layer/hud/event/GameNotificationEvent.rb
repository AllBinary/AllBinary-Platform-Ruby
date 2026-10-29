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
# package org.allbinary.game.layer.hud.event

require "org/allbinary/logic/util/event/AllBinaryEventObject"

class GameNotificationEvent < AllBinaryEventObject
    attr_accessor :string, :seconds, :basicColor, :removeable

    def initialize_fields
        @string = StringUtil.getInstance().EMPTY_STRING
        @seconds = nil
        @basicColor = BasicColorFactory.getInstance().BLACK
        @removeable = nil
    end
    

    def initialize(anyType, string, seconds, basicColor, permanent)
        super(anyType)
        initialize_fields
        self.setString(string)
        @seconds = seconds
        self.setBasicColorP(basicColor)
        @removeable = permanent
    end
    

    def getString()
        return @string
    end
    

    def getSeconds()
        return @seconds
    end
    

    def getBasicColorP()
        return @basicColor
    end
    

    def getPermanent()
        return @removeable
    end
    

    def setString(string)
        @string = string
    end
    

    def setBasicColorP(basicColor)
        @basicColor = basicColor
    end
end

require "org/allbinary/graphics/color/BasicColor"
require "org/allbinary/graphics/color/BasicColorFactory"
require "org/allbinary/logic/string/StringUtil"

