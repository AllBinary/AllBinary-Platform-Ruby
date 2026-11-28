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

class BasicHighScoresGameInfoFactory
    attr_accessor :MULTI_PLAYER_SERVER, :SINGLE_PLAYER_SERVER

    def jfields_org_allbinary_game_BasicHighScoresGameInfoFactory
        @MULTI_PLAYER_SERVER = GameInfo.new(GameTypeFactory.getInstance().MULTI_PLAYER, GameMode::SERVER, PlayerTypesFactory.getInstance().PLAYER_TYPE_ONE, 0, 0)
        @SINGLE_PLAYER_SERVER = GameInfo.new(GameTypeFactory.getInstance().SINGLE_PLAYER, GameMode::SERVER, PlayerTypesFactory.getInstance().PLAYER_TYPE_ONE, 0, 0)
    end

    def initialize
        jfields_org_allbinary_game_BasicHighScoresGameInfoFactory
    end
    

    def self.getInstance()
        return SINGLETON
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:SINGLETON, BasicHighScoresGameInfoFactory.new())
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "BasicHighScoresGameInfoFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:SINGLETON].include?(name)
        end
        super
    end
end

autoload :GameInfo, "org/allbinary/game/GameInfo" unless const_defined?(:GameInfo, false)
autoload :GameMode, "org/allbinary/game/GameMode" unless const_defined?(:GameMode, false)
autoload :GameTypeFactory, "org/allbinary/game/GameTypeFactory" unless const_defined?(:GameTypeFactory, false)
autoload :PlayerTypesFactory, "org/allbinary/game/PlayerTypesFactory" unless const_defined?(:PlayerTypesFactory, false)

begin
    BasicHighScoresGameInfoFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end

