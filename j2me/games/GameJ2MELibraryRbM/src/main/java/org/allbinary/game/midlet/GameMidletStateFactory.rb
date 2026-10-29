# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.game.midlet


class GameMidletStateFactory
    attr_accessor :logUtil, :currentGameState

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @currentGameState = GameStateFactory.getInstance().NO_GAME_STATE
    end
    

    def initialize()
        initialize_fields
    end
    

    def self.getInstance()
        return GameMidletStateFactory::INSTANCE
    end
    

    def getCurrentGameState()
        return @currentGameState
    end
    

    def setCurrentGameState(currentGameState)
        @logUtil.putF(StringMaker.new().append(CommonLabels.getInstance().CURRENT).append(" GameState: ").append(StringUtil.getInstance().toString(currentGameState)).to_s, self, "setCurrentGameState")
        @currentGameState = currentGameState
    end
end

require "org/allbinary/game/state/GameState"
require "org/allbinary/game/state/GameStateFactory"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/string/CommonLabels"

class GameMidletStateFactory
    INSTANCE = GameMidletStateFactory.new()
end

