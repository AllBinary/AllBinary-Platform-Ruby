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


module ::Org; module Allbinary; module Game; module Commands

class GameCommandsFactory
    attr_accessor :TOGGLE_FULLSCREEN, :TOGGLE_KEYBOARD, :SET_MENU_DISPLAYABLE, :APPLICATION_UPDATE, :DISPLAY_ABOUT, :OPEN_WEB_URL, :CLOSE_OPTIONS, :DISPLAY_OPTIONS, :START_TRACE, :STOP_TRACE, :DEFAULT_OPTIONS, :SHOW_GAME_CANVAS, :CLOSE_AND_SHOW_GAME_CANVAS, :QUIT_COMMAND, :RESTART_COMMAND, :DISPLAY_SAVE_FORM, :SAVE, :DISPLAY_LOAD_FORM, :LOAD_FILE, :DELETE_FILE, :EXIT_COMMAND, :EXIT_WITHOUT_PROGRESS_COMMAND, :START_COMMAND, :CONTINUE_COMMAND, :SELECT_COMMAND, :FEATURE_UPDATE, :BUY_COMMAND

    def jfields_org_allbinary_game_commands_GameCommandsFactory
        @TOGGLE_FULLSCREEN = ::Javax::Microedition::Lcdui::Command.new("Toggle FullScreen", ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING, ::Javax::Microedition::Lcdui::Command::SCREEN, 1)
        @TOGGLE_KEYBOARD = ::Javax::Microedition::Lcdui::Command.new("Keyboard", ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING, ::Javax::Microedition::Lcdui::Command::SCREEN, 1)
        @SET_MENU_DISPLAYABLE = ::Javax::Microedition::Lcdui::Command.new("Set Menu Displayable", ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING, ::Javax::Microedition::Lcdui::Command::SCREEN, 1)
        @APPLICATION_UPDATE = ::Javax::Microedition::Lcdui::Command.new(::Org::Allbinary::StringPackage::CommonStrings.getInstance().UPDATE, ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING, ::Javax::Microedition::Lcdui::Command::SCREEN, 1)
        @DISPLAY_ABOUT = ::Javax::Microedition::Lcdui::Command.new(::Org::Allbinary::Graphics::Displayable::CanvasStrings.getInstance().ABOUT, ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING, ::Javax::Microedition::Lcdui::Command::SCREEN, 2)
        @OPEN_WEB_URL = ::Javax::Microedition::Lcdui::Command.new("Open Web URL", ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING, ::Javax::Microedition::Lcdui::Command::SCREEN, 2)
        @CLOSE_OPTIONS = ::Javax::Microedition::Lcdui::Command.new("Back", ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING, ::Javax::Microedition::Lcdui::Command::SCREEN, 1)
        @DISPLAY_OPTIONS = ::Javax::Microedition::Lcdui::Command.new(::Org::Allbinary::Graphics::Displayable::CanvasStrings.getInstance().OPTIONS, ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING, ::Javax::Microedition::Lcdui::Command::SCREEN, 2)
        @START_TRACE = ::Javax::Microedition::Lcdui::Command.new("Start Trace", ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING, ::Javax::Microedition::Lcdui::Command::SCREEN, 1)
        @STOP_TRACE = ::Javax::Microedition::Lcdui::Command.new("Stop Trace", ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING, ::Javax::Microedition::Lcdui::Command::SCREEN, 1)
        @DEFAULT_OPTIONS = ::Javax::Microedition::Lcdui::Command.new("Default", ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING, ::Javax::Microedition::Lcdui::Command::SCREEN, 1)
        @SHOW_GAME_CANVAS = ::Javax::Microedition::Lcdui::Command.new("Back to Game", ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING, ::Javax::Microedition::Lcdui::Command::SCREEN, 1)
        @CLOSE_AND_SHOW_GAME_CANVAS = ::Javax::Microedition::Lcdui::Command.new("Back", ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING, ::Javax::Microedition::Lcdui::Command::SCREEN, 1)
        @QUIT_COMMAND = ::Javax::Microedition::Lcdui::Command.new("Quit", ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING, ::Javax::Microedition::Lcdui::Command::STOP, 1)
        @RESTART_COMMAND = ::Javax::Microedition::Lcdui::Command.new("Restart", ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING, ::Javax::Microedition::Lcdui::Command::SCREEN, 0)
        @DISPLAY_SAVE_FORM = ::Javax::Microedition::Lcdui::Command.new("Save To", ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING, ::Javax::Microedition::Lcdui::Command::SCREEN, 3)
        @SAVE = ::Javax::Microedition::Lcdui::Command.new("Save", ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING, ::Javax::Microedition::Lcdui::Command::SCREEN, 3)
        @DISPLAY_LOAD_FORM = ::Javax::Microedition::Lcdui::Command.new("Load", ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING, ::Javax::Microedition::Lcdui::Command::SCREEN, 3)
        @LOAD_FILE = ::Javax::Microedition::Lcdui::Command.new("Load File", ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING, ::Javax::Microedition::Lcdui::Command::SCREEN, 3)
        @DELETE_FILE = ::Javax::Microedition::Lcdui::Command.new("Delete File", ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING, ::Javax::Microedition::Lcdui::Command::SCREEN, 1)
        @EXIT_COMMAND = ::Javax::Microedition::Lcdui::Command.new("Exit", ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING, ::Javax::Microedition::Lcdui::Command::EXIT, 2)
        @EXIT_WITHOUT_PROGRESS_COMMAND = ::Javax::Microedition::Lcdui::Command.new("Exit Without Progress", ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING, ::Javax::Microedition::Lcdui::Command::EXIT, 2)
        @START_COMMAND = ::Javax::Microedition::Lcdui::Command.new(::Org::Allbinary::StringPackage::CommonStrings.getInstance().START, ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING, ::Javax::Microedition::Lcdui::Command::SCREEN, 1)
        @CONTINUE_COMMAND = ::Javax::Microedition::Lcdui::Command.new("Continue", ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING, ::Javax::Microedition::Lcdui::Command::SCREEN, 1)
        @SELECT_COMMAND = ::Javax::Microedition::Lcdui::Command.new("Select", ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING, ::Javax::Microedition::Lcdui::Command::SCREEN, 1)
        @FEATURE_UPDATE = ::Javax::Microedition::Lcdui::Command.new("Feature Update", ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING, ::Javax::Microedition::Lcdui::Command::SCREEN, 1)
        @BUY_COMMAND = ::Javax::Microedition::Lcdui::Command.new("BUY", ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING, ::Javax::Microedition::Lcdui::Command::SCREEN, 1)
    end
    

    def self.getInstance()
        if GameCommandsFactory.instance == ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT
            GameCommandsFactory.instance = GameCommandsFactory.new()
        end
        return GameCommandsFactory.instance
    end
    

    def initialize()
        jfields_org_allbinary_game_commands_GameCommandsFactory
    end

    def self.instance()
        GameCommandsFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        GameCommandsFactory.java_static_fields unless @java_static_fields_started
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
        if name == "GameCommandsFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Javax; module Microedition; module Lcdui; autoload :Command, "javax/microedition/lcdui/Command" unless const_defined?(:Command, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Displayable; autoload :CanvasStrings, "org/allbinary/graphics/displayable/CanvasStrings" unless const_defined?(:CanvasStrings, false); end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :NullUtil, "org/allbinary/logic/NullUtil" unless const_defined?(:NullUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end

begin
    GameCommandsFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

