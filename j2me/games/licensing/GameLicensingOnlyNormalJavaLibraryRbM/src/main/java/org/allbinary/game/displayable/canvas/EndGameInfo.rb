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
# package org.allbinary.game.displayable.canvas


class EndGameInfo
    attr_accessor :NORMAL_GAME_OVER, :NORMAL_GAME_OVER_WIN, :gameOverStr, :winStr

    def initialize_fields
        @NORMAL_GAME_OVER = "Game Over"
        @NORMAL_GAME_OVER_WIN = "You Won"
        @gameOverStr = StringUtil.getInstance().EMPTY_STRING
        @winStr = @gameOverStr
    end
    

    def initialize()
        initialize_fields
    end
    

    def update(gameInfo, myCanvas)
        self.setGameOverStr(@NORMAL_GAME_OVER)
        self.setWinStr(@NORMAL_GAME_OVER_WIN)
    end
    

    def getGameOverStr()
        return @gameOverStr
    end
    

    def setGameOverStr(gameOverStr)
        @gameOverStr = gameOverStr
    end
    

    def getWinStr()
        return @winStr
    end
    

    def setWinStr(winStr)
        @winStr = winStr
    end
end

require "org/allbinary/game/GameInfo"
require "org/allbinary/graphics/displayable/MyCanvas"
require "org/allbinary/logic/string/StringUtil"

