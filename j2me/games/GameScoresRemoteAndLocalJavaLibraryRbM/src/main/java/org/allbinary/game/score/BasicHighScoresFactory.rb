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

class BasicHighScoresFactory < HighScoresBase
    attr_accessor :logUtil, :abeClientInformation, :softwareInformation, :highScoresArray, :TOP, :SCORES, :PERSONAL_HIGH_SCORES, :WORLD_TOP_SCORES, :FETCH

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @abeClientInformation = nil
        @softwareInformation = nil
        @highScoresArray = Array.new(2, nil)
        @TOP = "Top"
        @SCORES = "Scores"
        @PERSONAL_HIGH_SCORES = "Personal Top Scores"
        @WORLD_TOP_SCORES = "World Top Scores"
        @FETCH = "fetchHighScores"
    end
    

    def initialize(abeClientInformation, softwareInformation)
        super()
        initialize_fields
        @abeClientInformation = abeClientInformation
        @softwareInformation = softwareInformation
    end
    

    def fetchHighScores(gameInfo, highScoresResultsListener)
        @logUtil.putF("Getting Remote/Local HighScores", self, @FETCH)
        self.fetchHighScoresPreload(gameInfo, highScoresResultsListener, true)
    end
    

    def fetchHighScoresPreload(gameInfo, highScoresResultsListener, preload)
        SecondaryThreadPool.getInstance().runTask(Class.new(ARunnable.is_a?(Class) ? ARunnable : Object) do
            include(ARunnable) unless ARunnable.is_a?(Class)
            

            def run()
                logUtil = LogUtil.getInstance()
                begin
                    logUtil.putF(@commonStrings.START, self, @FETCH)
                    @highScoresArray[0] = RecordStoreHighScores.getInstance(@abeClientInformation, gameInfo, @TOP, @PERSONAL_HIGH_SCORES, @SCORES, ScoreComparator.new(true))
                    gameType = gameInfo.getGameType()
                    gameTypeFactory = GameTypeFactory.getInstance()
                    gameInfo2 = gameInfo
                    if gameType == gameTypeFactory.SINGLE_PLAYER || gameType == gameTypeFactory.BOT
                        gameInfo2 = BasicHighScoresGameInfoFactory.getInstance().SINGLE_PLAYER_SERVER
                    elsif gameType == gameTypeFactory.MULTI_PLAYER
                        gameInfo2 = BasicHighScoresGameInfoFactory.getInstance().MULTI_PLAYER_SERVER
                    end
                    @highScoresArray[1] = RemoteHighScores.getInstancePreload(@abeClientInformation, @softwareInformation, gameInfo2, @WORLD_TOP_SCORES, @SCORES, BooleanFactory.getInstance().FALSE, preload)
                    logUtil.putF(@commonStrings.END_, self, @FETCH)
                    LastFetchHighScoresFactory.getInstance().highScoresArray = @highScoresArray
                    highScoresResultsListener.setHighScoresArray(@highScoresArray)
                rescue StandardError => e
                    logUtil.put(@commonStrings.EXCEPTION, self, @FETCH, e)
                end
            end
        end.new())
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

require "org/allbinary/thread/ARunnable"
require "org/allbinary/game/BasicHighScoresGameInfoFactory"
require "org/allbinary/game/GameInfo"
require "org/allbinary/game/GameType"
require "org/allbinary/game/GameTypeFactory"
require "org/allbinary/game/score/remote/RemoteHighScores"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/java/bool/BooleanFactory"
require "org/allbinary/logic/system/SoftwareInformation"
require "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
require "org/allbinary/thread/SecondaryThreadPool"
require "org/allbinary/game/score/HighScores"
require "org/allbinary/game/score/HighScoresHelper2"
require "org/allbinary/game/score/HighScoresHelperBaseInterface"
require "org/allbinary/game/score/HighScoresResultsListener"
require "org/allbinary/game/score/LastFetchHighScoresFactory"
require "org/allbinary/game/score/RecordStoreHighScores"
require "org/allbinary/game/score/ScoreComparator"

