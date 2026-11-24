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

class InGameOptionsForm < ::Org::Allbinary::Graphics::Displayable::Screen::CommandForm
    

    def initialize(commandListener, title, backgrounBasicColor, foregroundBasicColor)
        super(commandListener, title, backgrounBasicColor, foregroundBasicColor)
        @logUtil.putF(@commonStrings.START, self, @commonStrings.CONSTRUCTOR)
        gameFeatureFormUtil = ::Org::Allbinary::Game::Configuration::Feature::GameFeatureFormUtil.getInstance()
        gameFeatureFormUtil.addChoiceGroup(self, ::Org::Allbinary::Game::Configuration::Feature::InGameFeatureChoiceGroups.getExclusiveInstance().get(), ::Javax::Microedition::Lcdui::Choice::EXCLUSIVE)
        gameFeatureFormUtil.addChoiceGroup(self, ::Org::Allbinary::Game::Configuration::Feature::InGameFeatureChoiceGroups.getMultipleInstance().get(), ::Javax::Microedition::Lcdui::Choice::MULTIPLE)
        self.initCommands(commandListener)
    end
    

    def initCommands(cmdListener)
        self.removeAllCommands()
        self.addCommand(::Org::Allbinary::Game::Commands::GameCommandsFactory.getInstance().CLOSE_AND_SHOW_GAME_CANVAS)
        self.addCommand(InGameOptionsForm::DEFAULT)
        self.setCommandListener(cmdListener)
    end
    java_overload :initCommands, 1

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:DISPLAY, ::Javax::Microedition::Lcdui::Command.new("Options In Game", ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING, ::Javax::Microedition::Lcdui::Command::SCREEN, 1))
            const_set(:SAVE, ::Javax::Microedition::Lcdui::Command.new("Save", ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING, ::Javax::Microedition::Lcdui::Command::SCREEN, 1))
            const_set(:DEFAULT, ::Javax::Microedition::Lcdui::Command.new("Default", ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING, ::Javax::Microedition::Lcdui::Command::SCREEN, 1))
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "InGameOptionsForm"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:DISPLAY, :SAVE, :DEFAULT].include?(name)
        end
        super
    end
end

module ::Javax; module Microedition; module Lcdui; autoload :Choice, "javax/microedition/lcdui/Choice" unless const_defined?(:Choice, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Command, "javax/microedition/lcdui/Command" unless const_defined?(:Command, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :CommandListener, "javax/microedition/lcdui/CommandListener" unless const_defined?(:CommandListener, false); end; end; end
module ::Org; module Allbinary; module Game; module Commands; autoload :GameCommandsFactory, "org/allbinary/game/commands/GameCommandsFactory" unless const_defined?(:GameCommandsFactory, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :GameFeatureFormUtil, "org/allbinary/game/configuration/feature/GameFeatureFormUtil" unless const_defined?(:GameFeatureFormUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :InGameFeatureChoiceGroups, "org/allbinary/game/configuration/feature/InGameFeatureChoiceGroups" unless const_defined?(:InGameFeatureChoiceGroups, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end

begin
    InGameOptionsForm.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

