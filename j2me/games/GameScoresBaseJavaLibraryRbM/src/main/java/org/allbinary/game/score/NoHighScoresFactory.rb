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
# package org.allbinary.game.score

require "org/allbinary/game/score/HighScoresBase"

class NoHighScoresFactory < HighScoresBase
    attr_accessor :logUtil, :NO_HIGH_SCORES

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @NO_HIGH_SCORES = Array.new(0, nil)
    end
    

    def self.getInstance()
        return NoHighScoresFactory.instance
    end
    

    def initialize()
        super()
        initialize_fields
    end
    

    def fetchHighScores(gameInfo, highScoresResultsListener)
        @logUtil.putF("Getting No HighScores", self, "fetchHighScores")
        highScoresResultsListener.setHighScoresArray(@NO_HIGH_SCORES)
    end
    

    def createHighScoresHelper()
        return HighScoresHelperBase.new()
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/game/GameInfo"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/game/score/HighScores"
require "org/allbinary/game/score/HighScoresHelperBase"
require "org/allbinary/game/score/HighScoresHelperBaseInterface"
require "org/allbinary/game/score/HighScoresResultsListener"

class NoHighScoresFactory
    @@instance = NoHighScoresFactory.new()
end

