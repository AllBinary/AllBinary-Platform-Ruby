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

require "org/allbinary/game/input/Input"

class GameKey < Input
    

    def initialize(key, name)
        super(key, name)
    end
    

    def toString()
        return StringMaker.new().append("GameKey ").append(super.to_s).to_s
    end
    alias_method :to_s, :toString

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:NULL_GAME_KEY, GameKey.new(-1, StringUtil.getInstance().NULL_STRING))
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "GameKey"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NULL_GAME_KEY].include?(name)
        end
        super
    end
end

autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :StringUtil, "org/allbinary/logic/string/StringUtil"

begin
    GameKey.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

