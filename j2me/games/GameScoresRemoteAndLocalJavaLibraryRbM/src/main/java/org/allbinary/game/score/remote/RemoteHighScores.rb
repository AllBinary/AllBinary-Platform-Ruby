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
require "org/allbinary/game/score/HighScores"

class RemoteHighScores < HighScores
    attr_accessor :logUtil, :enumerationUtil, :abeClientInformation, :softwareInformation, :ascending, :ASCENDING

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @enumerationUtil = EnumerationUtil.getInstance()
        @abeClientInformation = nil
        @softwareInformation = nil
        @ascending = nil
        @ASCENDING = "ASCENDING"
    end
    

    def initialize(abeClientInformation, softwareInformation, gameInfo, heading, columnTwoHeading, ascending, preload)
        super(gameInfo.to_s, heading, columnTwoHeading)
        initialize_fields
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
        logUtil = LogUtil.getInstance()
        begin
            highScores = RemoteHighScores.hashTable.get(gameInfo)
            if highScores == nil
                highScores = RemoteHighScores.new(abeClientInformation, softwareInformation, gameInfo, heading, columnTwoHeading, isAscending, preload)
                RemoteHighScores.hashTable.put(gameInfo, highScores)
            end
            return highScores
        rescue StandardError => e
            commonStrings = CommonStrings.getInstance()
            logUtil.put(commonStrings.EXCEPTION, RemoteErrorHighScoresSingletonFactory.getInstance(), commonStrings.GET_INSTANCE, e)
            return RemoteErrorHighScoresSingletonFactory.getInstance()
        end
        end
    end
    

    def addHighScore(newHighScore)
        RemoteHighScoresSubmissionProcessorFactory.getInstance().process(self, @abeClientInformation, newHighScore)
    end
    

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
                highScore = HighScore.new(-1, displayName, nil, longScore)
                self.getList().add(highScore)
            end
        else
            _NEXT_ELEMENT = StringMaker.new().append(CommonLabels.getInstance().NEXT).append("Element: ").to_s
            commonStrings = CommonStrings.getInstance()
            enumeration = hashtable.elements()
            nextElement = nil
            while @enumerationUtil.hasMoreElements(enumeration)
                nextElement = @enumerationUtil.nextElement(enumeration)
                @logUtil.putF(_NEXT_ELEMENT + (nextElement).to_s, self, commonStrings.PROCESS)
            end
        end
    end
    

    def setAscending(ascending)
        @ascending = ascending
    end
    

    def getAscending()
        return @ascending
    end
    

    def getSoftwareInformation()
        return @softwareInformation
    end

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
            @@hashTable = StdUtil.getInstance().createHashtable()
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

autoload :Enumeration, "java/util/Enumeration"
autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :GameInfo, "org/allbinary/game/GameInfo"
autoload :HighScore, "org/allbinary/game/score/HighScore"
autoload :RemoteErrorHighScoresSingletonFactory, "org/allbinary/game/score/RemoteErrorHighScoresSingletonFactory"
autoload :StdUtil, "org/allbinary/logic/StdUtil"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :SoftwareInformation, "org/allbinary/logic/system/SoftwareInformation"
autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
autoload :CommonLabels, "org/allbinary/string/CommonLabels"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :ABHashtable, "org/allbinary/util/ABHashtable"
autoload :EnumerationUtil, "org/allbinary/util/EnumerationUtil"
autoload :RemoteHighScoresData, "org/allbinary/game/score/remote/RemoteHighScoresData"
autoload :RemoteHighScoresProcessorFactory, "org/allbinary/game/score/remote/RemoteHighScoresProcessorFactory"
autoload :RemoteHighScoresSubmissionProcessorFactory, "org/allbinary/game/score/remote/RemoteHighScoresSubmissionProcessorFactory"

begin
    RemoteHighScores.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

