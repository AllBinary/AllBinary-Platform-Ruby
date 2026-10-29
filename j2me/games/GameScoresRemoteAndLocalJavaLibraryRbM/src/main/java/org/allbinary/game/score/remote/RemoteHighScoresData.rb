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
# package org.allbinary.game.score.remote


class RemoteHighScoresData
    attr_accessor :HIGH_SCORES, :CUSTOMER_USER_NAME, :DISPLAY_NAME, :SCORE, :GAME_INFO, :GAME_CONFIGURATION

    def initialize_fields
        @HIGH_SCORES = "HIGH_SCORES"
        @CUSTOMER_USER_NAME = "CUSTOMER_USER_NAME"
        @DISPLAY_NAME = "DISPLAY_NAME"
        @SCORE = "SCORE"
        @GAME_INFO = "GAME_INFO"
        @GAME_CONFIGURATION = "GAME_CONFIGURATION"
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return RemoteHighScoresData::SINGLETON
    end
end

class RemoteHighScoresData
    SINGLETON = RemoteHighScoresData.new()
end

