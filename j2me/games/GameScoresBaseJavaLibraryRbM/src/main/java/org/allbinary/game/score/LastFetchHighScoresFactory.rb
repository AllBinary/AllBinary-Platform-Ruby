# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
# package org.allbinary.game.score


class LastFetchHighScoresFactory
    attr_accessor :highScoresArray

    def initialize_fields
        @highScoresArray = NoHighScoresFactory.getInstance().NO_HIGH_SCORES
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        if LastFetchHighScoresFactory.instance == NullUtil.getInstance().NULL_OBJECT
            LastFetchHighScoresFactory.instance = LastFetchHighScoresFactory.new()
        end
        return LastFetchHighScoresFactory.instance
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/NullUtil"
require "org/allbinary/game/score/HighScores"
require "org/allbinary/game/score/NoHighScoresFactory"

class LastFetchHighScoresFactory
    @@instance = NullUtil.getInstance().NULL_OBJECT
end

