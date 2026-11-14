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
# package org.allbinary.game.input


class GameKeyMappingFactory
    attr_accessor :intKeyToGameKey

    def initialize_fields
        @intKeyToGameKey = Array.new(InputFactory.getInstance().MAX, nil)
    end
    

    def self.getInstance()
        if GameKeyMappingFactory.instance == NullUtil.getInstance().NULL_OBJECT
            GameKeyMappingFactory.instance = GameKeyMappingFactory.new()
        end
        return GameKeyMappingFactory.instance
    end
    

    def initialize()
        initialize_fields
        gameKeyFactory = GameKeyFactory.getInstance()
        self.setGameKey(gameKeyFactory.NONE)
        self.setGameKey(gameKeyFactory.UP)
        self.setGameKey(gameKeyFactory.DOWN)
        self.setGameKey(gameKeyFactory.LEFT)
        self.setGameKey(gameKeyFactory.RIGHT)
        self.setGameKey(gameKeyFactory.KEY_POUND)
        self.setGameKey(gameKeyFactory.KEY_STAR)
        self.setGameKey(gameKeyFactory.KEY_NUM0)
        self.setGameKey(gameKeyFactory.KEY_NUM1)
        self.setGameKey(gameKeyFactory.KEY_NUM2)
        self.setGameKey(gameKeyFactory.KEY_NUM3)
        self.setGameKey(gameKeyFactory.KEY_NUM4)
        self.setGameKey(gameKeyFactory.KEY_NUM5)
        self.setGameKey(gameKeyFactory.KEY_NUM6)
        self.setGameKey(gameKeyFactory.KEY_NUM7)
        self.setGameKey(gameKeyFactory.KEY_NUM8)
        self.setGameKey(gameKeyFactory.KEY_NUM9)
        self.setGameKey(gameKeyFactory.GAME_A)
        self.setGameKey(gameKeyFactory.GAME_B)
        self.setGameKey(gameKeyFactory.GAME_C)
        self.setGameKey(gameKeyFactory.GAME_D)
        self.setGameKey(gameKeyFactory.FIRE)
        self.setGameKey(gameKeyFactory.LEVEL_DOWN)
        self.setGameKey(gameKeyFactory.LEVEL_UP)
    end
    

    def getGameKey(key)
        return @intKeyToGameKey[key]
    end
    

    def setGameKey(gameKey)
        @intKeyToGameKey[gameKey.getId()] = gameKey
    end

    def self.instance()
        GameKeyMappingFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        GameKeyMappingFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = NullUtil.getInstance().NULL_OBJECT
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "GameKeyMappingFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :NullUtil, "org/allbinary/logic/NullUtil"
autoload :GameKey, "org/allbinary/game/input/GameKey"
autoload :GameKeyFactory, "org/allbinary/game/input/GameKeyFactory"
autoload :InputFactory, "org/allbinary/game/input/InputFactory"

begin
    GameKeyMappingFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

