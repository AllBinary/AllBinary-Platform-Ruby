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
# package org.allbinary.game.input

require "org/allbinary/game/input/Input"

class GameKey < Input
    

    def initialize(key, name)
        super(key, name)
    end
    

    def toString()
        return StringMaker.new().append("GameKey ").append(super.to_s).to_s
    end
    alias_method :to_s, :toString
end

require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"

class GameKey
    NULL_GAME_KEY = GameKey.new(-1, StringUtil.getInstance().NULL_STRING)
end

