# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.game.score

require "org/allbinary/game/score/HighScoresBase"

class BasicHighScoresFactory < HighScoresBase
    attr_accessor :logUtil, :abeClientInformation, :highScoresArray, :TOP, :SCORES, :PERSONAL_HIGH_SCORES, :FETCH

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @abeClientInformation = nil
        @highScoresArray = Array.new(1, nil)
        @TOP = "Top"
        @SCORES = "Scores"
        @PERSONAL_HIGH_SCORES = "Personal Top Scores"
        @FETCH = "fetchHighScores"
    end
    

    def initialize(abeClientInformation, softwareInformation)
        super()
        initialize_fields
        @abeClientInformation = abeClientInformation
    end
    

    def fetchHighScores(gameInfo, highScoresResultsListener)
        @logUtil.putF("Getting Local HighScores", self, @FETCH)
        self.fetchHighScoresPreload(gameInfo, highScoresResultsListener, true)
    end
    

    def fetchHighScoresPreload(gameInfo, highScoresResultsListener, preload)
        begin
            @highScoresArray[0] = RecordStoreHighScores.getInstance(@abeClientInformation, gameInfo, @TOP, @PERSONAL_HIGH_SCORES, @SCORES, ScoreComparator.new(true))
            highScoresResultsListener.setHighScoresArray(@highScoresArray)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @FETCH, e)
        end
    end
    

    def createHighScoresHelper()
        return HighScoresHelper2.new()
    end
    

    def self.loaded(index2)
        if index2 >= 0
            return true
        end
        return false
    end
end

require "org/allbinary/game/GameInfo"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/system/SoftwareInformation"
require "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
require "org/allbinary/game/score/HighScores"
require "org/allbinary/game/score/HighScoresHelper2"
require "org/allbinary/game/score/HighScoresHelperBaseInterface"
require "org/allbinary/game/score/HighScoresResultsListener"
require "org/allbinary/game/score/RecordStoreHighScores"
require "org/allbinary/game/score/ScoreComparator"

