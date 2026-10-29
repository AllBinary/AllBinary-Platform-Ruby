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

require "java/lang/Object"
# require "java/io/ByteArrayInputStream"
# require "java/io/DataInputStream"
# require "java/io/EOFException"
# require "java/io/IOException"
# require "javax/microedition/rms/RecordComparator"
# require "javax/microedition/rms/RecordEnumeration"
# require "javax/microedition/rms/RecordStore"
# require "javax/microedition/rms/RecordStoreException"
# require "javax/microedition/rms/RecordStoreNotFoundException"
require "org/allbinary/game/score/HighScores"

class RecordStoreHighScores < HighScores
    attr_accessor :logUtil, :commonStrings, :platformRecordIdUtil, :tsUtil, :RECORD_ID, :MAXHIGHSCORES, :gameInfo, :abeClientInformation, :recordComparatorInterface

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @platformRecordIdUtil = PlatformRecordIdUtil.getInstance()
        @tsUtil = TsUtil.getInstance()
        @RECORD_ID = "_HS"
        @MAXHIGHSCORES = 100
        @gameInfo = nil
        @abeClientInformation = nil
        @recordComparatorInterface = nil
    end
    

    def initialize(abeClientInformation, gameInfo, name, heading, columnTwoHeading, recordComparatorInterface)
        super(name, heading, columnTwoHeading)
        initialize_fields
        @abeClientInformation = abeClientInformation
        @gameInfo = gameInfo
        @recordComparatorInterface = recordComparatorInterface
        self.load()
    end
    

    def self.getInstance(abeClientInformation, gameInfo, highScoreName, heading, columnTwoHeading, recordComparatorInterface)
        java_monitor.synchronize do
        highScoresCanBeNull = RecordStoreHighScores.hashTable.get(highScoreName)
        if highScoresCanBeNull == nil
            highScores = RecordStoreHighScores.new(abeClientInformation, gameInfo, highScoreName, heading, columnTwoHeading, recordComparatorInterface)
            RecordStoreHighScores.hashTable.put(highScores.getName(), highScores)
            return highScores
        end
        return highScoresCanBeNull
        end
    end
    

    def getRecordId(abeClientInformation)
        return @platformRecordIdUtil.getRecordId(abeClientInformation, StringMaker.new().append(CommonSeps.getInstance().UNDERSCORE).append(self.getName()).append(@RECORD_ID).to_s)
    end
    

    def addHighScore(newHighScore)
        java_monitor.synchronize do
        recordStore = NullRecordStore::NULL_RECORD_STORE
        begin
            @logUtil.putF(StringMaker.new().append("Adding HighScore: ").appendlong((newHighScore.getScore()).to_i).to_s, self, @commonStrings.ADD)
            if self.isTooManyHighScores()
                @logUtil.putF("Removing Lowest Score", self, @commonStrings.ADD)
                self.removeLowestHighScore()
            end
            recordStore = RecordStore.openRecordStore(self.getRecordId(@abeClientInformation), true)
            highScoreBytes = newHighScore.getAsBytes()
            recordId = recordStore.addRecord(highScoreBytes, 0, highScoreBytes.length)
            self.load()
        rescue RecordStoreException => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.ADD, e)
        rescue IOError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.ADD, e)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.ADD, e)
        ensure
            begin
                if recordStore != nil
                    PreLogUtil.put("Closing RecordStore", self, @commonStrings.ADD)
                    recordStore.closeRecordStore()
                end
            rescue RecordStoreException => e
                @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.ADD, e)
            end
        end
        end
    end
    

    def removeLowestHighScore()
        recordStore = NullRecordStore::NULL_RECORD_STORE
        begin
            recordStore = RecordStore.openRecordStore(self.getRecordId(@abeClientInformation), true)
            recordEnum = recordStore.enumerateRecords(NullRecordFilter::NULL_RECORD_FILTER, NullRecordComparator::NULL_RECORD_COMPARATOR, true)
            scoreComparator = (@recordComparatorInterface)
            bestHighScore = HighScore.new(-1, "none", GameInfo::NONE, scoreComparator.getBestScore())
            recordAsBytes = nil
            byteArrayInputStream = nil
            inputStream = nil
            while recordEnum.hasNextElement()
                id = recordEnum.nextRecordId()
                recordAsBytes = @tsUtil.getRecord(recordStore, id)
                if recordAsBytes != nil
                    byteArrayInputStream = ByteArrayInputStream.new(recordAsBytes)
                    inputStream = DataInputStream.new(byteArrayInputStream)
                    name = inputStream.readUTF()
                    nextScore = inputStream.readLong()
                    nextCurrentHighScore = HighScore.new(id, name, GameInfo::NONE, nextScore)
                    if @recordComparatorInterface.compare(nextCurrentHighScore.getAsBytes(), bestHighScore.getAsBytes()) == RecordComparator::FOLLOWS
                        bestHighScore = nextCurrentHighScore
                    end
                end
            end
            if bestHighScore.getId() != -1
                @logUtil.putF(StringMaker.new().append("Removing Lowest HighScore: ").appendlong((bestHighScore.getScore()).to_i).to_s, self, @commonStrings.LOAD)
                recordStore.deleteRecord(bestHighScore.getId())
            end
        rescue RecordStoreException => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "removeLowestHighScore", e)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "removeLowestHighScore", e)
        ensure
            begin
                if recordStore != nil
                    PreLogUtil.put("Closing RecordStore", self, "removeLowestHighScore")
                    recordStore.closeRecordStore()
                end
            rescue RecordStoreException => e
                @logUtil.put(@commonStrings.EXCEPTION, self, "removeLowestHighScore", e)
            end
        end
    end
    

    def load()
        recordStore = NullRecordStore::NULL_RECORD_STORE
        begin
            recordStore = RecordStore.openRecordStore(self.getRecordId(@abeClientInformation), true)
            self.setList(BasicArrayListD.new())
            recordEnum = recordStore.enumerateRecords(NullRecordFilter::NULL_RECORD_FILTER, NullRecordComparator::NULL_RECORD_COMPARATOR, true)
            recordAsBytes = nil
            byteArrayInputStream = nil
            inputStream = nil
            while recordEnum.hasNextElement()
                id = recordEnum.nextRecordId()
                recordAsBytes = @tsUtil.getRecord(recordStore, id)
                if recordAsBytes != nil
                    byteArrayInputStream = ByteArrayInputStream.new(recordAsBytes)
                    inputStream = DataInputStream.new(byteArrayInputStream)
                    begin
                        name = inputStream.readUTF()
                        score = inputStream.readLong()
                        newHighScore = HighScore.new(id, name, GameInfo::NONE, score)
                        list = self.getList()
                        size = list.size()
                        lastIndex = size
                        (0...size).each do |index|
                            highScore = list.objectArray[index]
                            if @recordComparatorInterface.compare(newHighScore.getAsBytes(), highScore.getAsBytes()) == RecordComparator::PRECEDES
                                lastIndex = index
                                break
                            end
                        end
                        list.addAt(lastIndex, newHighScore)
                    rescue EOFException => e
                        @logUtil.put("EOF", self, @commonStrings.LOAD, e)
                        raise e
                    end
                end
            end
        rescue RecordStoreNotFoundException => e
            @logUtil.put("No High Scores", self, @commonStrings.LOAD, e)
        rescue RecordStoreException => e
            @logUtil.put(@commonStrings.UNKNOWN, self, @commonStrings.LOAD, e)
        rescue IOError => e
            @logUtil.put(@commonStrings.UNKNOWN, self, @commonStrings.LOAD, e)
        rescue StandardError => e
            @logUtil.put(@commonStrings.UNKNOWN, self, @commonStrings.LOAD, e)
        ensure
            begin
                if recordStore != nil
                    PreLogUtil.put("Closing RecordStore", self, @commonStrings.LOAD)
                    recordStore.closeRecordStore()
                end
            rescue RecordStoreException => e
                @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.LOAD, e)
            end
        end
    end
    

    def isTooManyHighScores()
        if self.getList() != nil && self.getList().size() < @MAXHIGHSCORES
            return false
        else
            @logUtil.putF(StringMaker.new().append("HighScores RecordStore Max Reached: ").appendint(@MAXHIGHSCORES).to_s, self, "isTooManyHighScores")
            return true
        end
    end
    

    # throws Exception
    def isBestScore(newHighScore)
        java_monitor.synchronize do
        begin
            if !self.isTooManyHighScores()
                @logUtil.putF("Slot Available for a High Score", self, "isBestScore")
                return true
            else
                list = self.getList()
                size = list.size()
                (0...size).each do |index|
                    highScore = list.objectArray[index]
                    if @recordComparatorInterface.compare(newHighScore.getAsBytes(), highScore.getAsBytes()) == RecordComparator::FOLLOWS
                        @logUtil.putF("Obtained a High Score", self, "isBestScore")
                        return true
                    end
                end
            end
            @logUtil.putF("Not a High Score", self, "isBestScore")
            return false
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.ADD, e)
            raise e
        end
        end
    end
    

    def toString()
        stringBuffer = StringMaker.new()
        stringBuffer.append(super.to_s)
        list = self.getList()
        size = list.size()
        (0...size).each do |index|
            highScore = list.objectArray[index]
            stringBuffer.append(highScore.getScoreString())
            stringBuffer.append(CommonSeps.getInstance().COMMA_SEP)
        end
        return stringBuffer.to_s
    end
    alias_method :to_s, :toString

    def self.hashTable()
        return defined?(@@hashTable) ? @@hashTable : nil
    end

    def self.hashTable=(value)
        @@hashTable = value
    end
end

require "org/allbinary/TsUtil"
require "org/allbinary/game/GameInfo"
require "org/allbinary/game/configuration/persistance/NullRecordComparator"
require "org/allbinary/game/configuration/persistance/NullRecordFilter"
require "org/allbinary/game/configuration/persistance/NullRecordStore"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/communication/log/PreLogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
require "org/allbinary/persistance/PlatformRecordIdUtil"
require "org/allbinary/string/CommonSeps"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/util/ABHashtable"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/game/score/HighScore"
require "org/allbinary/game/score/ScoreComparator"

class RecordStoreHighScores
    @@hashTable = StdUtil.getInstance().createHashtable()
end

