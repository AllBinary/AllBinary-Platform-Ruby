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
        MyCommandsFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        MyCommandsFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = MyCommandsFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "MyCommandsFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :Command, "javax/microedition/lcdui/Command"
autoload :StringUtil, "org/allbinary/logic/string/StringUtil"

begin
    MyCommandsFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

