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

# require "javax/microedition/lcdui/Canvas"

class GameKeyFactory
    attr_accessor :NONE, :UP, :DOWN, :LEFT, :RIGHT, :KEY_POUND, :KEY_STAR, :KEY_NUM0, :KEY_NUM1, :KEY_NUM2, :KEY_NUM3, :KEY_NUM4, :KEY_NUM5, :KEY_NUM6, :KEY_NUM7, :KEY_NUM8, :KEY_NUM9, :GAME_A, :GAME_B, :GAME_C, :GAME_D, :FIRE, :LEVEL_DOWN, :LEVEL_UP

    def initialize_fields
        @NONE = GameKey.new(InputFactory.getInstance().MAX - 1, "None")
        @UP = GameKey.new(Canvas::UP, CommonPhoneStrings.getInstance().UP)
        @DOWN = GameKey.new(Canvas::DOWN, CommonPhoneStrings.getInstance().DOWN)
        @LEFT = GameKey.new(Canvas::LEFT, CommonPhoneStrings.getInstance().LEFT)
        @RIGHT = GameKey.new(Canvas::RIGHT, CommonPhoneStrings.getInstance().RIGHT)
        @KEY_POUND = GameKey.new(Canvas::KEY_POUND, "POUND")
        @KEY_STAR = GameKey.new(Canvas::KEY_STAR, "STAR")
        @KEY_NUM0 = GameKey.new(Canvas::KEY_NUM0, CommonPhoneStrings.getInstance().ZERO)
        @KEY_NUM1 = GameKey.new(Canvas::KEY_NUM1, CommonPhoneStrings.getInstance().ONE)
        @KEY_NUM2 = GameKey.new(Canvas::KEY_NUM2, CommonPhoneStrings.getInstance().TWO)
        @KEY_NUM3 = GameKey.new(Canvas::KEY_NUM3, CommonPhoneStrings.getInstance().THREE)
        @KEY_NUM4 = GameKey.new(Canvas::KEY_NUM4, CommonPhoneStrings.getInstance().FOUR)
        @KEY_NUM5 = GameKey.new(Canvas::KEY_NUM5, CommonPhoneStrings.getInstance().FIVE)
        @KEY_NUM6 = GameKey.new(Canvas::KEY_NUM6, CommonPhoneStrings.getInstance().SIX)
        @KEY_NUM7 = GameKey.new(Canvas::KEY_NUM7, CommonPhoneStrings.getInstance().SEVEN)
        @KEY_NUM8 = GameKey.new(Canvas::KEY_NUM8, CommonPhoneStrings.getInstance().EIGHT)
        @KEY_NUM9 = GameKey.new(Canvas::KEY_NUM9, CommonPhoneStrings.getInstance().NINE)
        @GAME_A = GameKey.new(Canvas::GAME_A, "Game A")
        @GAME_B = GameKey.new(Canvas::GAME_B, "Game B")
        @GAME_C = GameKey.new(Canvas::GAME_C, "Game C")
        @GAME_D = GameKey.new(Canvas::GAME_D, "Game D")
        @FIRE = GameKey.new(Canvas::FIRE, CommonPhoneStrings.getInstance().FIRE)
        @LEVEL_DOWN = GameKey.new(Canvas::KEY_NUM9 + 1, "Cheat Level Up")
        @LEVEL_UP = GameKey.new(Canvas::KEY_NUM9 + 2, "Cheat Level Down")
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        if GameKeyFactory.instance == NullUtil.getInstance().NULL_OBJECT
            GameKeyFactory.instance = GameKeyFactory.new()
        end
        return GameKeyFactory.instance
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/NullUtil"
require "org/allbinary/string/CommonPhoneStrings"
require "org/allbinary/game/input/GameKey"
require "org/allbinary/game/input/InputFactory"

class GameKeyFactory
    @@instance = NullUtil.getInstance().NULL_OBJECT
end

