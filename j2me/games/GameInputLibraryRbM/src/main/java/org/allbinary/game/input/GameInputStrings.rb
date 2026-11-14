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
# package org.allbinary.game.input


class GameInputStrings
    attr_accessor :PROCESS_INPUT, :KEY_PRESSED, :KEY_RELEASED, :KEY_REPEATED, :ON_PRESS_GAME_KEY, :ON_DOWN_GAME_KEY, :ON_UP_GAME_KEY, :NO_KEY, :ADD_KEY_EVENT, :REMOVE_KEY_EVENT, :STRAFE_LEFT, :STRAFE_RIGHT, :PROCESS_MOTION_INPUT, :UDPATE_CURRENT_TOUCH_INPUT_FACTORY, :ENABLE_PLAYER_GAME_INPUTS, :ENABLE_PLAYER_GAME_INPUT

    def initialize_fields
        @PROCESS_INPUT = "processInput"
        @KEY_PRESSED = "keyPressed"
        @KEY_RELEASED = "keyReleased"
        @KEY_REPEATED = "keyRepeated"
        @ON_PRESS_GAME_KEY = "onPressGameKeyEvent"
        @ON_DOWN_GAME_KEY = "onDownGameKeyEvent"
        @ON_UP_GAME_KEY = "onUpGameKeyEvent"
        @NO_KEY = "Key Code Not Mapped For Game: "
        @ADD_KEY_EVENT = "addGameKeyEvent"
        @REMOVE_KEY_EVENT = "removeGameKeyEvent"
        @STRAFE_LEFT = "strafeLeft"
        @STRAFE_RIGHT = "strafeRight"
        @PROCESS_MOTION_INPUT = "processMotionInput"
        @UDPATE_CURRENT_TOUCH_INPUT_FACTORY = "updateCurrentTouchInputFactory"
        @ENABLE_PLAYER_GAME_INPUTS = "Enabling PlayerGameInputs: "
        @ENABLE_PLAYER_GAME_INPUT = "Enabling PlayerGameInput: "
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return GameInputStrings.instance
    end

    def self.instance()
        GameInputStrings.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        GameInputStrings.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = GameInputStrings.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "GameInputStrings"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

begin
    GameInputStrings.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

