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


class GameStrings
    attr_accessor :PROCESS_TICK, :ON_GAME_INITIALIZED, :UPDATESURFACE, :ON_SET_DISPLAYABLE, :UNPAUSE, :TOGGLE_MENU, :SET_GAME_OVER, :GAME_STATE, :SET_GAME_STATE, :STOP_GAME_CANVAS_RUNNABLE_INTERFACE

    def initialize_fields
        @PROCESS_TICK = "processTick"
        @ON_GAME_INITIALIZED = "onGameInitialized"
        @UPDATESURFACE = "updateSurface"
        @ON_SET_DISPLAYABLE = "onSetDisplayable"
        @UNPAUSE = "unPause"
        @TOGGLE_MENU = "toggleMenu"
        @SET_GAME_OVER = "setGameOver"
        @GAME_STATE = "Game State: "
        @SET_GAME_STATE = "setGameState"
        @STOP_GAME_CANVAS_RUNNABLE_INTERFACE = "stopGameCanvasRunnableInterface"
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return GameStrings.instance
    end

    def self.instance()
        GameStrings.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        GameStrings.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = GameStrings.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "GameStrings"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

begin
    GameStrings.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

