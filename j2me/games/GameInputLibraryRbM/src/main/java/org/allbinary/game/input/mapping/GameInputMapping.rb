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
# package org.allbinary.game.input.mapping


class GameInputMapping
    attr_accessor :name, :gameKey

    def initialize_fields
        @name = StringUtil.getInstance().EMPTY_STRING
        @gameKey = GameKey::NULL_GAME_KEY
    end
    

    def initialize(name, gameKey)
        initialize_fields
        self.setName(name)
        self.setGameKey(gameKey)
    end
    

    def setGameKey(gameKey)
        @gameKey = gameKey
    end
    

    def getGameKey()
        return @gameKey
    end
    

    def setName(name)
        @name = name
    end
    

    def getName()
        return @name
    end
end

require "org/allbinary/game/input/GameKey"
require "org/allbinary/logic/string/StringUtil"

