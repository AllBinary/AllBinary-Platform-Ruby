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

require "java/lang/Object"
require "java/lang/JavaOverload"
require "org/allbinary/game/score/HighScores"

module ::Org; module Allbinary; module Game; module Score; module Remote

class RemoteHighScores < ::Org::Allbinary::Game::Score::HighScores
    attr_accessor :logUtil, :enumerationUtil, :abeClientInformation, :softwareInformation, :ascending, :ASCENDING

    def jfields_org_allbinary_game_score_remote_RemoteHighScores
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @enumerationUtil = ::Org::Allbinary::Util::EnumerationUtil.getInstance()
        @abeClientInformation = nil unless instance_variable_defined?(:@abeClientInformation)
        @softwareInformation = nil unless instance_variable_defined?(:@softwareInformation)
        @ascending = nil unless instance_variable_defined?(:@ascending)
        @ASCENDING = "ASCENDING"
    end
    

    def initialize(abeClientInformation, softwareInformation, gameInfo, heading, columnTwoHeading, ascending, preload)
        super(gameInfo.to_s, heading, columnTwoHeading)
        jfields_org_allbinary_game_score_remote_RemoteHighScores
        @abeClientInformation = abeClientInformation
        @softwareInformation = softwareInformation
        self.setAscending(ascending)
        if preload
            RemoteHighScoresProcessorFactory.getInstance().process(self, @abeClientInformation, gameInfo)
        end
    end
    

    def self.getInstance(abeClientInformation, softwareInformation, gameInfo, heading, columnTwoHeading, isAscending)
        java_monitor.synchronize do
        return RemoteHighScores.getInstancePreload(abeClientInformation, softwareInformation, gameInfo, heading, columnTwoHeading, isAscending, true)
        end
    end
    

    def self.getInstancePreload(abeClientInformation, softwareInformation, gameInfo, heading, columnTwoHeading, isAscending, preload)
        java_monitor.synchronize do
        logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        begin
            highScores = RemoteHighScores.hashTable.get(gameInfo)
            if highScores == nil
                highScores = RemoteHighScores.new(abeClientInformation, softwareInformation, gameInfo, heading, columnTwoHeading, isAscending, preload)
                RemoteHighScores.hashTable.put(gameInfo, highScores)
            end
            return highScores
        rescue StandardError => e
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
            logUtil.put(commonStrings.EXCEPTION, ::Org::Allbinary::Game::Score::RemoteErrorHighScoresSingletonFactory.getInstance(), commonStrings.GET_INSTANCE, e)
            return ::Org::Allbinary::Game::Score::RemoteErrorHighScoresSingletonFactory.getInstance()
        end
        end
    end
    

    def addHighScore(newHighScore)
        RemoteHighScoresSubmissionProcessorFactory.getInstance().process(self, @abeClientInformation, newHighScore)
    end
    java_overload :addHighScore, 1
    

    def update(hashtable)
        self.getList().clear()
        vector = hashtable.get(RemoteHighScoresData.getInstance().HIGH_SCORES)
        if vector != nil
            size = vector.size()
            (0...size).each do |index|
                highScoreVector = vector.get(index)
                displayName = highScoreVector.get(0)
                score = highScoreVector.get(1)
                longScore = Integer(score)
                highScore = ::Org::Allbinary::Game::Score::HighScore.new(-1, displayName, nil, longScore)
                self.getList().add(highScore)
            end
        else
            _NEXT_ELEMENT = ::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(::Org::Allbinary::StringPackage::CommonLabels.getInstance().NEXT).append("Element: ").to_s
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
            enumeration = hashtable.elements()
            nextElement = nil
            while @enumerationUtil.hasMoreElements(enumeration)
                nextElement = @enumerationUtil.nextElement(enumeration)
                @logUtil.putF(_NEXT_ELEMENT + (nextElement).to_s, self, commonStrings.PROCESS)
            end
        end
    end
    java_overload :update, 1
    

    def setAscending(ascending)
        @ascending = ascending
    end
    java_overload :setAscending, 1
    

    def getAscending()
        return @ascending
    end
    java_overload :getAscending, 0
    

    def getSoftwareInformation()
        return @softwareInformation
    end
    java_overload :getSoftwareInformation, 0

    def self.hashTable()
        RemoteHighScores.java_static_fields unless @java_static_fields_started
        return defined?(@@hashTable) ? @@hashTable : nil
    end

    def self.hashTable=(value)
        RemoteHighScores.java_static_fields unless @java_static_fields_started
        @@hashTable = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@hashTable = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashtable()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "RemoteHighScores"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Java; module Util; autoload :Enumeration, "java/util/Enumeration" unless const_defined?(:Enumeration, false); end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Game; autoload :GameInfo, "org/allbinary/game/GameInfo" unless const_defined?(:GameInfo, false); end; end; end
module ::Org; module Allbinary; module Game; module Score; autoload :HighScore, "org/allbinary/game/score/HighScore" unless const_defined?(:HighScore, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Score; autoload :RemoteErrorHighScoresSingletonFactory, "org/allbinary/game/score/RemoteErrorHighScoresSingletonFactory" unless const_defined?(:RemoteErrorHighScoresSingletonFactory, false); end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module System; autoload :SoftwareInformation, "org/allbinary/logic/system/SoftwareInformation" unless const_defined?(:SoftwareInformation, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" unless const_defined?(:AbeClientInformationInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonLabels, "org/allbinary/string/CommonLabels" unless const_defined?(:CommonLabels, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :ABHashtable, "org/allbinary/util/ABHashtable" unless const_defined?(:ABHashtable, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :EnumerationUtil, "org/allbinary/util/EnumerationUtil" unless const_defined?(:EnumerationUtil, false); end; end; end
autoload :RemoteHighScoresData, "org/allbinary/game/score/remote/RemoteHighScoresData" unless const_defined?(:RemoteHighScoresData, false)
autoload :RemoteHighScoresProcessorFactory, "org/allbinary/game/score/remote/RemoteHighScoresProcessorFactory" unless const_defined?(:RemoteHighScoresProcessorFactory, false)
autoload :RemoteHighScoresSubmissionProcessorFactory, "org/allbinary/game/score/remote/RemoteHighScoresSubmissionProcessorFactory" unless const_defined?(:RemoteHighScoresSubmissionProcessorFactory, false)

begin
    RemoteHighScores.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

