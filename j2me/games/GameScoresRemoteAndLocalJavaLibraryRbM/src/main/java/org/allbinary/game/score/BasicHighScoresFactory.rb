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

require "java/lang/JavaOverload"
require "org/allbinary/game/score/HighScoresBase"

module ::Org; module Allbinary; module Game; module Score

class BasicHighScoresFactory < HighScoresBase
    attr_accessor :logUtil, :abeClientInformation, :softwareInformation, :highScoresArray, :TOP, :SCORES, :PERSONAL_HIGH_SCORES, :WORLD_TOP_SCORES, :FETCH

    def jfields_org_allbinary_game_score_BasicHighScoresFactory
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @abeClientInformation = nil unless instance_variable_defined?(:@abeClientInformation)
        @softwareInformation = nil unless instance_variable_defined?(:@softwareInformation)
        @highScoresArray = Array.new(2, nil)
        @TOP = "Top"
        @SCORES = "Scores"
        @PERSONAL_HIGH_SCORES = "Personal Top Scores"
        @WORLD_TOP_SCORES = "World Top Scores"
        @FETCH = "fetchHighScores"
    end
    

    def initialize(abeClientInformation, softwareInformation)
        super()
        jfields_org_allbinary_game_score_BasicHighScoresFactory
        @abeClientInformation = abeClientInformation
        @softwareInformation = softwareInformation
    end
    

    def fetchHighScores(gameInfo, highScoresResultsListener)
        @logUtil.putF("Getting Remote/Local HighScores", self, @FETCH)
        self.fetchHighScoresPreload(gameInfo, highScoresResultsListener, true)
    end
    java_overload :fetchHighScores, 2
    

    def fetchHighScoresPreload(gameInfo, highScoresResultsListener, preload)
        ::Org::Allbinary::ThreadPackage::SecondaryThreadPool.getInstance().runTask(Class.new(::Org::Allbinary::ThreadPackage::ARunnable.is_a?(Class) ? ::Org::Allbinary::ThreadPackage::ARunnable : Object) do
            include(::Org::Allbinary::ThreadPackage::ARunnable) unless ::Org::Allbinary::ThreadPackage::ARunnable.is_a?(Class)
            

            def run()
                logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
                begin
                    logUtil.putF(@commonStrings.START, self, @FETCH)
                    @highScoresArray[0] = RecordStoreHighScores.getInstance(@abeClientInformation, gameInfo, @TOP, @PERSONAL_HIGH_SCORES, @SCORES, ScoreComparator.new(true))
                    gameType = gameInfo.getGameType()
                    gameTypeFactory = ::Org::Allbinary::Game::GameTypeFactory.getInstance()
                    gameInfo2 = gameInfo
                    if gameType == gameTypeFactory.SINGLE_PLAYER || gameType == gameTypeFactory.BOT
                        gameInfo2 = ::Org::Allbinary::Game::BasicHighScoresGameInfoFactory.getInstance().SINGLE_PLAYER_SERVER
                    elsif gameType == gameTypeFactory.MULTI_PLAYER
                        gameInfo2 = ::Org::Allbinary::Game::BasicHighScoresGameInfoFactory.getInstance().MULTI_PLAYER_SERVER
                    end
                    @highScoresArray[1] = ::Org::Allbinary::Game::Score::Remote::RemoteHighScores.getInstancePreload(@abeClientInformation, @softwareInformation, gameInfo2, @WORLD_TOP_SCORES, @SCORES, ::Org::Allbinary::Logic::Java::Bool::BooleanFactory.getInstance().FALSE, preload)
                    logUtil.putF(@commonStrings.END_, self, @FETCH)
                    LastFetchHighScoresFactory.getInstance().highScoresArray = @highScoresArray
                    highScoresResultsListener.setHighScoresArray(@highScoresArray)
                rescue StandardError => e
                    logUtil.put(@commonStrings.EXCEPTION, self, @FETCH, e)
                end
            end
            java_overload :run, 0
        end.new())
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

module ::Org; module Allbinary; module ThreadPackage; autoload :ARunnable, "org/allbinary/thread/ARunnable" unless const_defined?(:ARunnable, false); end; end; end
module ::Org; module Allbinary; module Game; autoload :BasicHighScoresGameInfoFactory, "org/allbinary/game/BasicHighScoresGameInfoFactory" unless const_defined?(:BasicHighScoresGameInfoFactory, false); end; end; end
module ::Org; module Allbinary; module Game; autoload :GameInfo, "org/allbinary/game/GameInfo" unless const_defined?(:GameInfo, false); end; end; end
module ::Org; module Allbinary; module Game; autoload :GameType, "org/allbinary/game/GameType" unless const_defined?(:GameType, false); end; end; end
module ::Org; module Allbinary; module Game; autoload :GameTypeFactory, "org/allbinary/game/GameTypeFactory" unless const_defined?(:GameTypeFactory, false); end; end; end
module ::Org; module Allbinary; module Game; module Score; module Remote; autoload :RemoteHighScores, "org/allbinary/game/score/remote/RemoteHighScores" unless const_defined?(:RemoteHighScores, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Java; module Bool; autoload :BooleanFactory, "org/allbinary/logic/java/bool/BooleanFactory" unless const_defined?(:BooleanFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; autoload :SoftwareInformation, "org/allbinary/logic/system/SoftwareInformation" unless const_defined?(:SoftwareInformation, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" unless const_defined?(:AbeClientInformationInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module ThreadPackage; autoload :SecondaryThreadPool, "org/allbinary/thread/SecondaryThreadPool" unless const_defined?(:SecondaryThreadPool, false); end; end; end
autoload :HighScores, "org/allbinary/game/score/HighScores" unless const_defined?(:HighScores, false)
autoload :HighScoresHelper2, "org/allbinary/game/score/HighScoresHelper2" unless const_defined?(:HighScoresHelper2, false)
autoload :HighScoresHelperBaseInterface, "org/allbinary/game/score/HighScoresHelperBaseInterface" unless const_defined?(:HighScoresHelperBaseInterface, false)
autoload :HighScoresResultsListener, "org/allbinary/game/score/HighScoresResultsListener" unless const_defined?(:HighScoresResultsListener, false)
autoload :LastFetchHighScoresFactory, "org/allbinary/game/score/LastFetchHighScoresFactory" unless const_defined?(:LastFetchHighScoresFactory, false)
autoload :RecordStoreHighScores, "org/allbinary/game/score/RecordStoreHighScores" unless const_defined?(:RecordStoreHighScores, false)
autoload :ScoreComparator, "org/allbinary/game/score/ScoreComparator" unless const_defined?(:ScoreComparator, false)

end; end; end; end

