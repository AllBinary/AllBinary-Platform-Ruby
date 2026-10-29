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
# package org.allbinary.game.score

# require "javax/microedition/lcdui/Command"

class HighScoreCommands
    attr_accessor :DISPLAY, :PERSONAL, :WORLD

    def initialize_fields
        @DISPLAY = Command.new("Scores", StringUtil.getInstance().EMPTY_STRING, Command::SCREEN, 1)
        @PERSONAL = Command.new("Personal", StringUtil.getInstance().EMPTY_STRING, Command::SCREEN, 1)
        @WORLD = Command.new("World", StringUtil.getInstance().EMPTY_STRING, Command::SCREEN, 1)
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return HighScoreCommands.instance
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/string/StringUtil"

class HighScoreCommands
    @@instance = HighScoreCommands.new()
end

