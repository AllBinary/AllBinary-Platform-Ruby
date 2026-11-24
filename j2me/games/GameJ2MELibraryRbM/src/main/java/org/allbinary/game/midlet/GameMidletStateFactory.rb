# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.game.midlet


module ::Org; module Allbinary; module Game; module Midlet

class GameMidletStateFactory
    attr_accessor :logUtil, :currentGameState

    def jfields_org_allbinary_game_midlet_GameMidletStateFactory
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @currentGameState = ::Org::Allbinary::Game::State::GameStateFactory.getInstance().NO_GAME_STATE
    end
    

    def initialize()
        jfields_org_allbinary_game_midlet_GameMidletStateFactory
    end
    

    def self.getInstance()
        return GameMidletStateFactory::INSTANCE
    end
    

    def getCurrentGameState()
        return @currentGameState
    end
    

    def setCurrentGameState(currentGameState)
        @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(::Org::Allbinary::StringPackage::CommonLabels.getInstance().CURRENT).append(" GameState: ").append(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().toString(currentGameState)).to_s, self, "setCurrentGameState")
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

module ::Org; module Allbinary; module Game; module State; autoload :GameState, "org/allbinary/game/state/GameState" unless const_defined?(:GameState, false); end; end; end; end
module ::Org; module Allbinary; module Game; module State; autoload :GameStateFactory, "org/allbinary/game/state/GameStateFactory" unless const_defined?(:GameStateFactory, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonLabels, "org/allbinary/string/CommonLabels" unless const_defined?(:CommonLabels, false); end; end; end

begin
    GameMidletStateFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

