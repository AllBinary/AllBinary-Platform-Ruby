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


module ::Org; module Allbinary; module Game; module State

class RaceGameStateFactory
    attr_accessor :START_GAME_STATE, :YELLOW_LIGHT_GAME_STATE, :RED_LIGHT_GAME_STATE

    def jfields_org_allbinary_game_state_RaceGameStateFactory
        @START_GAME_STATE = GameStateFactory.getInstance().createGameState("START_GAME_STATE")
        @YELLOW_LIGHT_GAME_STATE = GameStateFactory.getInstance().createGameState("YELLOW_LIGHT_GAME_STATE")
        @RED_LIGHT_GAME_STATE = GameStateFactory.getInstance().createGameState("RED_LIGHT_GAME_STATE")
    end

    def initialize
        jfields_org_allbinary_game_state_RaceGameStateFactory
    end
    

    def self.getInstance()
        if @@instance == ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT
            @@instance = RaceGameStateFactory.new()
        end
        return @@instance
    end

    def self.instance()
        RaceGameStateFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        RaceGameStateFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "RaceGameStateFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Logic; autoload :NullUtil, "org/allbinary/logic/NullUtil" unless const_defined?(:NullUtil, false); end; end; end
autoload :GameState, "org/allbinary/game/state/GameState" unless const_defined?(:GameState, false)
autoload :GameStateFactory, "org/allbinary/game/state/GameStateFactory" unless const_defined?(:GameStateFactory, false)

begin
    RaceGameStateFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

