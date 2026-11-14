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
# package org.allbinary.game


class GameTypeFactory
    attr_accessor :NULL_GAME_TYPE_ARRAY, :NONE, :SINGLE_PLAYER, :MULTI_PLAYER, :BOT

    def initialize_fields
        @NULL_GAME_TYPE_ARRAY = Array.new(0, nil)
        @NONE = GameType.new(StringUtil.getInstance().NULL_STRING)
        @SINGLE_PLAYER = GameType.new("Single Player")
        @MULTI_PLAYER = GameType.new("Multi Player")
        @BOT = GameType.new("Artificial Player")
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return GameTypeFactory.instance
    end

    def self.instance()
        GameTypeFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        GameTypeFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = GameTypeFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "GameTypeFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :StringUtil, "org/allbinary/logic/string/StringUtil"
autoload :GameType, "org/allbinary/game/GameType"

begin
    GameTypeFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

