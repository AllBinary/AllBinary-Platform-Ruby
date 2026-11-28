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

class J2MEKeyFactory
    attr_accessor :gameKeyFactory

    def jfields_org_allbinary_game_input_J2MEKeyFactory
        @gameKeyFactory = GameKeyFactory.getInstance()
    end
    

    def self.getInstance()
        return @@instance
    end
    

    def initialize()
        jfields_org_allbinary_game_input_J2MEKeyFactory
    end
    

    def init()
        gameKeyArray = [@gameKeyFactory.DOWN, @gameKeyFactory.FIRE, @gameKeyFactory.GAME_A, @gameKeyFactory.GAME_B, @gameKeyFactory.GAME_C, @gameKeyFactory.GAME_D, @gameKeyFactory.KEY_NUM0, @gameKeyFactory.KEY_NUM1, @gameKeyFactory.KEY_NUM2, @gameKeyFactory.KEY_NUM3, @gameKeyFactory.KEY_NUM4, @gameKeyFactory.KEY_NUM5, @gameKeyFactory.KEY_NUM6, @gameKeyFactory.KEY_NUM7, @gameKeyFactory.KEY_NUM8, @gameKeyFactory.KEY_NUM9, @gameKeyFactory.KEY_POUND, @gameKeyFactory.KEY_STAR, @gameKeyFactory.LEFT, @gameKeyFactory.LEVEL_DOWN, @gameKeyFactory.LEVEL_UP, @gameKeyFactory.NONE, @gameKeyFactory.RIGHT, @gameKeyFactory.UP]
        inputFactory = InputFactory.getInstance()
        index = gameKeyArray.length
        while (index -= 1) >= 0
            inputFactory.add(gameKeyArray[index].getId(), gameKeyArray[index])
        end
    end
    

    def isSubmission(input)
        if input == @gameKeyFactory.FIRE
            return true
        end
        return false
    end
    

    def isDelete(input)
        if input == @gameKeyFactory.GAME_D
            return true
        end
        return false
    end
    

    def isBackSpace(input)
        return false
    end
    

    def isUp(input)
        if input == @gameKeyFactory.UP
            return true
        end
        return false
    end
    

    def isDown(input)
        if input == @gameKeyFactory.DOWN
            return true
        end
        return false
    end
    

    def isLeft(input)
        if input == @gameKeyFactory.LEFT
            return true
        end
        return false
    end
    

    def isRight(input)
        if input == @gameKeyFactory.RIGHT
            return true
        end
        return false
    end
    

    def isEnter(input)
        if input == @gameKeyFactory.FIRE
            return true
        end
        return false
    end

    def self.instance()
        J2MEKeyFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        J2MEKeyFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = J2MEKeyFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "J2MEKeyFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :GameKey, "org/allbinary/game/input/GameKey" unless const_defined?(:GameKey, false)
autoload :GameKeyFactory, "org/allbinary/game/input/GameKeyFactory" unless const_defined?(:GameKeyFactory, false)
autoload :Input, "org/allbinary/game/input/Input" unless const_defined?(:Input, false)
autoload :InputFactory, "org/allbinary/game/input/InputFactory" unless const_defined?(:InputFactory, false)

begin
    J2MEKeyFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

