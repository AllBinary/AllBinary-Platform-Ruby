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
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/game/state/GameState"
require "org/allbinary/game/state/GameStateFactory"

class IntermissionFactory
    @@instance = IntermissionFactory.new()
end

