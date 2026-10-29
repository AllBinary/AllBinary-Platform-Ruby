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
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/game/GameType"

class GameTypeFactory
    @@instance = GameTypeFactory.new()
end

