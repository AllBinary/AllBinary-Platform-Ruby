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
# package org.allbinary.game.configuration

require "java/lang/JavaOverload"
require "org/allbinary/graphics/displayable/screen/CommandForm"

module ::Org; module Allbinary; module Game; module Configuration

class SaveGameForm < ::Org::Allbinary::Graphics::Displayable::Screen::CommandForm
    attr_accessor :meUtil

    def jfields_org_allbinary_game_configuration_SaveGameForm
        @meUtil = ::Org::Allbinary::MIDPUtil.getInstance()
    end
    

    # throws Exception
    def self.createForm(commandListener, title, backgrounBasicColor, foregroundBasicColor)
        (SaveGameForm.instance_exec(SaveGameForm.new(commandListener, title, backgrounBasicColor, foregroundBasicColor)) { |java_value| remove_const(:FORM) if const_defined?(:FORM, false); const_set(:FORM, java_value) })
        return SaveGameForm::FORM
    end
    

    def self.getInstance()
        return SaveGameForm::FORM
    end
    

    def initialize(commandListener, title, backgrounBasicColor, foregroundBasicColor)
        super(commandListener, title, backgrounBasicColor, foregroundBasicColor)
        jfields_org_allbinary_game_configuration_SaveGameForm
        @logUtil.putF(@commonStrings.START, self, @commonStrings.CONSTRUCTOR)
        timeString = (::Org::Allbinary::Logic::ABSystemWrapper.getInstance().currentTimeMillis()).to_s
        @meUtil.appendItem(self, ::Javax::Microedition::Lcdui::TextField.new("Name: ", timeString, 30, ::Javax::Microedition::Lcdui::TextField::ANY))
        self.initCommands(commandListener)
    end
    

    def initCommands(cmdListener)
        gameCommandsFactory = ::Org::Allbinary::Game::Commands::GameCommandsFactory.getInstance()
        self.removeAllCommands()
        self.addCommand(gameCommandsFactory.SAVE)
        self.addCommand(gameCommandsFactory.CLOSE_AND_SHOW_GAME_CANVAS)
        self.setCommandListener(cmdListener)
    end
    java_overload :initCommands, 1

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:FORM, ::Org::Allbinary::Graphics::Displayable::Screen::CommandForm.getNullCommandForm())
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "SaveGameForm"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:FORM].include?(name)
        end
        super
    end
end

module ::Javax; module Microedition; module Lcdui; autoload :CommandListener, "javax/microedition/lcdui/CommandListener" unless const_defined?(:CommandListener, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :TextField, "javax/microedition/lcdui/TextField" unless const_defined?(:TextField, false); end; end; end
module ::Org; module Allbinary; autoload :MIDPUtil, "org/allbinary/MIDPUtil" unless const_defined?(:MIDPUtil, false); end; end
module ::Org; module Allbinary; module Game; module Commands; autoload :GameCommandsFactory, "org/allbinary/game/commands/GameCommandsFactory" unless const_defined?(:GameCommandsFactory, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :ABSystemWrapper, "org/allbinary/logic/ABSystemWrapper" unless const_defined?(:ABSystemWrapper, false); end; end; end

begin
    SaveGameForm.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

