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


module ::Org; module Allbinary; module Game

class PlayerTypesFactory
    attr_accessor :PLAYER_TYPE_ONE, :PLAYER_TYPE_TWO, :PLAYER_TYPE_THREE

    def jfields_org_allbinary_game_PlayerTypesFactory
        @PLAYER_TYPE_ONE = PlayerType.new("Player Type One", 0)
        @PLAYER_TYPE_TWO = PlayerType.new("Player Type Two", 1)
        @PLAYER_TYPE_THREE = PlayerType.new("Player Type Three", 2)
    end

    def initialize
        jfields_org_allbinary_game_PlayerTypesFactory
    end
    

    def self.getInstance()
        return SINGLETON
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:SINGLETON, PlayerTypesFactory.new())
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "PlayerTypesFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:SINGLETON].include?(name)
        end
        super
    end
end

autoload :PlayerType, "org/allbinary/game/PlayerType" unless const_defined?(:PlayerType, false)

begin
    PlayerTypesFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end

