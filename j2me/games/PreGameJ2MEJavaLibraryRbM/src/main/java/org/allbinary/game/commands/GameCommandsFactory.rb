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
# package org.allbinary.game.commands

# require "javax/microedition/lcdui/Command"

class GameCommandsFactory
    attr_accessor :TOGGLE_FULLSCREEN, :TOGGLE_KEYBOARD, :SET_MENU_DISPLAYABLE, :APPLICATION_UPDATE, :DISPLAY_ABOUT, :OPEN_WEB_URL, :CLOSE_OPTIONS, :DISPLAY_OPTIONS, :START_TRACE, :STOP_TRACE, :DEFAULT_OPTIONS, :SHOW_GAME_CANVAS, :CLOSE_AND_SHOW_GAME_CANVAS, :QUIT_COMMAND, :RESTART_COMMAND, :DISPLAY_SAVE_FORM, :SAVE, :DISPLAY_LOAD_FORM, :LOAD_FILE, :DELETE_FILE, :EXIT_COMMAND, :EXIT_WITHOUT_PROGRESS_COMMAND, :START_COMMAND, :CONTINUE_COMMAND, :SELECT_COMMAND, :FEATURE_UPDATE, :BUY_COMMAND

    def initialize_fields
        @TOGGLE_FULLSCREEN = Command.new("Toggle FullScreen", StringUtil.getInstance().EMPTY_STRING, Command::SCREEN, 1)
        @TOGGLE_KEYBOARD = Command.new("Keyboard", StringUtil.getInstance().EMPTY_STRING, Command::SCREEN, 1)
        @SET_MENU_DISPLAYABLE = Command.new("Set Menu Displayable", StringUtil.getInstance().EMPTY_STRING, Command::SCREEN, 1)
        @APPLICATION_UPDATE = Command.new(CommonStrings.getInstance().UPDATE, StringUtil.getInstance().EMPTY_STRING, Command::SCREEN, 1)
        @DISPLAY_ABOUT = Command.new(CanvasStrings.getInstance().ABOUT, StringUtil.getInstance().EMPTY_STRING, Command::SCREEN, 2)
        @OPEN_WEB_URL = Command.new("Open Web URL", StringUtil.getInstance().EMPTY_STRING, Command::SCREEN, 2)
        @CLOSE_OPTIONS = Command.new("Back", StringUtil.getInstance().EMPTY_STRING, Command::SCREEN, 1)
        @DISPLAY_OPTIONS = Command.new(CanvasStrings.getInstance().OPTIONS, StringUtil.getInstance().EMPTY_STRING, Command::SCREEN, 2)
        @START_TRACE = Command.new("Start Trace", StringUtil.getInstance().EMPTY_STRING, Command::SCREEN, 1)
        @STOP_TRACE = Command.new("Stop Trace", StringUtil.getInstance().EMPTY_STRING, Command::SCREEN, 1)
        @DEFAULT_OPTIONS = Command.new("Default", StringUtil.getInstance().EMPTY_STRING, Command::SCREEN, 1)
        @SHOW_GAME_CANVAS = Command.new("Back to Game", StringUtil.getInstance().EMPTY_STRING, Command::SCREEN, 1)
        @CLOSE_AND_SHOW_GAME_CANVAS = Command.new("Back", StringUtil.getInstance().EMPTY_STRING, Command::SCREEN, 1)
        @QUIT_COMMAND = Command.new("Quit", StringUtil.getInstance().EMPTY_STRING, Command::STOP, 1)
        @RESTART_COMMAND = Command.new("Restart", StringUtil.getInstance().EMPTY_STRING, Command::SCREEN, 0)
        @DISPLAY_SAVE_FORM = Command.new("Save To", StringUtil.getInstance().EMPTY_STRING, Command::SCREEN, 3)
        @SAVE = Command.new("Save", StringUtil.getInstance().EMPTY_STRING, Command::SCREEN, 3)
        @DISPLAY_LOAD_FORM = Command.new("Load", StringUtil.getInstance().EMPTY_STRING, Command::SCREEN, 3)
        @LOAD_FILE = Command.new("Load File", StringUtil.getInstance().EMPTY_STRING, Command::SCREEN, 3)
        @DELETE_FILE = Command.new("Delete File", StringUtil.getInstance().EMPTY_STRING, Command::SCREEN, 1)
        @EXIT_COMMAND = Command.new("Exit", StringUtil.getInstance().EMPTY_STRING, Command::EXIT, 2)
        @EXIT_WITHOUT_PROGRESS_COMMAND = Command.new("Exit Without Progress", StringUtil.getInstance().EMPTY_STRING, Command::EXIT, 2)
        @START_COMMAND = Command.new(CommonStrings.getInstance().START, StringUtil.getInstance().EMPTY_STRING, Command::SCREEN, 1)
        @CONTINUE_COMMAND = Command.new("Continue", StringUtil.getInstance().EMPTY_STRING, Command::SCREEN, 1)
        @SELECT_COMMAND = Command.new("Select", StringUtil.getInstance().EMPTY_STRING, Command::SCREEN, 1)
        @FEATURE_UPDATE = Command.new("Feature Update", StringUtil.getInstance().EMPTY_STRING, Command::SCREEN, 1)
        @BUY_COMMAND = Command.new("BUY", StringUtil.getInstance().EMPTY_STRING, Command::SCREEN, 1)
    end
    

    def self.getInstance()
        if GameCommandsFactory.instance == NullUtil.getInstance().NULL_OBJECT
            GameCommandsFactory.instance = GameCommandsFactory.new()
        end
        return GameCommandsFactory.instance
    end
    

    def initialize()
        initialize_fields
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/graphics/displayable/CanvasStrings"
require "org/allbinary/logic/NullUtil"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/string/CommonStrings"

class GameCommandsFactory
    @@instance = NullUtil.getInstance().NULL_OBJECT
end

