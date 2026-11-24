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


module ::Org; module Allbinary; module Game; module Input

class GameKeyFactory
    attr_accessor :NONE, :UP, :DOWN, :LEFT, :RIGHT, :KEY_POUND, :KEY_STAR, :KEY_NUM0, :KEY_NUM1, :KEY_NUM2, :KEY_NUM3, :KEY_NUM4, :KEY_NUM5, :KEY_NUM6, :KEY_NUM7, :KEY_NUM8, :KEY_NUM9, :GAME_A, :GAME_B, :GAME_C, :GAME_D, :FIRE, :LEVEL_DOWN, :LEVEL_UP

    def jfields_org_allbinary_game_input_GameKeyFactory
        @NONE = GameKey.new(InputFactory.getInstance().MAX - 1, "None")
        @UP = GameKey.new(::Javax::Microedition::Lcdui::Canvas::UP, ::Org::Allbinary::StringPackage::CommonPhoneStrings.getInstance().UP)
        @DOWN = GameKey.new(::Javax::Microedition::Lcdui::Canvas::DOWN, ::Org::Allbinary::StringPackage::CommonPhoneStrings.getInstance().DOWN)
        @LEFT = GameKey.new(::Javax::Microedition::Lcdui::Canvas::LEFT, ::Org::Allbinary::StringPackage::CommonPhoneStrings.getInstance().LEFT)
        @RIGHT = GameKey.new(::Javax::Microedition::Lcdui::Canvas::RIGHT, ::Org::Allbinary::StringPackage::CommonPhoneStrings.getInstance().RIGHT)
        @KEY_POUND = GameKey.new(::Javax::Microedition::Lcdui::Canvas::KEY_POUND, "POUND")
        @KEY_STAR = GameKey.new(::Javax::Microedition::Lcdui::Canvas::KEY_STAR, "STAR")
        @KEY_NUM0 = GameKey.new(::Javax::Microedition::Lcdui::Canvas::KEY_NUM0, ::Org::Allbinary::StringPackage::CommonPhoneStrings.getInstance().ZERO)
        @KEY_NUM1 = GameKey.new(::Javax::Microedition::Lcdui::Canvas::KEY_NUM1, ::Org::Allbinary::StringPackage::CommonPhoneStrings.getInstance().ONE)
        @KEY_NUM2 = GameKey.new(::Javax::Microedition::Lcdui::Canvas::KEY_NUM2, ::Org::Allbinary::StringPackage::CommonPhoneStrings.getInstance().TWO)
        @KEY_NUM3 = GameKey.new(::Javax::Microedition::Lcdui::Canvas::KEY_NUM3, ::Org::Allbinary::StringPackage::CommonPhoneStrings.getInstance().THREE)
        @KEY_NUM4 = GameKey.new(::Javax::Microedition::Lcdui::Canvas::KEY_NUM4, ::Org::Allbinary::StringPackage::CommonPhoneStrings.getInstance().FOUR)
        @KEY_NUM5 = GameKey.new(::Javax::Microedition::Lcdui::Canvas::KEY_NUM5, ::Org::Allbinary::StringPackage::CommonPhoneStrings.getInstance().FIVE)
        @KEY_NUM6 = GameKey.new(::Javax::Microedition::Lcdui::Canvas::KEY_NUM6, ::Org::Allbinary::StringPackage::CommonPhoneStrings.getInstance().SIX)
        @KEY_NUM7 = GameKey.new(::Javax::Microedition::Lcdui::Canvas::KEY_NUM7, ::Org::Allbinary::StringPackage::CommonPhoneStrings.getInstance().SEVEN)
        @KEY_NUM8 = GameKey.new(::Javax::Microedition::Lcdui::Canvas::KEY_NUM8, ::Org::Allbinary::StringPackage::CommonPhoneStrings.getInstance().EIGHT)
        @KEY_NUM9 = GameKey.new(::Javax::Microedition::Lcdui::Canvas::KEY_NUM9, ::Org::Allbinary::StringPackage::CommonPhoneStrings.getInstance().NINE)
        @GAME_A = GameKey.new(::Javax::Microedition::Lcdui::Canvas::GAME_A, "Game A")
        @GAME_B = GameKey.new(::Javax::Microedition::Lcdui::Canvas::GAME_B, "Game B")
        @GAME_C = GameKey.new(::Javax::Microedition::Lcdui::Canvas::GAME_C, "Game C")
        @GAME_D = GameKey.new(::Javax::Microedition::Lcdui::Canvas::GAME_D, "Game D")
        @FIRE = GameKey.new(::Javax::Microedition::Lcdui::Canvas::FIRE, ::Org::Allbinary::StringPackage::CommonPhoneStrings.getInstance().FIRE)
        @LEVEL_DOWN = GameKey.new(::Javax::Microedition::Lcdui::Canvas::KEY_NUM9 + 1, "Cheat Level Up")
        @LEVEL_UP = GameKey.new(::Javax::Microedition::Lcdui::Canvas::KEY_NUM9 + 2, "Cheat Level Down")
    end

    def initialize
        jfields_org_allbinary_game_input_GameKeyFactory
    end
    

    def self.getInstance()
        if GameKeyFactory.instance == ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT
            GameKeyFactory.instance = GameKeyFactory.new()
        end
        return GameKeyFactory.instance
    end

    def self.instance()
        GameKeyFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        GameKeyFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "GameKeyFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Javax; module Microedition; module Lcdui; autoload :Canvas, "javax/microedition/lcdui/Canvas" unless const_defined?(:Canvas, false); end; end; end
module ::Org; module Allbinary; module Logic; autoload :NullUtil, "org/allbinary/logic/NullUtil" unless const_defined?(:NullUtil, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonPhoneStrings, "org/allbinary/string/CommonPhoneStrings" unless const_defined?(:CommonPhoneStrings, false); end; end; end
autoload :GameKey, "org/allbinary/game/input/GameKey" unless const_defined?(:GameKey, false)
autoload :InputFactory, "org/allbinary/game/input/InputFactory" unless const_defined?(:InputFactory, false)

begin
    GameKeyFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

