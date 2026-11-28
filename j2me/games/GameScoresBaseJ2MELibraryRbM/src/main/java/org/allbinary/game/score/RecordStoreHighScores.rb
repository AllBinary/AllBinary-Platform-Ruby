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
require "java/lang/JavaOverload"
require "java/lang/JavaClass"
# require "java/io/EOFException"
# require "java/io/IOException"
require "org/allbinary/game/score/HighScores"

module ::Org; module Allbinary; module Game; module Score

class RecordStoreHighScores < HighScores
    attr_accessor :logUtil, :commonStrings, :platformRecordIdUtil, :tsUtil, :RECORD_ID, :MAXHIGHSCORES, :gameInfo, :abeClientInformation, :recordComparatorInterface

    def jfields_org_allbinary_game_score_RecordStoreHighScores
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @platformRecordIdUtil = ::Org::Allbinary::Persistance::PlatformRecordIdUtil.getInstance()
        @tsUtil = ::Org::Allbinary::TsUtil.getInstance()
        @RECORD_ID = "_HS"
        @MAXHIGHSCORES = 100
        @gameInfo = nil unless instance_variable_defined?(:@gameInfo)
        @abeClientInformation = nil unless instance_variable_defined?(:@abeClientInformation)
        @recordComparatorInterface = nil unless instance_variable_defined?(:@recordComparatorInterface)
    end
    

    def initialize(abeClientInformation, gameInfo, name, heading, columnTwoHeading, recordComparatorInterface)
        super(name, heading, columnTwoHeading)
        jfields_org_allbinary_game_score_RecordStoreHighScores
        @abeClientInformation = abeClientInformation
        @gameInfo = gameInfo
        @recordComparatorInterface = recordComparatorInterface
        self.load()
    end
    

    def self.getInstance(abeClientInformation, gameInfo, highScoreName, heading, columnTwoHeading, recordComparatorInterface)
        java_monitor.synchronize do
        highScoresCanBeNull = @@hashTable.get(highScoreName)
        if highScoresCanBeNull == nil
            highScores = RecordStoreHighScores.new(abeClientInformation, gameInfo, highScoreName, heading, columnTwoHeading, recordComparatorInterface)
            @@hashTable.put(highScores.getName(), highScores)
            return highScores
        end
        return highScoresCanBeNull
        end
    end
    

    def getRecordId(abeClientInformation)
        return @platformRecordIdUtil.getRecordId(abeClientInformation, ::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().UNDERSCORE).append(self.getName()).append(@RECORD_ID).to_s)
    end
    java_overload :getRecordId, 1
    

    def addHighScore(newHighScore)
        java_monitor.synchronize do
        recordStore = ::Org::Allbinary::Game::Configuration::Persistance::NullRecordStore::NULL_RECORD_STORE
        begin
            @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append("Adding HighScore: ").appendlong(((newHighScore.getScore()).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })).to_s, self, @commonStrings.ADD)
            if self.isTooManyHighScores()
                @logUtil.putF("Removing Lowest Score", self, @commonStrings.ADD)
                self.removeLowestHighScore()
            end
            recordStore = ::Javax::Microedition::Rms::RecordStore.openRecordStore(self.getRecordId(@abeClientInformation), true)
            highScoreBytes = newHighScore.getAsBytes()
            recordId = recordStore.addRecord(highScoreBytes, 0, highScoreBytes.length)
            self.load()
        rescue ::Javax::Microedition::Rms::RecordStoreException => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.ADD, e)
        rescue IOError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.ADD, e)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.ADD, e)
        ensure
            begin
                if recordStore != nil
                    ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put("Closing RecordStore", self, @commonStrings.ADD)
                    recordStore.closeRecordStore()
                end
            rescue ::Javax::Microedition::Rms::RecordStoreException => e
                @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.ADD, e)
            end
        end
        end
    end
    java_overload :addHighScore, 1
    

    def removeLowestHighScore()
        recordStore = ::Org::Allbinary::Game::Configuration::Persistance::NullRecordStore::NULL_RECORD_STORE
        begin
            recordStore = ::Javax::Microedition::Rms::RecordStore.openRecordStore(self.getRecordId(@abeClientInformation), true)
            recordEnum = recordStore.enumerateRecords(::Org::Allbinary::Game::Configuration::Persistance::NullRecordFilter::NULL_RECORD_FILTER, ::Org::Allbinary::Game::Configuration::Persistance::NullRecordComparator::NULL_RECORD_COMPARATOR, true)
            scoreComparator = (@recordComparatorInterface)
            bestHighScore = HighScore.new(-1, "none", ::Org::Allbinary::Game::GameInfo::NONE, scoreComparator.getBestScore())
            recordAsBytes = nil
            byteArrayInputStream = nil
            inputStream = nil
            while recordEnum.hasNextElement()
                id = recordEnum.nextRecordId()
                recordAsBytes = @tsUtil.getRecord(recordStore, id)
                if recordAsBytes != nil
                    byteArrayInputStream = ::Java::Io::ByteArrayInputStream.new(recordAsBytes)
                    inputStream = ::Java::Io::DataInputStream.new(byteArrayInputStream)
                    name = inputStream.readUTF()
                    nextScore = inputStream.readLong()
                    nextCurrentHighScore = HighScore.new(id, name, ::Org::Allbinary::Game::GameInfo::NONE, nextScore)
                    if @recordComparatorInterface.compare(nextCurrentHighScore.getAsBytes(), bestHighScore.getAsBytes()) == ::Javax::Microedition::Rms::RecordComparator::FOLLOWS
                        bestHighScore = nextCurrentHighScore
                    end
                end
            end
            if bestHighScore.getId() != -1
                @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append("Removing Lowest HighScore: ").appendlong(((bestHighScore.getScore()).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })).to_s, self, @commonStrings.LOAD)
                recordStore.deleteRecord(bestHighScore.getId())
            end
        rescue ::Javax::Microedition::Rms::RecordStoreException => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "removeLowestHighScore", e)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "removeLowestHighScore", e)
        ensure
            begin
                if recordStore != nil
                    ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put("Closing RecordStore", self, "removeLowestHighScore")
                    recordStore.closeRecordStore()
                end
            rescue ::Javax::Microedition::Rms::RecordStoreException => e
                @logUtil.put(@commonStrings.EXCEPTION, self, "removeLowestHighScore", e)
            end
        end
    end
    java_overload :removeLowestHighScore, 0
    

    def load()
        recordStore = ::Org::Allbinary::Game::Configuration::Persistance::NullRecordStore::NULL_RECORD_STORE
        begin
            recordStore = ::Javax::Microedition::Rms::RecordStore.openRecordStore(self.getRecordId(@abeClientInformation), true)
            self.setList(::Org::Allbinary::Util::BasicArrayListD.new())
            recordEnum = recordStore.enumerateRecords(::Org::Allbinary::Game::Configuration::Persistance::NullRecordFilter::NULL_RECORD_FILTER, ::Org::Allbinary::Game::Configuration::Persistance::NullRecordComparator::NULL_RECORD_COMPARATOR, true)
            recordAsBytes = nil
            byteArrayInputStream = nil
            inputStream = nil
            while recordEnum.hasNextElement()
                id = recordEnum.nextRecordId()
                recordAsBytes = @tsUtil.getRecord(recordStore, id)
                if recordAsBytes != nil
                    byteArrayInputStream = ::Java::Io::ByteArrayInputStream.new(recordAsBytes)
                    inputStream = ::Java::Io::DataInputStream.new(byteArrayInputStream)
                    begin
                        name = inputStream.readUTF()
                        score = inputStream.readLong()
                        newHighScore = HighScore.new(id, name, ::Org::Allbinary::Game::GameInfo::NONE, score)
                        list = self.getList()
                        size = list.size()
                        lastIndex = size
                        (0...size).each do |index|
                            highScore = list.objectArray[index]
                            if @recordComparatorInterface.compare(newHighScore.getAsBytes(), highScore.getAsBytes()) == ::Javax::Microedition::Rms::RecordComparator::PRECEDES
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
        rescue ::Javax::Microedition::Rms::RecordStoreNotFoundException => e
            @logUtil.put("No High Scores", self, @commonStrings.LOAD, e)
        rescue ::Javax::Microedition::Rms::RecordStoreException => e
            @logUtil.put(@commonStrings.UNKNOWN, self, @commonStrings.LOAD, e)
        rescue IOError => e
            @logUtil.put(@commonStrings.UNKNOWN, self, @commonStrings.LOAD, e)
        rescue StandardError => e
            @logUtil.put(@commonStrings.UNKNOWN, self, @commonStrings.LOAD, e)
        ensure
            begin
                if recordStore != nil
                    ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put("Closing RecordStore", self, @commonStrings.LOAD)
                    recordStore.closeRecordStore()
                end
            rescue ::Javax::Microedition::Rms::RecordStoreException => e
                @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.LOAD, e)
            end
        end
    end
    java_overload :load, 0
    

    def isTooManyHighScores()
        if self.getList() != nil && self.getList().size() < @MAXHIGHSCORES
            return false
        else
            @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append("HighScores RecordStore Max Reached: ").appendint(@MAXHIGHSCORES).to_s, self, "isTooManyHighScores")
            return true
        end
    end
    java_overload :isTooManyHighScores, 0
    

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
                    if @recordComparatorInterface.compare(newHighScore.getAsBytes(), highScore.getAsBytes()) == ::Javax::Microedition::Rms::RecordComparator::FOLLOWS
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
    java_overload :isBestScore, 1
    

    def toString()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append(super.to_s)
        list = self.getList()
        size = list.size()
        (0...size).each do |index|
            highScore = list.objectArray[index]
            stringBuffer.append(highScore.getScoreString())
            stringBuffer.append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().COMMA_SEP)
        end
        return stringBuffer.to_s
    end
    java_overload :toString, 0
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
            @@hashTable = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashtable()
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

