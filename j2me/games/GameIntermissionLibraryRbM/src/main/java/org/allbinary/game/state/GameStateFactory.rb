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
# package org.allbinary.game.state


class GameStateFactory
    attr_accessor :index, :NO_GAME_STATE, :PLAYING_GAME_STATE, :SHOW_END_RESULT_GAME_STATE, :SHOW_HIGH_SCORE_GAME_STATE

    def initialize_fields
        @index = 0
        @NO_GAME_STATE = self.createGameState("NO_GAME_STATE")
        @PLAYING_GAME_STATE = self.createGameState("PLAYING_GAME_STATE")
        @SHOW_END_RESULT_GAME_STATE = self.createGameState("SHOW_END_RESULT_GAME_STATE")
        @SHOW_HIGH_SCORE_GAME_STATE = self.createGameState("SHOW_HIGH_SCORE_GAME_STATE")
    end
    

    def self.getInstance()
        if GameStateFactory.instance == NullUtil.getInstance().NULL_OBJECT
            GameStateFactory.instance = GameStateFactory.new()
        end
        return GameStateFactory.instance
    end
    

    def initialize()
        initialize_fields
    end
    

    def createGameState(name)
        return GameState.new(name, ((@index += 1) - 1))
    end

    def self.instance()
        GameStateFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        GameStateFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = NullUtil.getInstance().NULL_OBJECT
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "GameStateFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :NullUtil, "org/allbinary/logic/NullUtil"
autoload :GameState, "org/allbinary/game/state/GameState"

begin
    GameStateFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

