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


class IntermissionFactory
    attr_accessor :START_LEVEL_INTERMISSION_GAME_STATE, :WAIT_LEVEL_INTERMISSION_GAME_STATE, :SHOW_RESULTS_LEVEL_INTERMISSION_GAME_STATE, :SHOW_HIGH_SCORE_LEVEL_INTERMISSION_GAME_STATE

    def initialize_fields
        @START_LEVEL_INTERMISSION_GAME_STATE = GameStateFactory.getInstance().createGameState("START_LEVEL_INTERMISSION_GAME_STATE")
        @WAIT_LEVEL_INTERMISSION_GAME_STATE = GameStateFactory.getInstance().createGameState("WAIT_LEVEL_INTERMISSION_GAME_STATE")
        @SHOW_RESULTS_LEVEL_INTERMISSION_GAME_STATE = GameStateFactory.getInstance().createGameState("SHOW_RESULTS_LEVEL_INTERMISSION_GAME_STATE")
        @SHOW_HIGH_SCORE_LEVEL_INTERMISSION_GAME_STATE = GameStateFactory.getInstance().createGameState("SHOW_HIGH_SCORE_LEVEL_INTERMISSION_GAME_STATE")
    end

    def initialize
        initialize_fields
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

autoload :GameState, "org/allbinary/game/state/GameState"
autoload :GameStateFactory, "org/allbinary/game/state/GameStateFactory"

begin
    IntermissionFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

