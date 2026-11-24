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
# package org.allbinary.game


module ::Org; module Allbinary; module Game

class IntermissionFactory
    attr_accessor :START_LEVEL_INTERMISSION_GAME_STATE, :WAIT_LEVEL_INTERMISSION_GAME_STATE, :SHOW_RESULTS_LEVEL_INTERMISSION_GAME_STATE, :SHOW_HIGH_SCORE_LEVEL_INTERMISSION_GAME_STATE

    def jfields_org_allbinary_game_IntermissionFactory
        @START_LEVEL_INTERMISSION_GAME_STATE = ::Org::Allbinary::Game::State::GameStateFactory.getInstance().createGameState("START_LEVEL_INTERMISSION_GAME_STATE")
        @WAIT_LEVEL_INTERMISSION_GAME_STATE = ::Org::Allbinary::Game::State::GameStateFactory.getInstance().createGameState("WAIT_LEVEL_INTERMISSION_GAME_STATE")
        @SHOW_RESULTS_LEVEL_INTERMISSION_GAME_STATE = ::Org::Allbinary::Game::State::GameStateFactory.getInstance().createGameState("SHOW_RESULTS_LEVEL_INTERMISSION_GAME_STATE")
        @SHOW_HIGH_SCORE_LEVEL_INTERMISSION_GAME_STATE = ::Org::Allbinary::Game::State::GameStateFactory.getInstance().createGameState("SHOW_HIGH_SCORE_LEVEL_INTERMISSION_GAME_STATE")
    end

    def initialize
        jfields_org_allbinary_game_IntermissionFactory
    end
    

    def self.getInstance()
        return IntermissionFactory.instance
    end

    def self.instance()
        IntermissionFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        IntermissionFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = IntermissionFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "IntermissionFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Game; module State; autoload :GameState, "org/allbinary/game/state/GameState" unless const_defined?(:GameState, false); end; end; end; end
module ::Org; module Allbinary; module Game; module State; autoload :GameStateFactory, "org/allbinary/game/state/GameStateFactory" unless const_defined?(:GameStateFactory, false); end; end; end; end

begin
    IntermissionFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end

