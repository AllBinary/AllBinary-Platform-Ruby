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


class BasicHighScoresGameInfoFactory
    attr_accessor :MULTI_PLAYER_SERVER, :SINGLE_PLAYER_SERVER

    def initialize_fields
        @MULTI_PLAYER_SERVER = GameInfo.new(GameTypeFactory.getInstance().MULTI_PLAYER, GameMode::SERVER, PlayerTypesFactory.getInstance().PLAYER_TYPE_ONE, 0, 0)
        @SINGLE_PLAYER_SERVER = GameInfo.new(GameTypeFactory.getInstance().SINGLE_PLAYER, GameMode::SERVER, PlayerTypesFactory.getInstance().PLAYER_TYPE_ONE, 0, 0)
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return BasicHighScoresGameInfoFactory::SINGLETON
    end
end

require "org/allbinary/game/GameInfo"
require "org/allbinary/game/GameMode"
require "org/allbinary/game/GameTypeFactory"
require "org/allbinary/game/PlayerTypesFactory"

class BasicHighScoresGameInfoFactory
    SINGLETON = BasicHighScoresGameInfoFactory.new()
end

