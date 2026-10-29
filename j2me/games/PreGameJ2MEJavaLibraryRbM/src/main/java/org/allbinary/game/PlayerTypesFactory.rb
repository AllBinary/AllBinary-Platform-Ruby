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


class PlayerTypesFactory
    attr_accessor :PLAYER_TYPE_ONE, :PLAYER_TYPE_TWO, :PLAYER_TYPE_THREE

    def initialize_fields
        @PLAYER_TYPE_ONE = PlayerType.new("Player Type One", 0)
        @PLAYER_TYPE_TWO = PlayerType.new("Player Type Two", 1)
        @PLAYER_TYPE_THREE = PlayerType.new("Player Type Three", 2)
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return PlayerTypesFactory::SINGLETON
    end
end

require "org/allbinary/game/PlayerType"

class PlayerTypesFactory
    SINGLETON = PlayerTypesFactory.new()
end

