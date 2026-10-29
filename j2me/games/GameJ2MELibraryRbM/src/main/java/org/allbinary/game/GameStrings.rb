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
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

class GameStrings
    @@instance = GameStrings.new()
end

