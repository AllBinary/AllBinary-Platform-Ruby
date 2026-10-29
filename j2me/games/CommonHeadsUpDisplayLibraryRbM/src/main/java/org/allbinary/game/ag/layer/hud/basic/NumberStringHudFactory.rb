# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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
# package org.allbinary.game.ag.layer.hud.basic


class NumberStringHudFactory
    attr_accessor :NULL_NUMBER_STRING_HUD

    def initialize_fields
        @NULL_NUMBER_STRING_HUD = self.createHud()
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        if NumberStringHudFactory.instance == NullUtil.getInstance()
            NumberStringHudFactory.instance = NumberStringHudFactory.new()
        end
        return NumberStringHudFactory.instance
    end
    

    def createHud()
        begin
            return NumberStringHud.new(StringUtil.getInstance().EMPTY_STRING, 9, BasicHudFactory.getInstance().ABSOLUTE, 1, 0, BasicColorFactory.getInstance().NULL_COLOR)
        rescue StandardError => e
            logUtil = LogUtil.getInstance()
            commonStrings = CommonStrings.getInstance()
            logUtil.put(commonStrings.EXCEPTION, self, commonStrings.CONSTRUCTOR, e)
            raise RuntimeError.new()
        end
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/game/graphics/hud/BasicHudFactory"
require "org/allbinary/graphics/color/BasicColorFactory"
require "org/allbinary/logic/NullUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/game/ag/layer/hud/basic/NumberStringHud"

class NumberStringHudFactory
    @@instance = NullUtil.getInstance()
end

