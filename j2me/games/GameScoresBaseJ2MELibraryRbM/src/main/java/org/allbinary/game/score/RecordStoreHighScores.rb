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
# require "java/io/EOFException"
# require "java/io/IOException"
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
        RecordStoreHighScores.java_static_fields unless @java_static_fields_started
        return defined?(@@hashTable) ? @@hashTable : nil
    end

    def self.hashTable=(value)
        RecordStoreHighScores.java_static_fields unless @java_static_fields_started
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
        if name == "RecordStoreHighScores"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :ByteArrayInputStream, "java/io/ByteArrayInputStream"
autoload :DataInputStream, "java/io/DataInputStream"
autoload :RecordComparator, "javax/microedition/rms/RecordComparator"
autoload :RecordEnumeration, "javax/microedition/rms/RecordEnumeration"
autoload :RecordStore, "javax/microedition/rms/RecordStore"
autoload :RecordStoreException, "javax/microedition/rms/RecordStoreException"
autoload :RecordStoreNotFoundException, "javax/microedition/rms/RecordStoreNotFoundException"
autoload :TsUtil, "org/allbinary/TsUtil"
autoload :GameInfo, "org/allbinary/game/GameInfo"
autoload :NullRecordComparator, "org/allbinary/game/configuration/persistance/NullRecordComparator"
autoload :NullRecordFilter, "org/allbinary/game/configuration/persistance/NullRecordFilter"
autoload :NullRecordStore, "org/allbinary/game/configuration/persistance/NullRecordStore"
autoload :StdUtil, "org/allbinary/logic/StdUtil"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :PreLogUtil, "org/allbinary/logic/communication/log/PreLogUtil"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
autoload :PlatformRecordIdUtil, "org/allbinary/persistance/PlatformRecordIdUtil"
autoload :CommonSeps, "org/allbinary/string/CommonSeps"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :ABHashtable, "org/allbinary/util/ABHashtable"
autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD"
autoload :HighScore, "org/allbinary/game/score/HighScore"
autoload :ScoreComparator, "org/allbinary/game/score/ScoreComparator"

begin
    RecordStoreHighScores.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

