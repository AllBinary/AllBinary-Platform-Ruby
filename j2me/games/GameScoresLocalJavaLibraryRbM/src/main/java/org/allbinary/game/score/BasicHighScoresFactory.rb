# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.game.score

require "java/lang/JavaOverload"
require "org/allbinary/game/score/HighScoresBase"

module ::Org; module Allbinary; module Game; module Score

class BasicHighScoresFactory < HighScoresBase
    attr_accessor :logUtil, :abeClientInformation, :highScoresArray, :TOP, :SCORES, :PERSONAL_HIGH_SCORES, :FETCH

    def jfields_org_allbinary_game_score_BasicHighScoresFactory
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @abeClientInformation = nil unless instance_variable_defined?(:@abeClientInformation)
        @highScoresArray = Array.new(1, nil)
        @TOP = "Top"
        @SCORES = "Scores"
        @PERSONAL_HIGH_SCORES = "Personal Top Scores"
        @FETCH = "fetchHighScores"
    end
    

    def initialize(abeClientInformation, softwareInformation)
        super()
        jfields_org_allbinary_game_score_BasicHighScoresFactory
        @abeClientInformation = abeClientInformation
    end
    

    def fetchHighScores(gameInfo, highScoresResultsListener)
        @logUtil.putF("Getting Local HighScores", self, @FETCH)
        self.fetchHighScoresPreload(gameInfo, highScoresResultsListener, true)
    end
    java_overload :fetchHighScores, 2
    

    def fetchHighScoresPreload(gameInfo, highScoresResultsListener, preload)
        begin
            @highScoresArray[0] = RecordStoreHighScores.getInstance(@abeClientInformation, gameInfo, @TOP, @PERSONAL_HIGH_SCORES, @SCORES, ScoreComparator.new(true))
            highScoresResultsListener.setHighScoresArray(@highScoresArray)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @FETCH, e)
        end
    end
    java_overload :fetchHighScoresPreload, 3
    

    def createHighScoresHelper()
        return HighScoresHelper2.new()
    end
    java_overload :createHighScoresHelper, 0
    

    def self.loaded(index2)
        if index2 >= 0
            return true
        end
        return false
    end
end

module ::Org; module Allbinary; module Game; autoload :GameInfo, "org/allbinary/game/GameInfo" unless const_defined?(:GameInfo, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; autoload :SoftwareInformation, "org/allbinary/logic/system/SoftwareInformation" unless const_defined?(:SoftwareInformation, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" unless const_defined?(:AbeClientInformationInterface, false); end; end; end; end; end; end
autoload :HighScores, "org/allbinary/game/score/HighScores" unless const_defined?(:HighScores, false)
autoload :HighScoresHelper2, "org/allbinary/game/score/HighScoresHelper2" unless const_defined?(:HighScoresHelper2, false)
autoload :HighScoresHelperBaseInterface, "org/allbinary/game/score/HighScoresHelperBaseInterface" unless const_defined?(:HighScoresHelperBaseInterface, false)
autoload :HighScoresResultsListener, "org/allbinary/game/score/HighScoresResultsListener" unless const_defined?(:HighScoresResultsListener, false)
autoload :RecordStoreHighScores, "org/allbinary/game/score/RecordStoreHighScores" unless const_defined?(:RecordStoreHighScores, false)
autoload :ScoreComparator, "org/allbinary/game/score/ScoreComparator" unless const_defined?(:ScoreComparator, false)

end; end; end; end

