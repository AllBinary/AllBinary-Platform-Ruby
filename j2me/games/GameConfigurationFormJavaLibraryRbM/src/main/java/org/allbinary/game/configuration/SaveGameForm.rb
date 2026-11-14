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

class SaveGameForm < CommandForm
    attr_accessor :meUtil

    def initialize_fields
        @meUtil = MEUtil.getInstance()
    end
    

    # throws Exception
    def self.createForm(commandListener, title, backgrounBasicColor, foregroundBasicColor)
        (SaveGameForm.send(:remove_const, :FORM) if SaveGameForm.const_defined?(:FORM, false); SaveGameForm.const_set(:FORM, SaveGameForm.new(commandListener, title, backgrounBasicColor, foregroundBasicColor)))
        return SaveGameForm::FORM
    end
    

    def self.getInstance()
        return SaveGameForm::FORM
    end
    

    def initialize(commandListener, title, backgrounBasicColor, foregroundBasicColor)
        super(commandListener, title, backgrounBasicColor, foregroundBasicColor)
        initialize_fields
        @logUtil.putF(@commonStrings.START, self, @commonStrings.CONSTRUCTOR)
        timeString = (ABSystemWrapper.getInstance().currentTimeMillis()).to_s
        @meUtil.appendItem(self, TextField.new("Name: ", timeString, 30, TextField::ANY))
        self.initCommands(commandListener)
    end
    

    def initCommands(cmdListener)
        gameCommandsFactory = GameCommandsFactory.getInstance()
        self.removeAllCommands()
        self.addCommand(gameCommandsFactory.SAVE)
        self.addCommand(gameCommandsFactory.CLOSE_AND_SHOW_GAME_CANVAS)
        self.setCommandListener(cmdListener)
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:FORM, CommandForm.getNullCommandForm())
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

autoload :CommandListener, "javax/microedition/lcdui/CommandListener"
autoload :TextField, "javax/microedition/lcdui/TextField"
autoload :GameCommandsFactory, "org/allbinary/game/commands/GameCommandsFactory"
autoload :BasicColor, "org/allbinary/graphics/color/BasicColor"
autoload :ABSystemWrapper, "org/allbinary/logic/ABSystemWrapper"
autoload :MEUtil, "org/allbinary/logic/MEUtil"

begin
    SaveGameForm.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