module ::Java; module Io; autoload :ByteArrayInputStream, "java/io/ByteArrayInputStream" unless const_defined?(:ByteArrayInputStream, false); end; end
module ::Java; module Io; autoload :DataInputStream, "java/io/DataInputStream" unless const_defined?(:DataInputStream, false); end; end
module ::Javax; module Microedition; module Rms; autoload :RecordComparator, "javax/microedition/rms/RecordComparator" unless const_defined?(:RecordComparator, false); end; end; end
module ::Javax; module Microedition; module Rms; autoload :RecordEnumeration, "javax/microedition/rms/RecordEnumeration" unless const_defined?(:RecordEnumeration, false); end; end; end
module ::Javax; module Microedition; module Rms; autoload :RecordStore, "javax/microedition/rms/RecordStore" unless const_defined?(:RecordStore, false); end; end; end
module ::Javax; module Microedition; module Rms; autoload :RecordStoreException, "javax/microedition/rms/RecordStoreException" unless const_defined?(:RecordStoreException, false); end; end; end
module ::Javax; module Microedition; module Rms; autoload :RecordStoreNotFoundException, "javax/microedition/rms/RecordStoreNotFoundException" unless const_defined?(:RecordStoreNotFoundException, false); end; end; end
module ::Org; module Allbinary; autoload :TsUtil, "org/allbinary/TsUtil" unless const_defined?(:TsUtil, false); end; end
module ::Org; module Allbinary; module Game; autoload :GameInfo, "org/allbinary/game/GameInfo" unless const_defined?(:GameInfo, false); end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Persistance; autoload :NullRecordComparator, "org/allbinary/game/configuration/persistance/NullRecordComparator" unless const_defined?(:NullRecordComparator, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Persistance; autoload :NullRecordFilter, "org/allbinary/game/configuration/persistance/NullRecordFilter" unless const_defined?(:NullRecordFilter, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Persistance; autoload :NullRecordStore, "org/allbinary/game/configuration/persistance/NullRecordStore" unless const_defined?(:NullRecordStore, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :PreLogUtil, "org/allbinary/logic/communication/log/PreLogUtil" unless const_defined?(:PreLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" unless const_defined?(:AbeClientInformationInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Persistance; autoload :PlatformRecordIdUtil, "org/allbinary/persistance/PlatformRecordIdUtil" unless const_defined?(:PlatformRecordIdUtil, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :ABHashtable, "org/allbinary/util/ABHashtable" unless const_defined?(:ABHashtable, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
autoload :HighScore, "org/allbinary/game/score/HighScore" unless const_defined?(:HighScore, false)
autoload :ScoreComparator, "org/allbinary/game/score/ScoreComparator" unless const_defined?(:ScoreComparator, false)

begin
    RecordStoreHighScores.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

