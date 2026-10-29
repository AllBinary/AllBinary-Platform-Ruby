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


class GameInfoData
    attr_accessor :GAME_TYPE, :GAME_MODE, :PLAYER_TYPE, :HIGHEST_LEVEL, :CURRENT_LEVEL, :SOFTWARE_INFORMATION

    def initialize_fields
        @GAME_TYPE = "GAME_TYPE"
        @GAME_MODE = "GAME_MODE"
        @PLAYER_TYPE = "PLAYER_TYPE"
        @HIGHEST_LEVEL = "HIGHEST_LEVEL"
        @CURRENT_LEVEL = "CURRENT_LEVEL"
        @SOFTWARE_INFORMATION = "SOFTWARE_INFORMATION"
    end
    

    def self.getInstance()
        return GameInfoData.instance
    end
    

    def initialize()
        initialize_fields
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

class GameInfoData
    @@instance = GameInfoData.new()
end

