# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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


class RaceGameStateFactory
    attr_accessor :START_GAME_STATE, :YELLOW_LIGHT_GAME_STATE, :RED_LIGHT_GAME_STATE

    def initialize_fields
        @START_GAME_STATE = GameStateFactory.getInstance().createGameState("START_GAME_STATE")
        @YELLOW_LIGHT_GAME_STATE = GameStateFactory.getInstance().createGameState("YELLOW_LIGHT_GAME_STATE")
        @RED_LIGHT_GAME_STATE = GameStateFactory.getInstance().createGameState("RED_LIGHT_GAME_STATE")
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        if RaceGameStateFactory.instance == NullUtil.getInstance().NULL_OBJECT
            RaceGameStateFactory.instance = RaceGameStateFactory.new()
        end
        return RaceGameStateFactory.instance
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/NullUtil"
require "org/allbinary/game/state/GameState"
require "org/allbinary/game/state/GameStateFactory"

class RaceGameStateFactory
    @@instance = NullUtil.getInstance().NULL_OBJECT
end

