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

require "org/allbinary/graphics/displayable/screen/CommandForm"

class InGameOptionsForm < CommandForm
    

    def initialize(commandListener, title, backgrounBasicColor, foregroundBasicColor)
        super(commandListener, title, backgrounBasicColor, foregroundBasicColor)
        @logUtil.putF(@commonStrings.START, self, @commonStrings.CONSTRUCTOR)
        gameFeatureFormUtil = GameFeatureFormUtil.getInstance()
        gameFeatureFormUtil.addChoiceGroup(self, InGameFeatureChoiceGroups.getExclusiveInstance().get(), Choice::EXCLUSIVE)
        gameFeatureFormUtil.addChoiceGroup(self, InGameFeatureChoiceGroups.getMultipleInstance().get(), Choice::MULTIPLE)
        self.initCommands(commandListener)
    end
    

    def initCommands(cmdListener)
        self.removeAllCommands()
        self.addCommand(GameCommandsFactory.getInstance().CLOSE_AND_SHOW_GAME_CANVAS)
        self.addCommand(InGameOptionsForm::DEFAULT)
        self.setCommandListener(cmdListener)
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:DISPLAY, Command.new("Options In Game", StringUtil.getInstance().EMPTY_STRING, Command::SCREEN, 1))
            const_set(:SAVE, Command.new("Save", StringUtil.getInstance().EMPTY_STRING, Command::SCREEN, 1))
            const_set(:DEFAULT, Command.new("Default", StringUtil.getInstance().EMPTY_STRING, Command::SCREEN, 1))
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

autoload :Choice, "javax/microedition/lcdui/Choice"
autoload :Command, "javax/microedition/lcdui/Command"
autoload :CommandListener, "javax/microedition/lcdui/CommandListener"
autoload :GameCommandsFactory, "org/allbinary/game/commands/GameCommandsFactory"
autoload :GameFeatureFormUtil, "org/allbinary/game/configuration/feature/GameFeatureFormUtil"
autoload :InGameFeatureChoiceGroups, "org/allbinary/game/configuration/feature/InGameFeatureChoiceGroups"
autoload :BasicColor, "org/allbinary/graphics/color/BasicColor"
autoload :StringUtil, "org/allbinary/logic/string/StringUtil"

begin
    InGameOptionsForm.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

