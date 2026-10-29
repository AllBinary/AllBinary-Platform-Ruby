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
        return defined?(@@hashTable) ? @@hashTable : nil
    end

    def self.hashTable=(value)
        @@hashTable = value
    end
end

require "java/util/Enumeration"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/game/GameInfo"
require "org/allbinary/game/score/HighScore"
require "org/allbinary/game/score/RemoteErrorHighScoresSingletonFactory"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/system/SoftwareInformation"
require "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
require "org/allbinary/string/CommonLabels"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/util/ABHashtable"
require "org/allbinary/util/EnumerationUtil"
require "org/allbinary/game/score/remote/RemoteHighScoresData"
require "org/allbinary/game/score/remote/RemoteHighScoresProcessorFactory"
require "org/allbinary/game/score/remote/RemoteHighScoresSubmissionProcessorFactory"

class RemoteHighScores
    @@hashTable = StdUtil.getInstance().createHashtable()
end

