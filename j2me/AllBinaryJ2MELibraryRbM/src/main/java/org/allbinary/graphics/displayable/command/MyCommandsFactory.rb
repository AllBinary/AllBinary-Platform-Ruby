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
# package org.allbinary.graphics.displayable.command

# require "javax/microedition/lcdui/Command"

class MyCommandsFactory
    attr_accessor :NO_COMMAND, :GAUGE_CHANGE, :SET_DISPLAYABLE, :PAUSE_COMMAND, :RESUME_COMMAND

    def initialize_fields
        @NO_COMMAND = Command.new(StringUtil.getInstance().EMPTY_STRING, StringUtil.getInstance().EMPTY_STRING, -1, -1)
        @GAUGE_CHANGE = Command.new("GAUGE_CHANGE", StringUtil.getInstance().EMPTY_STRING, Command::ITEM, 1)
        @SET_DISPLAYABLE = Command.new("Display", StringUtil.getInstance().EMPTY_STRING, Command::SCREEN, 2)
        @PAUSE_COMMAND = Command.new("Pause", StringUtil.getInstance().EMPTY_STRING, Command::SCREEN, 0)
        @RESUME_COMMAND = Command.new("Resume", StringUtil.getInstance().EMPTY_STRING, Command::SCREEN, 0)
    end
    

    def self.getInstance()
        return MyCommandsFactory.instance
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

require "org/allbinary/logic/string/StringUtil"

class MyCommandsFactory
    @@instance = MyCommandsFactory.new()
end

