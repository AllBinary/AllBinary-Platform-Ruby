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


module ::Org; module Allbinary; module Game; module Displayable; module Canvas

class EndGameInfo
    attr_accessor :NORMAL_GAME_OVER, :NORMAL_GAME_OVER_WIN, :gameOverStr, :winStr

    def jfields_org_allbinary_game_displayable_canvas_EndGameInfo
        @NORMAL_GAME_OVER = "Game Over"
        @NORMAL_GAME_OVER_WIN = "You Won"
        @gameOverStr = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
        @winStr = @gameOverStr
    end
    

    def initialize()
        jfields_org_allbinary_game_displayable_canvas_EndGameInfo
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

module ::Org; module Allbinary; module Game; autoload :GameInfo, "org/allbinary/game/GameInfo" unless const_defined?(:GameInfo, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Displayable; autoload :MyCanvas, "org/allbinary/graphics/displayable/MyCanvas" unless const_defined?(:MyCanvas, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end

end; end; end; end; end

