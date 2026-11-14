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

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:INSTANCE, GameMidletStateFactory.new())
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "GameMidletStateFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:INSTANCE].include?(name)
        end
        super
    end
end

autoload :GameState, "org/allbinary/game/state/GameState"
autoload :GameStateFactory, "org/allbinary/game/state/GameStateFactory"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :StringUtil, "org/allbinary/logic/string/StringUtil"
autoload :CommonLabels, "org/allbinary/string/CommonLabels"

begin
    GameMidletStateFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

